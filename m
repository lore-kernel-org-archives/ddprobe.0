Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46328B660
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738239354; cv=none; b=BPSBY4V2YcubfFYhLsK5UWJ8qr6TrC9tTMiAO2JF1adZTKbm8CdMidRq++xkf2HagcuUl7zYdiEGMrEvYgRvdB8Er03TdVHKzM1G91L6dIPdwE12g1SVD/EYIW4g0uxiiY6O7J020syhOOSPQXrUg6RRZ0Q4U+I07K/d1ffWxXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738239354; c=relaxed/simple;
	bh=8C2vHq0LHOrvSXimM1M289eRl6ujhu+PjuATJvHfZsw=;
	h=To:Subject:From:Message-Id:Date; b=ZXDbbth6Ob7ox2TaZFS+cN82ojk+mtfl0ufV+jBtuad3APHa23z1HLYDwATUuUBUKgfOvgHkDsulhFyUp5SDhRinoX1rjbLFllk9RIk0P8lEndxJ2o27bfEcuRKTIFiOOWpFEs9mHmRxXrdsFfwsOkFKyPmdM8xcK+MCFsYVO6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVGQG60W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVGQG60W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87B0C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738239353;
	bh=8C2vHq0LHOrvSXimM1M289eRl6ujhu+PjuATJvHfZsw=;
	h=To:Subject:From:Date:From;
	b=HVGQG60WpTVkTHlSoQgQpSkWSS6TLj/hrqDBkxrwlNHRbj1BDkx23+ZeS7e46rz4c
	 VYcqE4Ibrl6EmYDTzPt7W8gGf2bd20WJw8xFjol51MInzrRXrzjTVqpJcSJTjdU6Ls
	 gdHwyh2MZ69f5zwF/LW4pdRvyfsReYT14TxBPe89otHrcisS32qlv8ne0q0W+cfqZa
	 21QjQtKl1lncAjfaeQ9keE61a26TLmpkMQx4Vy+GsDQNn38JtNoPGrI58xBziwhtDw
	 /ryZgM6nrSe114KPoMonDUP21GWgEkYZcwr57hAcNIB7G4fggQnGwDfPAdFCTJ3A4p
	 C4iC/YPjhA8VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A2FC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173823935365.8873.4289908123991036649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2d4b47f36013ab5c7a899917b272e342b14c727cdd8b7fe800a5942a8c13c7
Date: Thu, 30 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738239353
