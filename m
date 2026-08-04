Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D163F3282
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785823834; cv=none; b=fCt1Ctec/bbcKuK4yOH0rgwS0V+SYfrTnCGE36zPmBiqi9iINXyE6AwF2sjWskN1CzXQjOvN8RIl60JyFNSw0jluaKENDccTyqCU5W+LpAzprgESnnjWqN+sh72BXHYJbd6UizozVEJQMHgepH7fyD0oE6zJJsU8aohtFV6DbQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785823834; c=relaxed/simple;
	bh=LFRuKeVfxAVDLVdm2uMFJmamPmy4/pmDp2PGv4Falz0=;
	h=To:Subject:From:Message-Id:Date; b=Bruzo/mVcEziC0fQ7ugW6OaYEZ6DQGUvMPMmPmdk+FHNf8zd4BOCyv5J8HSwBTXxXDfMzGC2wSz5zpgAHDttJI4diUHp5rA3tALdE7WvPyhjwi9XfbiaJnf+RF+TkSQG3kcvYqU6os+LhnJVrgE6RpKp2seRSI8gNjpKh4IYT6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBN66YPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBN66YPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6EBC2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785823833;
	bh=LFRuKeVfxAVDLVdm2uMFJmamPmy4/pmDp2PGv4Falz0=;
	h=To:Subject:From:Date:From;
	b=sBN66YPOpPeYqG39TifItohUKisBNRJK9+8/yXghwzEmp7ewHlOde9JDlWEmW/AqB
	 x+x0sSSM9DZZuc+E7xb9NNBU1E1ow3rsYlqiC1Es1OWKhDIAkOFp4qq3w2kBypNS7b
	 3YcHZE5MVJ2qBO1KHRMDfKXgFbUAc6utzT17Y235nCn8fG5HkgjTBHtoRGX2ajuxA/
	 RAlBMQUlZWB2xBuiMOb9orblL1314ulAV7LIojnVSLz7IKznfKG2IfYqH9m8aNmOTI
	 wCD++TP6y3JqC/rXpAQ7FStINMB4ctt9M/EmPBvy/Ef/F4dsvViawZXUCZCODEqHPx
	 OxhcuYtCCzVVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3679C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582383372.20790.631514902785986099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367658f4ad5e10993d6995fa9546d2b76687175fca49b6d45e801bfe8b360533
Date: Tue, 04 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785823833
