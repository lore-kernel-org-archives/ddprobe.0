Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F723C8D6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751281794; cv=none; b=lvZzVkn712lEYz2jE9OQ5lhQWBtJbYpA5yHWqxmmU/SMhRfSslKIUuxM0oLiAm0dQZaUK7juqKyIJ6vUdEE/vbKmwqYwhHW1LmQASOt3qCgJyzlfMX/QcEVFita5u6lqwlGZZxqqrG8FBtKK1out6IXPPDX4GLxqpj8s2qB/j2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751281794; c=relaxed/simple;
	bh=nQzWDZON2zdTdMQ/P78IAEN8ppPHYFsSXDvBRobdK0g=;
	h=To:Subject:From:Message-Id:Date; b=Lec3mFaOsJPxKph+vNMXda6MyklUPO1yhFDp5VdDONM5HHcwsne237hwTymDCuNBj4R2Q4Nlyg9WC4boA9iIIFPbLeFhA7qgm3BqV82jE2/uNHSTBIiLZHGIffFCxgKzs0uHqjADEQrqtQYSk36Y7eoMHdGjl6pwl1e4O1MtZ3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bb6ATrMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bb6ATrMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE2FC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751281793;
	bh=nQzWDZON2zdTdMQ/P78IAEN8ppPHYFsSXDvBRobdK0g=;
	h=To:Subject:From:Date:From;
	b=Bb6ATrMRyuCIEAyzpW444+hLq9h0MPKYcnBFSwkxxocayGxq6iDikaoAQ7FpGTrnX
	 Do7oXo1ooOPUujujfB71ULicx44N+CBEQAcCZZLoXm2+XrzT0hgUNzmdO2KQmjvKch
	 33ovHle/vCssEj7XtOOuHK/GhU+02BYixsgo2BizS3htQgLDRdEcRDTh8YUgJvTK8X
	 57dDkHCBJ0lXzFvkBeHQwwp28Caa6vSU4r2m+YMpVKugFjmXZ5SA0cetEaqejlQomV
	 NnC7yqlD4Ch9OmAqYLfHfOhe+SMAyd+9mlybtu7bhvZOGQBoH4Qrj691Cz7YjGxFMw
	 KChLFv+aQzzDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E18EC8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128179357.29614.18111510537426169918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe39488912cbe9b304d9e973f15d0d1ae2d4f8bc9a914885e9f3dc88e9734f0
Date: Mon, 30 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751281793
