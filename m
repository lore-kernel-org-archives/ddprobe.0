Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333931F585C
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744927794; cv=none; b=q+v/tAAZN/JSKmaGqt4rvcU7omhpj96Se/42OWGpam6bgVMeov0hex6prZdFViBi8ZQN6gGPAKNldiH8WarGsDO/g38GcEPqT53MxXcgPAv5NSWzNZ3ey0uTLp15j/llCPZVgbXaaEqdYb5X6zUq9w26uRqhJEbjTiwNS71fz8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744927794; c=relaxed/simple;
	bh=fqZ6iRKQqw1Xh27dg/kQ8gfW2G0geNIhLdqj5ShEwuk=;
	h=To:Subject:From:Message-Id:Date; b=Gl3nINy+1sLBALJdwoUktOMrtm69JvYdAi4aAfExwgsLigFizHd0aAfYmEfI2XWBniuKLXSrVgjppb9O4FntUDP0vV528s4UPbubBd1jM0hgh4US706qSGYPBCwPS40XnYTmxVAawsaK3nb9c0lpZAWmsCD9nFVhtJWhOIFtQjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OL26PIfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OL26PIfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1023C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744927793;
	bh=fqZ6iRKQqw1Xh27dg/kQ8gfW2G0geNIhLdqj5ShEwuk=;
	h=To:Subject:From:Date:From;
	b=OL26PIflA32MW9JCT73dbGegNpKk/m7ktVT+ZERabDK57jEmzVdFmoD99cBsZF1Jp
	 QTYkx9ObewlRPePzEHfH2nsiq+eTsM/7CL39E4QOrf4m3A9cRwvdPjhG0/0JNp5xhZ
	 zu4SXDkM2AZHfohv+Uuvz1lHAtaNNOGlBNHcYKZWH8dASnWr5RLNg5zYwuTywK1/M8
	 R2tTB5oVr+n1tJlZ+si6V1jrnjfPxrxUZ5jgr+PmOezLyC80toBqMAMy4bGSoht437
	 8EQ8hPIH0GdN/ABKIzYJwdeuCeYPLDuAVwyl1ThggrkSBfgp1OmFYWPSrCuZT7w4sy
	 Cxhyl69jQPPeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2DC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492779358.9509.18247335172201624921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5857e5ee203c554b14a780a77c88244c78c537081754395ba28a152e8f18e53e
Date: Thu, 17 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744927793
