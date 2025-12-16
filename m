Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035A53BB40
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765843974; cv=none; b=HfhB0TL4cBSMC9mIuQrxjzhOvVc07Bgcnc+zr1wIgZUwfpELYArA8ghcW4J8bJym6f5Sn+znQKKQ0LRQCO1zZQtM5VAZTAF4F+d2a8vClgvp0vdIjabNGuV5CuBH3RmQbq5dkxM/awvN3nRGD42MGwpxBCz1J/7o2MMhWKWspFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765843974; c=relaxed/simple;
	bh=1F0xGJtkgBJY0JB5ntkFrwXvhZRST9oKzQYo9oft4CA=;
	h=To:Subject:From:Message-Id:Date; b=PYzB+BRLgqz22ZFIS6Hxb+M1YW+K7aQrSRiaL2w1pRkcCvmVWsNIVWS3sKYfoR9ZYJtlAkvKFVjnhreGTNDRPXa4mEUgCUB8kiP+O5YRikq2AEyGctiosovZ0LWPYl5bW6pdA9ccmhcUIjlfpkPDI8JeGYxgD0KUGy22Zsf/T5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DplwgOFF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DplwgOFF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C43C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765843973;
	bh=1F0xGJtkgBJY0JB5ntkFrwXvhZRST9oKzQYo9oft4CA=;
	h=To:Subject:From:Date:From;
	b=DplwgOFFVHuQoM5K/tD/T7PpJPvxYUCxqgK4BEhL6XhUwiq334GK2MR306cZKW38i
	 6W3TEsWghlq2b2AcgcVQ7MOERnp70c9xkkrMEQjRYz4cE28uZ2/Ywh05N9qltPexYl
	 tNwLw0QIfWP+mItwd8G5DhBgRRisStqXt7eRE5FElIJ7PJ1ruPfL5ZJxdrW7HsN2ua
	 JGAPUWe/I69FelIB3HIsZwYsg02rpklu93nePrJtt0ntkc+BFZ/jpeFzS01sbjuaHJ
	 wWG8sfbKCs6AXMNw+6XvthR7QSJPerFf1fJxvV+KGsAB+Ce1Gv3mtsHY4BFVjneeSN
	 p5CFQEwa+c3Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9226BD5B874
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176584397358.24314.4252646100432710941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60d3d3b159da4495148aebaf1c9600814f4aa6180551f0995cceb9059e71c41
Date: Tue, 16 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765843973
