Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E199778F59
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771133094; cv=none; b=hWDxii2N4crJ6Qeah/Hbjk7GbrbgAOS2BWv0uk1MrrLBj0s4cKufNBVGpilE/KFmYFZiM5ti33nyIcXoZJFsO54d9fZgOEYInS2sBH1Gpc7yNrPGKESzWNPyYT8/7QF+Rh90sy0rDchPlEvp0uoqmxojyKf0TuE+fMVoDGm8y78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771133094; c=relaxed/simple;
	bh=G+XZdIKvtDZ/BJ5vIvBE1Rf5TlEwvfA6LleyY+RPRSE=;
	h=To:Subject:From:Message-Id:Date; b=kafUIb0AfEA6smIpD8720i3TGIDYGCKEeb8QFGUD1Bg4mIRK6rJHiL5ogQcxgaKXk4kSN7tHnClRouppbMm+yvQxtrrvw1clNqlAS2dBxLnHRMGREaLskChnvswYuh6XFH6BIXqIfCVP7VVuBYvcj+l0NQ2HoQ6gcjnaEbjZEug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L964vajQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L964vajQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25F3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771133093;
	bh=G+XZdIKvtDZ/BJ5vIvBE1Rf5TlEwvfA6LleyY+RPRSE=;
	h=To:Subject:From:Date:From;
	b=L964vajQ5OWXzjP1yVOrQmjVePJx74JsiVK2cmetfSIXE5DK7TW2OOLo/JZS20MOE
	 wWJ/W7mZg1oaTsuiiZnVS4z5QzqgAG4e6NCMZaJiRGijen1oH5ZL36Nt5/7CvKcDZC
	 EeU+Wq8uQ3zy3Vis8eOfqJA2cl9vNwWfbIz5pgMaNCkxNgrbliHVtgvLjbrnSAAjrq
	 0kWx3HnOllhZdPFLTC1Dk0HjaeXXlS4ukxInFlyxhZTinnjL55l1RECNNv9Tld+E8z
	 4tisRQeh3TMzGslZzTIl2Cu418ZCRAcP33VLFSvovcMQ+em7VP53iMOqBFe5ziVxCD
	 KBbETwIeMV3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B16EF586A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177113309360.1173.16353923814038665310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d6a9378c28eff273349403e7c9b02f5c4f29854dcae8835f64991a8455b9a9
Date: Sun, 15 Feb 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771133093
