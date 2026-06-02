Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3260A3EA66
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780359874; cv=none; b=DMnVc1RwZFm/7tSuUfyiyJcYMf/F/THjPK5xzMk+jHoAQ9qYAfSonaYVsJy29Dqgse/lmcV4PM+ZEbMupB/fp/OhdORhpN2d07Md4wynP7Lk+y6Rhp019rirzD1jW8/VF+qK2VMGwMDka19rVaM9lI4+DTu+uLdsLJYLJFZ0Khg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780359874; c=relaxed/simple;
	bh=Ff5gHB3Azcthf3EMR+BTM/ONH5RUXT8JHTbh/Dbdys4=;
	h=To:Subject:From:Message-Id:Date; b=GSmxiSJ6gHFmBzlYa4WVCLEQqKoawpZiU44cv6GouH4W/EhYtNevXHjpVGUXgg2Dlid5/mruPRml3y3w4XSETWwEzj8RaK7I4NYc3shpciTzXZF7d+3TNeNDg0CxodRVeR/aeTXehbtLUQNn/oEjc5lvYmC88ICELfQcIAmL1BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jy5fX2jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jy5fX2jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C722FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780359873;
	bh=Ff5gHB3Azcthf3EMR+BTM/ONH5RUXT8JHTbh/Dbdys4=;
	h=To:Subject:From:Date:From;
	b=jy5fX2jrTN2LVq/9BqZWobYjAgfoueKcUldOwfGAXkwUjvTM2GNMtaWtrdjECnRyv
	 cxgLZnCl1W096dcvzmeHBYtCMRg5ckk1h2XZPVDR+OmiwFyQco23clBwdFxyEopdUm
	 E4YI618zKI5NA8qzXrAPmTP94pwPBGB4xszlaIXCgwsj5GbOleYEoj30Glm2Zqgju1
	 GMoWt0zRNtnPTB6m2pM9LejUrSCe4hxsGpL3El2qrDDukGr9FVMaivZJ2nX8nNhrre
	 oCUa8KrQyKDHL6gIfjcnncGMt38MW0IuMsf1zpJa6fpCSmUIR+TjTfIKPYp0MFqtE2
	 RRRWVXByvw//Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE3BCD6E55
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035987368.23769.16040168741201758216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f207da300d8a7ef06304b986156e0cf4b31fe6a2f93112c84e522e41ca44fbb
Date: Tue, 02 Jun 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780359873
