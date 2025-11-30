Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4676E25B663
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764503574; cv=none; b=osIBHbZZQHxrYHN9F5ROOh1NTFJX021x1FZwHZwJBaJBWp7m4aay3z4ljKqRNXyz5nNliG51jXXEvfif2Uvn2VuSI0aQb0whvCJXZV5ZBGwwJDaclW6FX/eZDE0YmXx6xkthdjyMP8F7wL0XCKGNqCpO9lfLhy31zDY7Xc/Vl9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764503574; c=relaxed/simple;
	bh=9ObSYGIsM3ByVOii/FUO4fdbBpIoAKnCvnwCsWHF1gA=;
	h=To:Subject:From:Message-Id:Date; b=fxxTatWlGZa/eLMD0AIwudhiX7E/Wfhw0HckMznQ9zljGH/VXFuVvCubxnr4nB+GrwDG/EsAJas+ha5n2hC6yKBIvCvKu1D0RSBXy3rCj+Y22nMODKEFJmKZM0jrPOqXzEN6RLLROGMjCOCX8aWUYhPQAyUeQZeCt/zbM/mmT1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnbRsPTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnbRsPTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CD2C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764503573;
	bh=9ObSYGIsM3ByVOii/FUO4fdbBpIoAKnCvnwCsWHF1gA=;
	h=To:Subject:From:Date:From;
	b=EnbRsPTHj5vhc5wJ03EVwWYn/W3FRWAiUBf9dnu2Df0XpVnZ3ObDQNMd++iH32p+p
	 TynuSV/LD1y3p1kKsFDhnwdeIIZ5glLXpy/7n/5hw/KDVtHhKhJoydbI43v7IQ3h5h
	 EB8Ti+i6bJNfxIX0wzT3mzrCI5I8H5iGFjUyYdTK0OL1ktaq+vGKhU0JVwB3zjwHu2
	 MSL6QYYPKMePAUAwQAyYEX+s6cYs5W7PftGLFWm2P8WQQxVKnb06RxqECHeehEXu3j
	 //J0yMC1chP+Anzh+2n0MAoZrVq0QRYWJ3zky+Cz8oLFwlVrLw0EBwAEgSH/uMop6C
	 bwlX7sK2lq7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7C8CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450357359.12479.9496725496721625629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c24daf380754d7b2ca92aed2e99094210c784897644c5c036aac4fa26f6c2da
Date: Sun, 30 Nov 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764503573
