Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A598B142624
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712831896; cv=none; b=DhAD7cM98nT1mFKSIguwjTDzprLb/pCC/5IlxaAYWioQ6Jrm9QCtle0a/vkWbEmvlPiey2dCltRdMaBk+/nxGvBgHK1oqkGZczowR5/GMTXQoKITwCIsiIBq1XuvkD2t43YScsQKZ5ZKCgbcg8dYN5nXnvud1kZZcgSG+n3T6vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712831896; c=relaxed/simple;
	bh=KPRTSZxPoyiI2YtIjEDIiW2ZnraxO6i6fiNXKUPYyTk=;
	h=To:Subject:From:Message-Id:Date; b=MRPIFjAiOWuHPXsj45Kl8ed5yv6mYmVmzOiPzf4XKOp0G2hEQlE6LEQIPEVExPUC6AlnSMWeR/7AhHejIPov7SkOCpVsM78Ls2uwcS0A9MTcxmCstlohUZ6Awp1fNheD9Ima/fiCR7JW0Rs9tn1qsXk8geWB3BBxkLXlTXdkOjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHlV7vZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHlV7vZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F67C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712831896;
	bh=KPRTSZxPoyiI2YtIjEDIiW2ZnraxO6i6fiNXKUPYyTk=;
	h=To:Subject:From:Date:From;
	b=kHlV7vZBEnyL1ZkKH1LfQgLxtGU6NxiTg86PjN/+/8StTkDIbpeffFW7yEMpNfeNf
	 xj4rFvyNzZMZKl4OwVzMdnGAerdDkIgOcA1tA2LZMfbuQCRXMj3fTjyQDkRmVt/29m
	 iQ99ng7xhula4mQW7DNHsUsete2VrpEtrFW1vVc6AnJxC7ivc5rsMAvkZJHmNiVllp
	 XMYIrReemXEX7Vr3QSpW/gwI5MraF8R+5m3zUGvcQGjqpP1IM9w5IjeuOo+uLvHJy7
	 OmrPnjhAup7sPdz6a49BU0qkTmsOQOAJP2F0b7TgRxDuj777ovhXvm2NmXbfyuSAdx
	 U89uNaiPjM8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ABCCD1284
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171283189640.13668.7665002062522299998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928f86f11b3547ae6207f2f13e7b8324b8367c349cbe8bc1c2b036fe00b0c2e2
Date: Thu, 11 Apr 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712831896
