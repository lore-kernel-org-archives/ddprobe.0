Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E214319872
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757943594; cv=none; b=PQg7XVol3HfrxN6QhSxsCz2ofEEF9jWc6cSXDgHsPtva22YL5SEqXMDDsYrMm35TbqfHGUT27UL53KPBamxxwmJqTUk784IXCvWxmHPX9BpLR4Q3pmzfxPjPXDt5PnUxJxUyeWyfNaEj64KNAE7WrMR1Wdw2ZLbDispv3HPQg3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757943594; c=relaxed/simple;
	bh=wxOazyjiDPeVnZ/B1FAnjlEjUVDVRqiAzDb8nD0XJiE=;
	h=To:Subject:From:Message-Id:Date; b=BPqCKvScJAj9O9TBZ5OF5KtGSQ1v6cSGVYuf+fhoNzNTjQxKYA1BW6gJmuMnfC42qiHUPt8OlZSQVziyJO4AlaJelS56Wlg2XBEnBMWvtvXyZTDlKFwS3n7z8ScSPiC/hTvUiglzcFyduazBkQkmROPQJ1wiAs2xU0JVeuXJyO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzpCm0ws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzpCm0ws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757943593;
	bh=wxOazyjiDPeVnZ/B1FAnjlEjUVDVRqiAzDb8nD0XJiE=;
	h=To:Subject:From:Date:From;
	b=IzpCm0ws7Swsy7dIX2v1ko7iP2tDgTSE2ugn5zx+xZNtv955oZxMMHDXpoLi24V9Z
	 cIXzvNjkARFucJD1MVOyy3CBMqZUwrZtnZNVdft7TM6MTdCwHd52t5INe1443CevUd
	 VLhF5U0z041dogUb34noN6F6cK6Yye9+6MSq+Lm7NC65j3zCegfZF6gDR59XfPtZgO
	 QeAi1/zxPV+ZlsLQZicMWlLrbnoF4YtV3s5eJdCS0SEjN7086tRooVNTIBJIHuvHK4
	 g+1hr/nQWs5hFibWmEEpeTjoM2OkNucylLKlHXtE+AbDHsYvLLe61G1Por32iq4HjC
	 HkkGmqYK4AvVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A4CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794359358.21239.18373887629585458090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15760a5337df4307d9d07747919f56cefc9e56ad9b4ad738fa51d70d49893172
Date: Mon, 15 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757943593
