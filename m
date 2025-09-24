Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1740A26D4C6
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758742794; cv=none; b=j7RJyK8478c2DdveDrjpnVTI0SrtXXM7+0mewoHzFCkHGaHHIlxb3+TWmN8wKNJvRjv42bT/sLqvLYTBo9l8AuDsYVTb6H8NxW/g4FmxO1vAICsRxg+WPt2ryclysw9ih6MCCMi7PmDtXfQRslOhDBiGge1X817yNoQ1scTr43c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758742794; c=relaxed/simple;
	bh=yN+aQTesJHFNziHUHAJ0uYHBGvQJNiivZ3PdayqWVpw=;
	h=To:Subject:From:Message-Id:Date; b=c/3ccc5tSIfQ4JueiuSIeoqCwquF8Kd+dlEPad/b10DKZP1jmAJo23rMtbi4wnRcj0E1WSpUoxjq+TU6LJNnHms3eYl7lmER1LOFlvTA6WiHPZYPiE4apZvUIHPI0FYbokNSdRqtdLzna2nit1GfDE2u753mbQbx4DZs8Ul3AYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3qunmXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3qunmXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69FEC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758742793;
	bh=yN+aQTesJHFNziHUHAJ0uYHBGvQJNiivZ3PdayqWVpw=;
	h=To:Subject:From:Date:From;
	b=N3qunmXoq2elSzfz9DPoIfjA7GpuDa5ZXLqJhmnUGFY88KNcmoIuwyPVWzCGtJQZo
	 CUMUSn3+DVsAHUFYhiE5Dv/LFlaijoSLjQO9G4kzWFpP61t7YzExghnjs1uMZ34OPO
	 fl3x7zEYwvvgZcX5AMh/q0Pz7EqXFo3WPRUAIWZ+o94D2gijiXFvu7Go0lzA3lw0S+
	 UJbE3K9abxr28Q8ZU3RZwpE6PSq0FiNeseG7FF0egf8LdLCyV5U18WTirZzmOSp6Xz
	 0BLM/EBK5OK8ydK0B4xG/BR1IGUJtH7+lVM2iSsIDXVc44fLcW23/vjeO0I76A3z6L
	 fHOrHBEY7ccWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912CFCAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874279358.24245.12417321421059679300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc90fac618528a8c5f9f99ab1f7d43dbb1072db29df9d69914d39d961da0bf87
Date: Wed, 24 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758742793
