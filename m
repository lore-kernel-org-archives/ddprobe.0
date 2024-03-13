Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6D210A1D
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710308297; cv=none; b=Tbeuz/kpjtjq2fM2tbluLUz6ddsWNLtqZSsELo1GDk/BxG78HVvD49MuplzqiQiocf2U/ZlEgVbqQaXh9y3AaeIZfCt6BRhPtfc7CyiaInrq7BtvBGaoYgafdaEzPx0xWzNLKdoydnrzATeipp4Jp8xMd688QOiB+5h33zD8jko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710308297; c=relaxed/simple;
	bh=v2EGSHAldDyugQaEvMMDWih057Gk6z5MqvW+rUvf4Sg=;
	h=To:Subject:From:Message-Id:Date; b=ikyERKvWWGgPx73BW01FrQbqjDHeZAfemZ2a+lKgYPZO+7wuMD9mBkWOsQ4YH9931cxFwMtgGBp3fLqdWe4UFTYksz/CyFz5tRxUZlhoowSbYs4MxFpf1xFonEQj6hZ1qQt66FAmMLWvPkzZgE/TMIkousQdWFVVTvtSx9l5qx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbpcVUUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbpcVUUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815B9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710308296;
	bh=v2EGSHAldDyugQaEvMMDWih057Gk6z5MqvW+rUvf4Sg=;
	h=To:Subject:From:Date:From;
	b=qbpcVUUyOM0J3n/yfkE6VWB4cM5V2/Y1yNbp6pq4mYkUy4/xqMZFbsCYny4pUDpGL
	 05ZivIZ5VAugT9Tu9aESNJ5w0XY+AXXEFWXGKLQ1cTj9MiJdahZj8AqmYhGxdV+PRQ
	 Bw1eQu+g7YDUc+ad3kYms5S86j3TAsAxgm2WQTK96DRYuzbVT6QaOdN6JSdG2jnvb0
	 zwjj+ZCllHlPON8olDPxD59ECA8Iu1Tsxm/dm7MHcwpzqLeOnoxRcPwmyd1mh59MSb
	 8mr+PKAYlG6nVwysFRITH+U8S+/w1S4N/zcSj9PhBKiMixgJD6o7dqJMN2DsTdnZZh
	 YOJ5AmofAM00Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61860C54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171030829638.32118.4459103310322395073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca19c4b9ec474a5f6605946dd767a02cb69d4a449796a1d518cdd9b366f2f9f
Date: Wed, 13 Mar 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710308296
