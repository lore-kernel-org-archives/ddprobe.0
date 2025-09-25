Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DBF134AB
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758773995; cv=none; b=HgiN2EzPtxqeSTsnRJXLxdYuBA2rdJgtINMyDgsmVJokrQ8rIAcBg808uayPSDRXIMLgnJxlT8h+ERXLkk8YA4KOpaqjbYRYTtPKssuetS9NaffC/lDxuGnPLK3JUDFU47i13zHoaNx3EPjnBSS8n+YSFpqq+nGBKitL3lg2W/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758773995; c=relaxed/simple;
	bh=PmVwD3BdRpqSyyEQnUD0GkjP8CfCum9fNWecl+e+rs8=;
	h=To:Subject:From:Message-Id:Date; b=hr2x/VDlT4YBnzhHcHsGhAupTU2kP/6Vw3z0JTT9z9OeCz831eL0BvuE0UrrvOl++GzZ9gBNX4nDe5ea9Ju1S4Y6f4OkBrprU9DHpQMFtm6XQzIbDHqhqzxjdmLu4Vh/h/bLlnEyL+BRevxV0a9gAmFvwMv5u++MMebh6XgexG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWDsTyFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWDsTyFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47C1C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758773994;
	bh=PmVwD3BdRpqSyyEQnUD0GkjP8CfCum9fNWecl+e+rs8=;
	h=To:Subject:From:Date:From;
	b=ZWDsTyFsOV3GVtIyNx4L6ABZDMj1R609reMmcLer0IT8WFG8Hh23LrhcKkciGDSDn
	 iyyc8mkZTm5Y0+9BTFuhSiDmsjFAXrdJ55asIFXmEqlcfWgCa5tC5/ZPftlpEt2s+j
	 PaZfBgLwfHdaLR66RQcDb67UySCVnbwtmgRMv8TfkE8lBDwYziIPj15jOjRIcRdqQR
	 UxwXekcSBdeD/t/sqeXPMV2cPSRgzvkrBvTzkKpOtHglaPr1EsL6aJ8av7IFj8F/+Q
	 srVvLVmjHGnVOxLUFd5fJEkDuTUQlqkAInT2v58GPzfjpcKKEUqBKQ0VJKe3JKz5IP
	 XtL0AhqN3d1gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90935CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877399358.28208.1718151805945348847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda5394ef5b061365fb34217a4901b231da2a23652b502769c715f9bae703909
Date: Thu, 25 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758773993
