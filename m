Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582CD36404B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785102634; cv=none; b=o6qryzUw51ZJtA5HhYOJZj5+xHPuYQilrMDhU7JDj+Z5BBTeXVua4//xGNiic5LSUU/fDlF9KM6Jquv3oMEmslj4EW2sF//8OGxTNPRSlfJzMvMBEpdR7sn0T24H9jjPWwN5inU8tF+97ILVYI1gmdBxK/ew/1l0cfQw8tizN3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785102634; c=relaxed/simple;
	bh=o2VeIL0voAw1DkWqbeivB7pwTUiQD1eOm7xSNc4YCno=;
	h=To:Subject:From:Message-Id:Date; b=d38lbiKDlluqJYkk/RDemaES8P52Fi3xOSEPmNTZy2Z6dj4gW3PNCrF5ghjXntRFFfg0t14o+8wpCOHg7urbyP/pqIP/RXZorh6BWLxQCw7NNlUiYBPIISnDXo5Gn3p1fNFtBhn4j7C7TU9GWrIgecSlQCQ9D5mbbtNBzfYGMmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Amnpklis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Amnpklis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE2DC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785102633;
	bh=o2VeIL0voAw1DkWqbeivB7pwTUiQD1eOm7xSNc4YCno=;
	h=To:Subject:From:Date:From;
	b=Amnpklis2w38osUwT2Itp6DjV2fL7sIDfWH9YnCNd/uFARP1wq5cKJBUMHAjuqD8Q
	 P67gKBgIa8vavFAhWgl0xTjU1vE/Df4r72bcE07P3+u6TqFSbk6y7cThZss6M8rsTr
	 5YyWykaSsLrPUHX1+Zy7W1lfBtuJMeWDJcshCpYSpu0+GpL/gcc/eoUmr+VJZDHfvH
	 M5Pmnm8N1s+EYd0FjcAVfPpRMMErzHdsYDHDQ7Ola70yeeihp5V/b6wOY6MTQL02My
	 2VThi7FYEm/xO3BvJRWjP/Nn+sDRG5WIIDpXpmuf24q4ujSJa6oF+ApK2lHz0a2+lZ
	 InRcaffBZEZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE21C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510263368.25222.10429552389763024593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf58dafff712102f25c46cbf40c634ff141313bf87fa0485bd47c5d5827923ac
Date: Sun, 26 Jul 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785102633
