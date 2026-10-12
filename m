Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5250C1F78E6
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791765034; cv=none; b=MncnLZGoJXnAyRHZ6LW4fb2D8YPvBWGLpUQiC/GAqLJRQ6t2hFAkLkDaGvvtXXf8cKxVEOeGHcJywgXqGV1DGVu08zhqv+BfUnAS1nv+C5NGvVZYJRf8dujsq0i7cMjrI99DPJSgqZXgHdNw7L3N1V6gJUqZzNxCZKHO7mjVwxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791765034; c=relaxed/simple;
	bh=gx5qMYVSanqxWitF8Vp9+lie6Uswiigo+SrE8w2Mm+Q=;
	h=To:Subject:From:Message-Id:Date; b=IUanPZiGclZrBaKCB36cTRjVrqY1F9l0OgnuYQG/f9WSssVRU4H8QBvfBYVHmJFTn8m28N9IQcwPzsziHeJ82ZPY+na3fbJbo1jXan0hFUl05GuEwKtm9mkHd2r0s1m8mnialxdevXLQYLyBIObbjA0PW8KrizYtzosiZXBLpT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCcnto5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCcnto5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14C4C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791765033;
	bh=gx5qMYVSanqxWitF8Vp9+lie6Uswiigo+SrE8w2Mm+Q=;
	h=To:Subject:From:Date:From;
	b=qCcnto5rmvdYijdGHK3gekDBgtuRiRc3C+HONwEkgF5D5yFa0jfNo9FhkjFZyMbiG
	 cWOwa9ADV9sLKFUAf9cg7fe7dQeztc/7LrkXnK6Dxfk0y48aSWuugIsf7wV4J82US0
	 j5TrI3fYgPjckC3m8eItv3Ah8uhl9lPwJRQpwFTxzMTB7RDEMQ2/3KNjnCr5HaQW9X
	 lybfB9ShqTjoNeIpx6DYSdS7NLhBHTNyPz6TAoUolYOel5y0KhVh6/GTEQedvomujY
	 LoqLVz1ThdPyVc+nvbCyWV8W/mjxJdrd58Vm0BKF6lhvQ/XKHlqqMYkjUDHMnt+EZ6
	 +mrGMel7v21zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA3ACA9ECF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176503368.13436.7121941112279507840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d576075cfe6f15395f62a469d2cfacd9bf2fa5b40b0f1b1c3211484d89058e3
Date: Mon, 12 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791765033
