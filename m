Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC6C288DF
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717261463; cv=none; b=VWeW2NhJ9VxV+MSDoP7DHiitO4TxCLF/6Ob6fbTEk7COn8jaaxPE0pZA5Z06hWLk64MXRL8+raXQ9fEIvg5fcKr/FoYoH3bUCtUfL0zxYo+eG+RiF+lxfwdpngXES1GOOVeHJ3D2IVguvLU+lJWyCcDmySu0qc+WbfkxPUJWFXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717261463; c=relaxed/simple;
	bh=e+wURzl2cKjJwhtXoeGaMNWZ9RCw7xI2yd1Lf+AYStU=;
	h=To:Subject:From:Message-Id:Date; b=Ip5R1lHEmGz9IllCbA4KoH6AK3EVLCXqwCO3i32RF+AhWQMM2qOCTQKiAXlGeCPvZpexixX9agwMrLeW3iMVWkPLL70Zc0aUuDjflRKoX54MW2e+bXjGgg1Al0Mm1NXz04uGGEzQpW7ihAJwyEJ1wMU3yAZd/q19La7ub6QX0rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdmFiZ6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdmFiZ6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBA2C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717261462;
	bh=e+wURzl2cKjJwhtXoeGaMNWZ9RCw7xI2yd1Lf+AYStU=;
	h=To:Subject:From:Date:From;
	b=sdmFiZ6mHJjQ/fggHQtsf8VI2/Iup84Qnu18l0q1/gp19/bXiHPSIqrgy9x8Y3yWf
	 sOlNG/duqi7zQDZ61aK0A/r2aTmWAwLM49Zj0luwXwJqMyUFVNDFMy2nwsa8ebET1b
	 KVnx2gnnY2F/lyGN/T9p+lm4go6Ww+JrQD0pTflHIgU7L+SXJkBjQUJtUmChI0nkPt
	 EMKs3EnUd+MUltc9teMRndfCpnCjUs98KcjLmlBUQnHsZL7mzkzRMz/CopCZjGKL53
	 1MW3gmia5l731KuV9Q/+X0aK3QehnJcICSBlfLse9r9PEt9v+KgwEWC2MvxW118Kf4
	 aYTax7Qf1+lHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C17C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 17:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726146278.20888.17746281878308990487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741da9b2371d8239a44c320a35b4c11ddd7a1717f8003ba2a66cbeea57b3fb0b
Date: Sat, 01 Jun 2024 17:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717261462
