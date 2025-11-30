Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326E036D51E
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764487974; cv=none; b=t73YtHBxXG4zhXhxVOchOgkvUGEMDrsNvaZj2f74vnirPnkiQwbEwX206djwhaXxqgh9eNAlCAgPEBIygjNycojY1+ID4/Bq4LwkqCCiQou7ogWgMnho0KyZDq2O2b2xHMEO20nJ6fXm5EtckjMNoFYpU/8bgNgt0tkeywjcJuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764487974; c=relaxed/simple;
	bh=87f+EA5qPU0w5snhMCuY/YoBZVznvDPlwFDngKhM4DA=;
	h=To:Subject:From:Message-Id:Date; b=cYBy1qRmhx/zBEjpqV9nBSO7AyOuBVm0G38ilxzhMdKNwRZVM7ymlEJpVp0PH2zTp3uMAm2piSiMaRUKB1kAt2VNCUgzl8UtErIKj3ooh9Od5OIkCo+Hyh1IhvZvHSE8cVzCAhZjslovUP/I2eEkq/eC5YQkDhcZ/29nywcaHTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvtFqIpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvtFqIpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CFDC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764487973;
	bh=87f+EA5qPU0w5snhMCuY/YoBZVznvDPlwFDngKhM4DA=;
	h=To:Subject:From:Date:From;
	b=qvtFqIpqPMfgGjKEv98U+M9mYccFQ/SNfkHsxqiQk30QH71WasS/of9vCXP+0bMce
	 /T6vkkpO/cCB/qFLXaWtccK0NbE3IKSRSTm0vJN6ZTWjdQ0UIEhPCS+ugu2KCutJjM
	 Mv3VFAYgTUfBZDlQWK4rKLWq+YgMkp9o4sShH/e1iBqRre4zf9YKegMh5kkDvA+8xH
	 /EPeH7du2zT/i2Axp5ChhKXfPnEhMByG8jBe85RyF4MuEUbvN1n2frNVF3evBVQTM7
	 EYoBKeA7CaleM8MnkkiPIHvYSQKI6yWr3n/HzMkWoTMi8o57yJKzzUsbECKgQ7qHbL
	 a2z76JG/Ie5ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93684D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448797358.20203.8354553266933350819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e074f5d2eaf143532e36fcecdc92a7e7ef587316bf435af5e261db6f6ed91eb8
Date: Sun, 30 Nov 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764487973
