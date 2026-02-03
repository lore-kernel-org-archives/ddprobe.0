Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253E63A7F56
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770135834; cv=none; b=L+96Dj1bzjRlwhMOxObNTVLdcvD31ySffyO2FNRDepaxMmsmno/NmW4hZiCz7FeHrcbrqRPH6v9H4HA0WEScdLnYNci+iXlSlvjggCaPIW3/ShoEHZU29T+T3Ap5w8V9v6jx41h8ouq9GyZi1fcuq/0308WBJuH8lwrQjBlqlHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770135834; c=relaxed/simple;
	bh=hW9eYYd/ieWOCDCNAR8Z+/Cqjn2uPn0Azh1DqAMLyvw=;
	h=To:Subject:From:Message-Id:Date; b=BNM8kfaTlj8GlxOpREn4Gp+AoZ6kJK/Y54d1w3ckjwg0hVSi5dCw1i3ii7IZQrvgMvgVuwh9UjFMzAkS/wWRMWaVVQt2FYaLYK0ZcJ9prznz5GfokgKdrRbIWyppIoHOYmYtfSuDhK7HLKA/0aJqjSXR6/Pcb3IbAOKGNunvhww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXGuSuLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXGuSuLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF5BC19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770135833;
	bh=hW9eYYd/ieWOCDCNAR8Z+/Cqjn2uPn0Azh1DqAMLyvw=;
	h=To:Subject:From:Date:From;
	b=LXGuSuLc03qPSiX6V4D1D4LfKoFTSKsdmt3oFmf1EKhHFc4dsJHIa3Gjjt2qR/SwV
	 hrNIZreYrcDmB82XyYm2JKHlgnycNg8+wXgU4mzEXnV3jpbbnrcQfYD2zHHtBc7mDt
	 ZGsd1kQVD/WDkhSWsjraGAFta7RX8zhIY3AbPfEJKG/VsubeEVcWoiDrkw+tqkBm0a
	 zUuyTCJD4lHYsVYsQw6aK9kuQnfo2D7TkyL2sFDRjjS6hZt3GDmC3gE6e2DuKgy2wJ
	 gojBgUuQXvEA+V3AWFUO7/uwA5jH8J8pgxQkTJZcxguzz0ztit8hXtIpkYUawylcfG
	 o2Il+GqWWHfmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CC3E87842
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013583365.8813.2314124001947928862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69dab1f17d8a8ce43a52b4d58e1ae553f3c9c8c82d1dbcc18b9f9187a837f3cb
Date: Tue, 03 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770135833
