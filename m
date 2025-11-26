Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E66028152A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764143574; cv=none; b=Xv7OIAcw2et2jJfc9HQne83q+Mh+Pp8l3x5uO73c75Qo7KOiy1AGRzId62OrcqZcGeqU6ZC2vi5alKh3HBTAjmqnPSQPk7/cMWV4UtKgmEc4fwSZxcSfFszGgWJJN1TYTBwtOuGH5dle2a72DPMLhnfIV7eBx6/aHoU7fwc7+9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764143574; c=relaxed/simple;
	bh=BKCii8QV7lULd63QDYCSnLCHeMwSG0CLQXsSgRFd0Ck=;
	h=To:Subject:From:Message-Id:Date; b=mUiGvkea8lsSLbjPr6UTz0nHwtjeob3/AAKm9dnlMPA4gSFNik91Htv+1CPC8r59T4BPaJg3CxmIYeeVpF1aHg2FgGqatzRqAkH4k6cS8ayx+JbQay6PRre3JtqfBeY40dBoE+0/SF019ZcDfr7ZeRT5VuIqOh1wfRq1SjJnKts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=manxFpso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="manxFpso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8946C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764143573;
	bh=BKCii8QV7lULd63QDYCSnLCHeMwSG0CLQXsSgRFd0Ck=;
	h=To:Subject:From:Date:From;
	b=manxFpso/m3IsNV63w9r4xhGcMAZaVkxcXH+XNzfzHyAKYzDJVS+UAENlQaceKAke
	 GfoXoaRozVQ0slSMB1Nv2uF8My7bSK/tRah6li4xhXZGaVcblOCQkAu/oP+Kis8UWO
	 LFmh/p4999fWRe8NVNvw2wwjstHoHi8o69fY5V9TgmBh51TCR06HKc5wzUUM05Fl5Z
	 FCilLUUVBVfeWVZD52jXADAhvQuUHtjwpIQKaXHVIFV/osBh5KVCtp+g3OQfe7275N
	 nEwE2xA9iZh2ZDew3ug+T6wllhIr1n40zeh8ym8fFM5fNkC+n20/MEd8lYV1FP/eFQ
	 9e58LWygc8/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941FAD10386
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414357359.13930.2055449071830583109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ad475acbdd46b9da1cdf104cb13fb1b4b0676e1be2dd4c57b0a2883d98e458
Date: Wed, 26 Nov 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764143573
