Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC8BA943
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717208663; cv=none; b=OoXhIHr28slRdgopxA7+4hu930YpUEJHICiDwZxAK3BhPUBgAw6lyj024gANSUF0pyIpwNCgOnyxwpc7c5fx09AGNVciz6EIajYZUMNUimF4luMeas8CoFRaBCWttP8AN70XuQu/gX7TbUWBPFkdN9/fYScwnVlItiArlyJf4Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717208663; c=relaxed/simple;
	bh=/kMZdaRDLjv7ibXzFR2JcRLj/YLpbnbG50GNFk4cf2U=;
	h=To:Subject:From:Message-Id:Date; b=GozXBEf2IYJpUWATUtMFj0+ckRAOpZvRtMWppibU2QqltQJel+9g1x0/k2ckwkYFAGYRzW++s8EpS+NhyjuBwmXL9dF4ztbcafVG4OXpJZ9fyXTpvl+qnT2Jc47F8GVLSMoGib86MVSbomW3cHgCYv6MpTv2082JeZ015k8VYYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFtrPpsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFtrPpsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1F9C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717208662;
	bh=/kMZdaRDLjv7ibXzFR2JcRLj/YLpbnbG50GNFk4cf2U=;
	h=To:Subject:From:Date:From;
	b=EFtrPpsj0fNcHnJDc4K/iErueqodMkJjJluch3urjuhx+Lq9RhlS9gfBmupBbhO+X
	 A+cehWy11Y/jpBbCngwbKK5GPEeJ8DKpVLfX+8hE+Hb+um7TdL9q7PIWRNxLLkfDsk
	 ZlJGXqEYrUgE+V7tDQOj+7lZFtyKvp+iTJR7sFE+NkQSLT3r6HsId8aWo0pDPj60tX
	 DBtaqyV6ti5p192+F2kEb01cqR0s3CEDlp4fZj43umoT7ofhJmBO8Nf+Ex/JBHC9f4
	 z5jx4S7l5vOPCIRrf9DUULilJ95u9hX/KAOjsa083zraSceCH+2w7C11V5vqoLydEm
	 GLx6Cw2Jz5dmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69E9C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720866278.32390.5754042856651142114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f86f066a76ffe85130309c99dd87161cd02c5cd75c5f0af8f0d89f71b1c67c
Date: Sat, 01 Jun 2024 02:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717208662
