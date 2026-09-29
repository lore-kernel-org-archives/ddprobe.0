Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B01339B3D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790665834; cv=none; b=J0+GoEkjKroDtxN69LSu+dl9RMYhiNlXrvi1y7lrTGzXJV3BPWs2zEyzp0W2ygYXYjmVzUwJvF9i0DyV8hxVo5drOwzkNSaFT67wrhXhBEosN7K0jXL0EX7C8kObdwrGxj2SQP5cIXtDWhrEyshkYOJ85OHARqcR0cW+xiQQ+9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790665834; c=relaxed/simple;
	bh=eDnanPNHGmdZ8vil7UkIdn8zhS9uAKAlGxIa3nve+Y0=;
	h=To:Subject:From:Message-Id:Date; b=lR4YtqxtIiEjSMwjZWKUecvD+mtXv3k5zfy8e/MXLLUnxnvPFu1CCCd98DcN38BQpi/MORTit3Nur7Pdw/s4c8zc/etiRtdF1xNSYP/XjEcj1OSuk2mm7IRtO7tl68D6PqRaD+fJcdS29o4PtlkOS+Dhgb19Alk+r7beWE6Dml4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fITOjte8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fITOjte8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AECC4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790665833;
	bh=eDnanPNHGmdZ8vil7UkIdn8zhS9uAKAlGxIa3nve+Y0=;
	h=To:Subject:From:Date:From;
	b=fITOjte8GO9bFhr3w+k2nBdTee2N9VEFe6t+9thjcsap4w7N/Vm0I7iF6I3QJr3rw
	 z8Zq8D2ppHknRJ95IZRnCrF3m4ys2D7FaIw55+le5XUyFpk5TSp5UyH2G7dj0sqv5V
	 HP3Ti1V4EkkmtFCX40jrGKI5ARjZGgpMwVh59maqDFpuLKwZfCVwMbU9MnDUg73j5F
	 V52OaaBpsVfKCerztoj+DNP6T+K5lDKsgNkjmMftyKwJUdxR0H6IJ0t8fJzM0pvXvv
	 W3EE2otemTyVdiN2rCycUhzeIIxOJadlAKmn33YVurj0OCNPCI9dCIN+Mfq/L91WRT
	 9YcJraDY6zXgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E4BC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179066583370.1245.10398869231243767652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7d47a06c1b499d2c2bad32a23437eace55da8268c3b1c8ed7d6562999d2ccb
Date: Tue, 29 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790665833
