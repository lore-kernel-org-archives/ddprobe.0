Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A7C222584
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764498774; cv=none; b=hdFthJ/+3BAWwCRKpFOiWlwATo8PZuGiWaCbqdQ5brnsIMlxUH2JVynUEVWYcOi28uK3txJE3488maPlPV7SfvbzhvRJ2Dk63KYvnUyRkOoN4TgBk46u8Q1SQnQl3/mtctPz1hhxRfGXZwcnUX5YtCsFh4QxR9GnqxvR0+8Z0QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764498774; c=relaxed/simple;
	bh=naP4PaWHGRY/lo/I3CjHNX6ehxyDRmM7BDIH0gwrPFc=;
	h=To:Subject:From:Message-Id:Date; b=KO8JTvPn3DmX9RY3iIfDVzUcRvZdx91NSGARhZTGgb+MTm4yLJSdwDP+/K8fwsegHL2D93M81frHzitatb2E3aHUvsiNEU/Eu5Xx4rzrIaMKFjR2CdlaPQzCYG9AXESBYiEihoPRAkKhzCwEfZKpDKZQ4JB396kBGlgm1I1f2Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOOPc1mN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOOPc1mN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9809C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764498773;
	bh=naP4PaWHGRY/lo/I3CjHNX6ehxyDRmM7BDIH0gwrPFc=;
	h=To:Subject:From:Date:From;
	b=hOOPc1mNWCcs4GVPpjW8mDzASxdJe1loWfpGfPu5LWc7yGxTd676kTnrVDMz3bpn+
	 p6nzXpSKUuyCkQmXA18iiG2lY+0wpsgIyGuniRPJgF0msuzIwfHRPyNRd0D0JmLAXG
	 QNMtBfZ0jqnXQADskXrckkH4DzpANlJuWeFTBlZQziLe7WAfRuKKFypczpnyyDa0Vd
	 FYecIsW20qBIA23y7EwtJ68ouK6/cTcp4aHGEeAff1MmHVfwqwk2Ba3rWuzqC8TezI
	 VkVGGKnNNSyVY18WaW8sHG8j/Y3ANs0vE+hJKNYDsSg5ONDD4Zodyl/9lqVseE2AFx
	 FiStu1p3NA25Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9780BD111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449877358.20774.13747168791359831338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5739bbcaf5be8a7793d053323b93e149ab3d332884effd56f515028fb142f8e
Date: Sun, 30 Nov 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764498773
