Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321214C9D
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728195354; cv=none; b=JfBlv925voNkHrA2+u/ePfLSjCEGeJKpMAr2OZSGN53IWXv2rmbu26V2dP61pkcisZ8mlC8QO2sDPqq49KQObhL4G9MLHVsaCqmcREb2GcothCTVgAkIRWy0XZL94a2Sd+LW/gZVV/2kHa10hKVXKltshxtzkU8l8A7Az1b3A0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728195354; c=relaxed/simple;
	bh=R5dH6bIQYa5T0bY8VnYQvIKzSQpT7TtqSmP5dxIKq60=;
	h=To:Subject:From:Message-Id:Date; b=E9Fk6bgIHXzjygUWggpO8qqzcR/si4jsYgzuUNj3/kW8MtnrMKOYhKk0YHS524SJiR7LKD41PzRkcaVQSo1lLRSRHJEe6/rjb3v1QMDlrhL4W25OY4YD3emi6sloDcmNN17Zvb4tjv63UUBQS0HSTM12Rl+jSSQuouSvDey+S3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oouWA8P1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oouWA8P1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C9DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728195353;
	bh=R5dH6bIQYa5T0bY8VnYQvIKzSQpT7TtqSmP5dxIKq60=;
	h=To:Subject:From:Date:From;
	b=oouWA8P1wkc3gF5qwuDVMokqDcbaOs01HkuxOhYZiGl0u/P3sS0dxxzy9yRXAbRbX
	 0zr5tg2g4+N3JcPhDX1yiDV9X7nENzBVyCkgmLHV8/I+1VNbj9qwLxrD081Onp0jUC
	 83MOUf8d7TPBtX+YqO2AyokuMPoPPGbOH34YcocGuMk5xM6ygJuAep661OL2mVrK0n
	 g1GC8aFxm+KI0RSf5mQMkO3Xg1tSEb3nDWSNVXWfsc25uMcPIuuBVDn26ksMwlprw8
	 yk2EGAv6RdRko9qJHaEIbsQLh+BxFS2lOQQYmaWa6jkfShA9NChnJKkO9ak7XZY0HU
	 tjwb5vqQnwjkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E98CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172819535359.4163.12460345267120273338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b8b0faa6b4da9bc02efb41a2ddfaf0753c2e6c747b7d689c27fd94e9df4d6c
Date: Sun, 06 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728195353
