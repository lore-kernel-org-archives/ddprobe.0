Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D84D25E45A
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742828994; cv=none; b=f/+yehC8zvOR+gtS2Xyn/m61ZmTimZjm9ACjXvo+TnmDV8FxzvFWWedfCfC/yLf30kfC0RNonAKNr4eT7WNuE3FCAYye2mYlSC5p87GgDAR/7FPGvGIK0KGg8hDT5Du3NIdStw5EMNtGhLwJQd3MdcU8P/PeabC5zMnLNOFiUVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742828994; c=relaxed/simple;
	bh=cFCB0ZHxsl8y2ZrRJETxhodWoj8VOqWN0x/SSbrDipc=;
	h=To:Subject:From:Message-Id:Date; b=hEJt3hoHxuD+GK8Jw/QswlZFHSg46qQo8ld+IYyusVYr4MTAHuVjIQtVBe2HF53WQiVasYT+wSKuKVzEGHZuX/a82sRUkEtX61r4d4r1uz/ircvBzl5znxG/BFDVEGyvSPVE69llEl6hzjQ0u0nt1QpL47jW+PNBH1QUnxb4wOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiK6CKzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiK6CKzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64EFC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742828993;
	bh=cFCB0ZHxsl8y2ZrRJETxhodWoj8VOqWN0x/SSbrDipc=;
	h=To:Subject:From:Date:From;
	b=CiK6CKzsbm1djHREtcry96YuQddorayyh9sd1wmLldNDX6krJCQPjE4PTJCux2GEy
	 OU6+ZzVkNisONV5Qt3U8BLD0Dw3Sl4a89+VjdQSOCv0s9zzt7mQ1iJxrxaHKCzLhJL
	 V4/AQ4cvaRoEuNMz88/AfH0ZV5o/qbm/wGaGsFk+NCpvUf7gEGtGWcW+v1mr8C6wl3
	 VccT5t/KDSQpta2CrbM17QmmwqKnLXJlZ4+x5bXZR3tiTgy10w0qawMB8yelx6XOxq
	 rXOz6jzXzl0/wAka1gZDl3v6B3ALR5fCUXTSTvzql1dznzZNlwhUvxsMXWCm7yFbWa
	 OL2vsM1KNREjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED76C3600B
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174282899364.31036.2710231380900413307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374fac4bd399525bf8547d46d563a20f7f67d6ba45d6d43911e9a667af4f52df
Date: Mon, 24 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742828993
