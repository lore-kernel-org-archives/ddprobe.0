Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A344A08
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756001994; cv=none; b=ewdIIzLhXRV+4eczJsx0D+WwPzpWjvqRKwal9+9QUdInn5LQRgDZZGEFD53IupPnVq0b16pqlmj6HPMj04sTkDKMqcW5JqcvjwiXxaUd1RsYztpF7pv81pdyIZ828uY7sED7133o1rmv/IOPzPULDPg7Pkg6YMOao7RmPxhmZ9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756001994; c=relaxed/simple;
	bh=b/WVwTCMJRIEsMsm3OaSVkprQ2C9582Ab9qpl6F5pkk=;
	h=To:Subject:From:Message-Id:Date; b=PJIZ97Lcb5bHRZzEMBEWiSalIEy/0rUIVVLB021XznnJdALSiLC26nXo8KMgTJN5RD5rqteZD1l1KwdaHlpp3e98mCj4sPz620Jps7Cou0sZPku+EZJk5wlsjNTave1/IoYKMqmoZiyOYjMZZWB1Dl6pUbmuYBGUeeptZFEFn38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeKb1/cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeKb1/cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21ACC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756001993;
	bh=b/WVwTCMJRIEsMsm3OaSVkprQ2C9582Ab9qpl6F5pkk=;
	h=To:Subject:From:Date:From;
	b=jeKb1/cg6qKH5bpWAY0+H9UJnmxEMrSNTEfwTwqbTmpk5nG01+GQl24WG08LlljAP
	 97ps/Lhr/+9d4K6PGZuwN/Nns5mKIO/3jrc6VrUNB5SBmZMW+F26rE3+mc2QxUCtm2
	 ZUt/XEskJleLCRsFY4IP6TKTzBJXlEKV3e4v9VLZSL7CfpSVNw4zc1FBmXi4SfpSsw
	 oBdRLVxOOOb/uWK6BEqhvHHha2ebe3MAwmV/v7WIhwMMIRZjRPlgD/ByOF7sfIHOOe
	 fbtDTmTTUncPuwx/3Ct84LobQL5cB2detqNy9+IeP4aMol+INb41MsPUk/cBOl0foz
	 SInuJRCNPM5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F01DCA0EFA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175600199357.713.5032820178633498362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7dfdd3de2cbcb773a3d146b6023fe6fa2610c67dda85a2cddd87704c172f6a
Date: Sun, 24 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756001993
