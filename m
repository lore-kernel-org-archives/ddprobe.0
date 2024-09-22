Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0367DA83
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726999554; cv=none; b=qjJ4bGBUUYa5c5pwtzTmgHsaZZ8rzI0rjSJmFdJyggLswC1S3DJYQziIzn/R5LT2CAayqndSYAwow/qnbyHfCUnXgBbS7IyJamAjE5pT/Qo93YXuyaJE7m9DGH0IMzzuJuLhtiHFLn6eTyzxrh60k4n5VCEXulAitk/rbsiFtGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726999554; c=relaxed/simple;
	bh=uC1IRq21Olh7X6YVozbM0YoHbxw7HTUBC4HuiL83e5w=;
	h=To:Subject:From:Message-Id:Date; b=Ucsn+EefgApDG4Zf+KrBQ7rVckICoqFq8o/MIWBxk90Cmol7iDoLS8ZH7hrMXPF7Nk37+VOjJmw7HsEx11uTJdeI/fNycWhVd0Ekqi2bGt20tQVj7fOcOasPVAtjCG2wqasILXoG9H2w2I89K0EQikRIW9JTxu0ZTq3BjEHs9i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbuFlaqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbuFlaqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6174C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726999553;
	bh=uC1IRq21Olh7X6YVozbM0YoHbxw7HTUBC4HuiL83e5w=;
	h=To:Subject:From:Date:From;
	b=IbuFlaqHjVI7pIyJgmSfeuJQ97ZVk1B4kNeAIloNxyx3zKqrYhdE4MJXRXVgBYYsR
	 nqW8kBWLnI+f0mTTz81HHgifuhwcLF3tXfjJNsDKg6Qc4yrX2bYYD6ZcK80TYj5tAP
	 ta48pQSUQIYLe6vKbu8pz6JcxTZh+ND+GZDaObIw0tJxsgL8eSPtvfRCPK3E2/Gyq1
	 03lWK/Abh7krYKcOX9sx7Kh2hOaFI+OxIE94cwuOzCjbwCHkL8TihZ+tjbkAT+U2Cz
	 O4t+/9HJ3PjFrEln9Rg8YZifiO5aNzX7LfsViNBT7K/iLBlMqAuec0F7uzS9xxdpSM
	 CcELA9aVsKB9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A727ACF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172699955363.3128.3385750963005112668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ec1d70398925e029480391992d251b62de4da87840f6974ae49fcf044155ac
Date: Sun, 22 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726999553
