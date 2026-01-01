Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1517725B2F4
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767230034; cv=none; b=AdJRvcRhHVxmrCytvJYTRN3sb4yYPHlWUBWct78qW5enuwwtTxDeAd+FnV9yqmKbdpOiyf/TBiY5vvxOr/ik6YizsCy4BW0Ns8WyJb41igWgPhfER+7wgLVSUoFAlVe4Ditew3M2SEL2wXU1uXyU4yve48OsI0rCxdTWwT78aVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767230034; c=relaxed/simple;
	bh=KGYF3riYAfYyNhomCnZxIU2bWG0AABI8SvSiU/m3HOo=;
	h=To:Subject:From:Message-Id:Date; b=a9Lt9JlKOeq+IlW1lA7PNgSTjzA5T7f0JJfBqmqEzruOt9ADQ26rdipN+5/Kmd6Cekh0I8daHYRPSFrPeaWB/DNZuNGjP/XDBMlsAQM/FmmqZUJNTdSZpfOGfaPxlriOFh7zC5dMtCW6/zTu+4HSjFW2CEfcywsmvo3W0tqBa3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Te0l2DeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Te0l2DeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C2BC116D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767230033;
	bh=KGYF3riYAfYyNhomCnZxIU2bWG0AABI8SvSiU/m3HOo=;
	h=To:Subject:From:Date:From;
	b=Te0l2DeRzHwPDnpD7PNQBbzqj07SNkvCTsqQjuYnvq3wmCW0dU7lnH8TsYlEoDnWG
	 /bXe6U0SFRGfah8Y5a8M/+n+qnRoCaOEDCaQGLfyrnXPb0FqjsSwq6RBfFeJxdZ2CF
	 VP6ExNLXT7Axa6QtIP7XA8BaI/Aj91dXviwxQRs7yLssS0I82e09IKtMluNH4p5GWp
	 jdz93Jd/L8Vl74A0VG1P6nEunsbI6OnhESSrS7EuobNIRke/Z1r/Gb9YO7YqChFiF+
	 2BBcQKshY6ZqPTUPQk6htP3csWkJhgJtUeizpvTLGY/OfQ5mX+2gT9/I0eIgRwQC/1
	 SXlDxjlob7qtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9302BEEB573
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723003358.20661.10869057696887865397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6339dd3fd60b8b8a0f8173080559b598881938461b65f2fe95e7d56808b137dd
Date: Thu, 01 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767230033
