Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37518DDD2
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727130954; cv=none; b=iXCx21f6G+PojmZ71jijrt+tmvnglBrPI/zGsa7pfhBUr3Od+7aw7UWthg65sQVSgL6lYmXQliOz/CVXHKy5uNFhFHutSw+FdRvPevegnRY+sstVJ8hWI7ER+4ZdMGKhZXZTF7JPXvXLvTCrkBAh3SCPlxoWyhGicZmsyumsznw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727130954; c=relaxed/simple;
	bh=k7QZNMrn0gIIaNr0ifbndy2AmtKNhpOndq/zjllSPGQ=;
	h=To:Subject:From:Message-Id:Date; b=rANKy8xIXmyoZOLT2qeZqqKRGffA2tWwrfaVq90Ft32YWjl5g9XMeqE05uAud34twNOvEj4w+9ukdV+pJf6Twz3+p7dc6LRbap/NCDX601j29qXQk+PzKKi9AQr4nF6XwpPpJ3Tu60OY5DeizsQbGwTtEMfOKRD1DDyPQOJGCmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oe7ICk7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oe7ICk7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8281C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727130953;
	bh=k7QZNMrn0gIIaNr0ifbndy2AmtKNhpOndq/zjllSPGQ=;
	h=To:Subject:From:Date:From;
	b=Oe7ICk7yddKZUqdrvt0NUDDP61RgfpbHb5zQ92k/Jr/g81E0pwIFGovCckcbjb081
	 sa1V+DFY/c7mQe23sL4wFZ/P9NysXiuGbTSNqOzMnRpkGxsNcFScrtUu6dkHR889p4
	 JdSdZQea+cA4D8ho1lHtrikkJ18y2fvabLSw8U2MAHAV3eEHb6/0XcRddnpyfya+15
	 UFKgUzP4ryFsf+BAi0br0dtBRfU6/+5EJSSPLS61B5qXTmLTY+HKEzAtJR0eUzcZ6t
	 8IAU0mRElooBLMt4PUp4CAky07utuYZvSQPvgCOFuG3X3E+qqqcen/tOKkoYv75xLJ
	 vwodL8qsXGF/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929FECF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713095358.3320.8474616783152539511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e8bb5112488136ab14f2df2a888f3a90ea99992138772fdb0f6692d56c3db2
Date: Mon, 23 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727130953
