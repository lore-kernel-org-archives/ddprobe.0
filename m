Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803DC38FB9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719010943; cv=none; b=tKDgu0J7ZDmegPsbCqMMepgtzpUyZCr7c8AsbkmG49hFUEmMUqUbDb/6AEPoskHmljJhWCPAqdUzJGk2+nyxXgmyl8vPFEixhz4hKzFp6wbV7x5g6Fby99SHuNArKkwzVG26zNG+x9deyZ94CKM/h9AvYd5RyrfWvaDdTnHFRrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719010943; c=relaxed/simple;
	bh=gCNfkdfRK1boqffxhDwGd5/nWL8cEqUihSXeflO+uLc=;
	h=To:Subject:From:Message-Id:Date; b=diBCv9bvkVmJCdG9Okp/+NnEujgYjThct3vkVxh1Q860S4X/q8D/oSW8iFcElitPVQyS8gz8o1XyZTyTni3N2b1v0jU/K2CS0sJPQK6Udb9QnPeKD3U34mo2f4G35ZLPOMiK4GOLZInTJsGQfBuunbFTWaKDhZygQI5cidUz++0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UT6WG9AG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UT6WG9AG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 099ECC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719010943;
	bh=gCNfkdfRK1boqffxhDwGd5/nWL8cEqUihSXeflO+uLc=;
	h=To:Subject:From:Date:From;
	b=UT6WG9AGoAl7ch9prYm+8cSj8Y6aHZHUTlaHRhqYTa60ndcld58ebHpH5eqcETNiz
	 r/JA8VpJOtb6+AU5K6zqfJrTcTvZ9MvaGtTgodg/dy2K79WogzuZDDA3Qk1L0BPCLA
	 dyg4naN2l91jurET4THOay3mT2PcUrB2VGqI379KjdNozc4y0n1fwXeHJ52OdMM5b2
	 ciGEwRrckMWbTthCIf1cXuMbZuyFM1HmPxCeOhdW70Dk+jIbu4YR1ZwspScMS/9DkH
	 fjzni3sZxoQJ/fyZnHvMc4KTKPMZjLn3alwvzzPO98dcT4FkXCSRrKT/ktYknrFiDn
	 AR818NQKkCa4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E098AC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171901094290.32599.2975207139861159605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e5d0a0c8dc6a9fc1eb240bd29dace73012aa3a2ed573e989c491595707cfb2
Date: Fri, 21 Jun 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719010942
