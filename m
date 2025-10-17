Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BB1288D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760662794; cv=none; b=Xm6/MrzO2+6JBUlcU5t4n7JIN0PIFrvs3mIsjbe3hJ6b/nd2R3E/6Y4xkVIMZtjl7L+uH8BaNGJvB0mbHa9um3G1zbcDhlc9T/s9ZO/VefHgAiI4MjDOrEpUNPuM43Ng4gsbtUnnO0+soM0Jwd5erAeC+p0mBAPuIQu8j3lkL4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760662794; c=relaxed/simple;
	bh=vng6ZqNZXqFcUtReVN5ZBFsGDzIUsw8naHlZFHlBn8o=;
	h=To:Subject:From:Message-Id:Date; b=S+JU2yM+NzN6WyujUYYXHl+uaoD6fKoevGt808QZOtrqTI70h945Io5ogS5cdVfzGCzUBt4FtaC0xpzEXLU8rCGBZ35jHrLbxejAXioQUzKipnWJdEEFKmLLmPdQQcCXxYoZ1ODcqB3F/6iGcdzgQyYizZOFosM2qkgoQTh2qes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY2MH8U8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY2MH8U8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A158FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760662793;
	bh=vng6ZqNZXqFcUtReVN5ZBFsGDzIUsw8naHlZFHlBn8o=;
	h=To:Subject:From:Date:From;
	b=SY2MH8U8xxGY6MTAvBbLumxAytdzFPFY46ddxFcflYhlXGwPS6Fnz0Hb9FHEhZZMg
	 miMpwHeBZOtWGiYWCe2LJJATcIqDOkx3JNF5SEmRG3q2nZoDjUVI9aY2Vbr7c9KUZE
	 vw7Phh+Z66sF5yCKj3Nser7RfDNFF0yILfMetF1AbJH+fm0uVOGkWLLjGcJb7CeZjn
	 pAZHSnwy5zTOjXJ6IxQnAacTxFQ+j7beoA+IJTh6d3pOb1kq5PtnKdj7Itp8SogavW
	 dBo0TKJQYeLADXB/Po1d9qU3oMNgak7BLv//gsnPOD8FrBVfK5JZGX1s51gdV+DXxp
	 oX1HCQ6aPsIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92543CCD183
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066279357.9994.571462549973044109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833e02525ebe1b7e0598bb00c4c1a9a5fd62937079e290b7f0815f2caf5490fc
Date: Fri, 17 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760662793
