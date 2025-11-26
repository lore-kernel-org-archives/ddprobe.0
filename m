Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1601422154F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764139974; cv=none; b=AXRIEfytH8P3vhRhd33/tejzffx+csfB254+JH/55jhd3a175f02c1HhLynpP9KZtr+4bhBxh9upUOkxukIDGbY9KZRwG6jBBK6TLhO6bsDTdfeHDSkW2eLZG0Q+jcp9/Xkbc1avVjW4bhV5UEsjGbg9SZ8SLWJa5/ldhEdAcXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764139974; c=relaxed/simple;
	bh=27+vc2nA5wQHMEweUvHWByk2sYms7TfTHBxAxBXMQ7k=;
	h=To:Subject:From:Message-Id:Date; b=WWy29ZezoKeZx8UnfaEzywZv+HSD6p0FTI5YxbDT7H2P7t+kcNHv8JOoqV+YisxEuKKpAp33dhRyByFyVefWCLrO3LVvUolUDWNv7d4AawTF2Evb2O/JU+PCqeqL9SQPLnf1jy1qDuSBKiJClCv4kPk9j4h4/x2D1Z4Mh6lPSDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhnCW02C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhnCW02C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6614C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764139973;
	bh=27+vc2nA5wQHMEweUvHWByk2sYms7TfTHBxAxBXMQ7k=;
	h=To:Subject:From:Date:From;
	b=qhnCW02CSMqF2toN0qUWVDoYsUvMyMi4kDdHQohTlatVdRQkAEzpctGQkfYMZBG+7
	 qS9IAaXCoh9GFLKo/lJQKgD3ayr6+hXpdnR9Zf/XyVBS2jMc6LAgNntbtv0LpGbYVt
	 Hkg02Co8xXQ5ke97QIqPaRRaCQn8wcL09CkhYfdBUJ4QY4JGzDnSF1m6gJJlzd1GeO
	 JKkfUzpj0kR1H0caDQnDj2GOFJiugJcS1wf0pNVMN/YhcsgQ1TcyKVghJd3ouOxEpK
	 8eJ7kjO+3FdO1NdI9Xr177hKu/0PMW32yueS03/g0qxbiHwhkjY9o71uWvSS5CSyvR
	 mGUbVIUndlkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D7BD1037F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413997358.2626.7886329472088405912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c14ffeb111e43e38be1557e5887d2df9c10804b122da40bd773ae257196db6
Date: Wed, 26 Nov 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764139973
