Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2044518F2DD
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736591754; cv=none; b=lqmJAyAY5Sd/fL1j9SjFCtx4UXsSjNu+A8LxToCuAuyrBalGcEvYu0vfSQRTtLtuR0xYC1y2ds+vkhKTtF839lK/2eoJsozvZ6ckAjSn+0xqkWAp1DSd0kyCyYyoYCduIeQozdM6FNX8TOfjpf4S1AHdZX/Ip3SpbfuLEbs8DVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736591754; c=relaxed/simple;
	bh=6hAg+sIDMqMj1jHzWmFsytp7/mkO5f0aAOdNZf5H/Uw=;
	h=To:Subject:From:Message-Id:Date; b=gafESIhn9UF50c+G9I2bVEneFOSfLaax7NjZlIstOWu2HZZBKIo3AaPASBDLbwNhHXuRm0QveT6uquGIwkfr2jns5aGzNdWawUGppJCH78q1lPAC6E6bn3xC7+tR33OFUAwtmDqS7fLmiFJHwg03jXZekqOHwzMIDOaauOghTo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=givnlt5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="givnlt5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BE7C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736591753;
	bh=6hAg+sIDMqMj1jHzWmFsytp7/mkO5f0aAOdNZf5H/Uw=;
	h=To:Subject:From:Date:From;
	b=givnlt5Jc0PKXQll0MkOOjYOWDCvEDAfFHJ8NeFU47l+pKxK86FcjZ9JFpObK8GiC
	 DWyofc4wJSQEBo82i3E2Yg6NKpEvYmIe6V5REwB2IvSLBMoHudT5z0aWb5ct1kpzCH
	 3lGaq1iuG7mTNXaEkjNvRQMU9uei9leVSxqJByCjKDT+NP2UPoyqJh8B4ttRaO0u3M
	 /2qlhc3cOIq5+FvC9EV9p31QQH9/6O9K5BtpgkI7hob+uq2VnuUqGeCoB3t1KF9oHG
	 BsaTwu21wgy8Bvzk+gTmzbNk2hho6IJVU7yZCkccBa+q2s4+c1gvPBwxwlkQcE5QPh
	 jELm4PFr0ipdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C4E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659175360.5436.13589975254953126361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57e2b839460dbdbaf3f3eea2af769da28c4c7223797eff99cad81b859cad51b
Date: Sat, 11 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736591753
