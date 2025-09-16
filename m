Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255202F5A37
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758041996; cv=none; b=D2lpMTDPqR6ek6GV3d5oUOONT4wk1eGxpi0M+1s7/5+W40L9BmfkJeuq8WgT2GNH5pFBDN/7KxJHdpoiY31PNCLFmZr8HPiuhoPq4UGtb4i/L2hgELYbU2KgqECVtAgrvImewOuk/j1LjfucKXrFNOUM9JHLYLLUKXVk39Cnbf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758041996; c=relaxed/simple;
	bh=l07nt4jmoY3qFuuRxAPLekzuQLKxjQs9FMJWDKYkH54=;
	h=To:Subject:From:Message-Id:Date; b=uqN4/ocuDfn0w5jpD7NcB7PJfkx2Bgmt1rYrW7plWsPb8F6lYZ/sozoOzPpO/5FvvbvTyCRMysrE0orR/QlPKWC8CAq3uKrX5JhfBIRt4zobmltQS6fdUAGqWMSMERWeLok/5YQUobevwvf+34z4Q4O0+v2Xa9r0p1j9nF5AFGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mauQX0/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mauQX0/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3BFC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758041993;
	bh=l07nt4jmoY3qFuuRxAPLekzuQLKxjQs9FMJWDKYkH54=;
	h=To:Subject:From:Date:From;
	b=mauQX0/2UzJP5WivE+HznqHtXqz6sKU2+BkK79XXtqyyH8s269YjxGEFk2WUZY9H4
	 wxUg7ltupJi8WnGfSr5hboQuigIajA32vtEP1WU/iDqmsixATrGXtdB6Ex+3kqlcd+
	 KSanTH+lvwsqcx4D/EAQdDlNP3eabCSzW5J1OpUBT6faTkK7vgZM4KM+5N7Ze6g2US
	 3ysWzrjybvQk7rtZYB3yNnUDuUiZ/M54qlvpZPEMXP8c8K8D1oFXdoEjEkGsGiSYw0
	 HgiYc1HPegtnA28zS6NqlmdRb+wSkQoBXtY8gKfNVNFeLFu2kTA2mKma7DrCo3bjOe
	 Ksmc5BVGWqcDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74BCAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804199357.7867.13744766894992774873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d91f04f2846113a9e970ccc02a60152e1c7ce07f1b8e1bc2134d00f7228652a
Date: Tue, 16 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758041993
