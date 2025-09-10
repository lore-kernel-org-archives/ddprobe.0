Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5189131062E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757495395; cv=none; b=RazU6VGWCt7GQyF/88+y6F7pE5vrSgt91MlaM372FweIZGN2HPiPMJ8Ch/A/qlbEDykHVAWR4Zeu8Ss4OtHI+QcVB2UvK4qpHGEvdEJe/SHwFTk5ewWMFFBvgcUDbFl+EEXQ6o0uSId5ZwevYQb4SaT8ZT6SkTfpIv4MUYTpDyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757495395; c=relaxed/simple;
	bh=LdQ4/GFIO/IhJvQPFXTjTc3uXbM1Fo3GcrwxLFTRQPU=;
	h=To:Subject:From:Message-Id:Date; b=YT7El3HjeYXDqSRGji4Zpc+paLtLIV/h6vqRuLZQm3bgIYhlyDY6ORQq3d2ETyyHW0qy+r632E9WrXXCRxrpqiIEPYFa3WrgNTraDK4RKyMNveUshP+4GeWDI8j1G2L8aPq1S5yzn8T/fYcOBEoP9FMeLpTP62fk/fDDABwivWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAwKiQur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAwKiQur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42F1C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757495393;
	bh=LdQ4/GFIO/IhJvQPFXTjTc3uXbM1Fo3GcrwxLFTRQPU=;
	h=To:Subject:From:Date:From;
	b=FAwKiQurgEOttp6mu7oiBjlxJr/dwMwOa5+Wv6SR0phPWCsDwZj8BPBQrHaJR/gYI
	 Br2vlf3yIeFdGhu3vepGoa5hcBt2OGUJQpbisdnqBynT5x/+Ogw5AhPoyOKSpYg3ZI
	 s4LtBnVTJ5YJUX2wPfVaaxXHXaYyMfnXkAh4h3q1MrtduZQp91W5t+2EIoV9bVBYhd
	 x704s/9c8zBp/B0MWl2jSANPvXr7kx3dhDhn1Cxv/xYYKMlHzv5jwFKAyOR666OU5L
	 30aus9rysBk07BZ51CaGTsjjtUnqJBPBdCOrL6/tLSXGi0MHJfQsOnz0jiMdzF0qEL
	 +Yo75JNI+utCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F3CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749539358.27771.6849093717095975437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9dc620050d2b39f7b8a98e5a82e5e3069a5bc76eb602508e07559802d6a76fc
Date: Wed, 10 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757495393
