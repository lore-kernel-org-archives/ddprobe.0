Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1850142A9D
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766811834; cv=none; b=UrJk4a8+c209rSM5LqexSooXTbPWmfiQBbj0EpMnTJbesKlDMP/+dfr3uE3I1RSX/NVTbEm3ajmb2ci1yJzBJOJYhtpdJfur97bUu1+2T89t/4AaJebTFbOzKmG17qcGApGIZ68z4bAo5ky0tRgaGe6H9rnJU62msJGbZa+VauA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766811834; c=relaxed/simple;
	bh=ggRhOqoSJ4dd17FpoD0LJeG4L+I0kd1itdc3prFcmvs=;
	h=To:Subject:From:Message-Id:Date; b=Mzpf+G0MuutyMYrQjyS/Oj/Fa5kVMrJck+fy12EFuAx2WrLugJ9sEGIrE8pQ/Tv/dw0NpNp2Ks83dNdu/MTG9GVnWAA95PuiYLrSyyTaGYs96cs2CRrY6wG4StpiWkaEi95a5nKdfORJSAv2lwZ9ri6ScbG71LO7ROGQyqEH050=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJ5Cackg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJ5Cackg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B12C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766811833;
	bh=ggRhOqoSJ4dd17FpoD0LJeG4L+I0kd1itdc3prFcmvs=;
	h=To:Subject:From:Date:From;
	b=dJ5CackgB7+R9DeFMw8dMwcKXPA6nc84bu5WwbcfQqXBAoRzJ4U/nI+wdwcaAzY9p
	 SZa5bhucv9zJJXDioIYT+IRZxJoJbyhtBdl8KsSAghW9IsXyAn61G/AFQdLXVZmpEQ
	 3quk10Ak0PKclYebu1R5spvZunElCRpNK9/5xE3xjQMKPArf7iAJplovwHDijoM+Tt
	 Wb/aUxitJ9FLTlxU7S7VOwEdZl+M9AqlnNBmtdQ8Q1NCpBvSZke+kJ3tOSV9pIpBWk
	 Sv+WEqlVqt9BaPcSWPQg5l+nkME5dEyQWHQ8e+xP3/wEhxX78rGvj3MCs8BZpqq4rg
	 ZMDCgT5bXMqGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92632E7AD7F
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681183359.20439.7367648344626777310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fa349e5ef436660551e9a61c8df6cd54e2c52efb65f26ce2bfb013915a93e8
Date: Sat, 27 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766811833
