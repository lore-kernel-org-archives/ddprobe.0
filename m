Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462B817BB6
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748704794; cv=none; b=eWgzk5r0mWbY9ZchjMxfalfITNKDurTX+p9NejoeZcIHuc0Cv1dWY3Z77HoKTD39g8vogyvHxbJQK288WU+4vJsd5IBzu2WMdI+4NhoMhrQzKIVpxXj4LNuabXRz+RPDkhfbhdN+kQhq9Yd45dh7OnP4jBGKT+I5pFqAdDvZfc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748704794; c=relaxed/simple;
	bh=834reZZr8K0Z9dToWEG9frCt0X23Ahebk91y4dDQkPw=;
	h=To:Subject:From:Message-Id:Date; b=lGWFu2d74zFwlDDS8aoYfljVBCw7G0c6hNAK6Qjjvf9pX0RdnSwWnbGXh8g5ybk9GmOGmvnvuj7GZqUrpzyEBUXO+B9+KzbsWIoQTuMEuxxg/RgJBZSmnCvD2CGstLX6uIe73uMiT3Jqo5hlzWVeY6DYKUj1CcctH+VMsLzcZAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWpfN4qp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWpfN4qp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A990AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748704793;
	bh=834reZZr8K0Z9dToWEG9frCt0X23Ahebk91y4dDQkPw=;
	h=To:Subject:From:Date:From;
	b=hWpfN4qp1yXUzu0zdCtAIR2zCNomoQ7WsQRjW9+0Yi8x9rGbawSWhFhAroZpiudL8
	 EL6/p8GvklD/rPW5QzRIzAJXc5nn5aBSzS9brs/Vat5NbQ2Oki+f1Wgj/PSOtKJ09/
	 rVhnRADe+ge88rsUY5d8gP56ccCf5awBg5SElsA3BuNnx2xp1lmKaSHaPP+LXRbqdV
	 hSU7Ur1t5Uk5ohijlUK8PvZRbLV04QYVDEGpZZcdMQxqGth7v9j628tEDqMjIMT1D/
	 jBQgql3sKGSIQ9sq590E3+y7UYs7yDGyUe2GokEXafsVBxLeEbIm7eXnW4xzCXNpwR
	 6xZrURRbRcJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CB3C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870479358.25172.300206129550775090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71dd297580f36ee06df253092f15219aff005dd4d8eb09d83692936838134bf4
Date: Sat, 31 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748704793
