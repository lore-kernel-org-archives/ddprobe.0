Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD7F185E4A
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749680994; cv=none; b=g18tH5JKNwM4Xiiaf012MWPuy+nEqPFbFhpD1/TQxaa4cjYcXoiXM7SfkCJvMdTMbgME+RU8WjmDk0yNoV+T2O/twdSBD88Lstlfdcac2MAaGGku9Kz6LOBB33Pn1bCkkK2Jz+yFDGSTXbkD5uDoMn7oKMO7PlUMVu9jyKfOHqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749680994; c=relaxed/simple;
	bh=FmkYXBijv47rPn1K6Nrwp1phyBolQ0a+Ble7JVyFBR8=;
	h=To:Subject:From:Message-Id:Date; b=M3S9+1DsvZdrXhQ1pxfbLXdsghs57g+AEBUrFU/i5FRUQQ0CWwSkQsixH5C9sPOes+wjscy75F50PPAWpR/vsA91vceRtt/iyucxftiGYFPHk2r1fEoV0h7bLN7ZjLsjjjOnTkMOm2XbZWv3dHMI0WZ/ZmGTtQ0L2Q/hE1QmjRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgPtKWFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgPtKWFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CBCC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749680993;
	bh=FmkYXBijv47rPn1K6Nrwp1phyBolQ0a+Ble7JVyFBR8=;
	h=To:Subject:From:Date:From;
	b=tgPtKWFsBMtJdecp3sqlitQ9JQii196BhGE55d30JZzTGthlLnS298fJc+ZI8WMZA
	 QyhzejS3Dj0IPKczGPEvmAiFfAj8d33LjIKMrgqTL5c1P0E40TDPcoylUDgcrH7f9w
	 Gemgll2KJyj3bpEkihDmTFWWhn7Ox8RUmo27geXVeuA0IPYFxYu9yYQ7c+fVPhSgCy
	 sKX/AeECUOuPpa3Mkh7kJyqs7jMEZDIancSYSFoj32ejY7a8bV8m9SpBu5xEeZ6YoK
	 2qWasBUnevkZJT9rlxl4PHnLyIy7dGH/4wttidAFA9GtlQ0E/IDkMoirzgMVVMeWwx
	 SNlxPfZVhQPog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70BC71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174968099357.14739.4837449900809172960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b63f3669a09365b4c9fdd3c5c6c86d07994d034d348cef7fa31b2cc495868a
Date: Wed, 11 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749680993
