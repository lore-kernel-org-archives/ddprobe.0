Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D5317BA0
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706086097; cv=none; b=Wh6AiPLTJwyLk0Yh0kbsS4BNh7dSWWLNFiMuytmP/4wXcJr8fwHmh/TnT3tdM0RNce5d8uH+g4SJpgeALCZw2k2bK8c7Ky3c5Wnf7DmeCBmu2izk5uQTKG5b6eHmv+V6tralX5sB465LY47WSrU5gR0vtGRF2Q0JmLpqj6c22IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706086097; c=relaxed/simple;
	bh=OrJ5EhRmZJlIUPP+/F6L6k/8n1GkXUJ/6kJHhu/50lQ=;
	h=To:Subject:From:Message-Id:Date; b=YzKPOoCe2XELpDXkGZTGJNqAMpUn5k3BIucFL39AKlLNHCKCs2ermRHxnIY5zhJtn/OcSjTMC/e1QBzRcAtDqDeGrp/0fsAFOvcfVwaoykKKl7hFH01rCnNnFGolDXQZ26lwLzVPG6gzBgYbEKeN8U2kqzIlAe27eEXA+a2mjL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4TVeBBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4TVeBBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74637C433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706086096;
	bh=OrJ5EhRmZJlIUPP+/F6L6k/8n1GkXUJ/6kJHhu/50lQ=;
	h=To:Subject:From:Date:From;
	b=i4TVeBBVCsF6VKaHNIeIu/56wciWFvdrJo4Xb1MlkpoNCyjQFMOU81FILBFi5l1ec
	 QRG3B5VaPOW2iAo0HPx7lxNkntbraJNRpFcoVBmnGZ7DyMjrgC2IoSC9dkBzb4Ietj
	 VEQ1EmhaBbrQ1ugCOBDfwfIxLsCxszywPf4sFkv1JSKkPtfLfT1U70q2OPumFSCPo9
	 nIWz6z33mcOjKS5w6vA2KF81zlkqVdG51sAfRz8Qbk1udi/jvt3d1+Dq7ikzyxImPg
	 gE4F5TJG87j1xWE1BIuxkJF/ZI8GABMw3qHbaF4HEr5y5k0rqmDGMjy09/WDLNERlr
	 Jfmv+acOSL3pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8E2C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170608609636.20496.6617601697947435616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 791e0d2bae04334a73b20be91ec07b8de1076bd587b49f2fb7fd9a289c399cdc
Date: Wed, 24 Jan 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706086096
