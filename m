Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1792422034;
	b=Z/K3xB1jCJkptv4G7rg/F8aRa6U+bZTiO9DwCxIZRAK+pb0pw56LPxaC7HhsNPfAb6Gs
	 ZEHFEo2u8qubU07G9ezzIv9jjEVmXqbZkpamcWlMMRsc4WtQ549w4hjjpbZK3L6tuBUWf
	 qbsBcAQCWlJzhrg8MOmrAZZjTYwdPcJCY2hB9j34WVgmMxrZTNKyZBFKwjRkHjprAcy7E
	 5XXrSxcfzzhR6s/AOFb4hehJg3iiDbsxDAYKSZjExxiU8Gx/LF6nV+EN1knskVLLflZ5L
	 vsHydD55LzVFqBP+KSimWrvjhv4NWfxxGTgKhtYgHEMUYL3L8hRWhbjkY11XFLUKJQg==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792422034;
	h=Received:Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date;
	bh=zV7LyPvgUEmuOEWbkLla6+OcJlXofLyZBo3dSisuwzc=;
	b=de3pta76Q0VLox2SN5eNTPRShzyqNNjdUn2NXbhrO9B2qNytk3OwdeGRVZTKwHthAZb1
	 63J54mLFcwt6Qp1aeqY+IGIaQm+QT0BpMX3L65yunIKWV7OY2l9lrqj/jlJwlC+axJr6d
	 ifjAQgfzCfyLmVG57rhUMQ2BYEmY+slzFSrxGHHHEaZBtO7dHjdDvZImWI5aZG/KTP4Bj
	 N9MAzbLSWwEBVESXZQ0UvVKxY/DYVpMPOr7TF5ND9VJwbtE3lAq08iybjf7ivT8fGr8ec
	 pIk0yOYf1QBVPpIapdOlTg16u8pxiq7NITT6VeLI/JB9/HEw2ILLWjqA3A2rqHrlz4g==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=AK4MegrX;
	arc=pass header.oldest-pass=0 smtp.remote-ip=10.30.226.211
Received: from aws-us-west-2-korg-listserv-1.web.codeaurora.org (ip-10-30-226-211.us-west-2.compute.internal [10.30.226.211])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30D796079D4F
	for <ddprobe.lists.linux.dev@localhost.mlmmj>; Mon, 19 Oct 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=AK4MegrX
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B7F33B975
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792422034; cv=none; b=rCFeFqNrt74JEMmBbDoszSOconLGBqWwHZEwOSsFHyCIe89xEdnE/zuuja4MOPDDJ9yMla4D2/Zo7pKopdzcH4baCPj/SyI9n3kdDaAfc4jI2MeNj4amS4s8K1IdkzyFa6vrw779PnMr7hdwR866rQPb1cv5JfS+GGg0YSYVQQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792422034; c=relaxed/simple;
	bh=zV7LyPvgUEmuOEWbkLla6+OcJlXofLyZBo3dSisuwzc=;
	h=To:Subject:From:Message-Id:Date; b=UQLuN8VFsPtkc+CftedwzjwXAw7CxosE7aU0XfJqTyG2FLvsEnMyFwkKCPLsaxk5SmsRuEkGIjagu6e5BPmPzK0zPq09SSqTktuMj4SvbLD+nR8GoXwPR+rTlT6x2iTJCOPj94Hpd+/KSCYK2vNoDWA8Kvz9D7FOoms9yBZsxsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AK4MegrX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62B4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792422033;
	bh=zV7LyPvgUEmuOEWbkLla6+OcJlXofLyZBo3dSisuwzc=;
	h=To:Subject:From:Date:From;
	b=AK4MegrXwB2v7SmUCZp7BySL7b9CMkb1rk9Rhe/xKg2Qf73a9FJYuLrBANmqd93j6
	 UfBTxF3bpD5uzf4YU9ihxiYlVF5U4bLcsadligjWWzvT6KTu6UI8cKjmT+SGspvC1K
	 95MN70sS5Cgkd+Mtc/l8HjTayYyr5QMrNKgnjwehcCVBJqA4kpmonQ+nyOKlRbbkOm
	 tWAkfLtW+RjioQd06IQim+CAuePDQalTHu4PHNVtah/dNHRryC1UMgkY1DZQzLYvvS
	 jLkoUvezxWcMwf8M2VYftSdzp71y7F6ABwXeQfSqWrZAuYWGzD0AUsmdgNqTBHh1DE
	 SpmpweaYUFE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA302CCF2DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242203374.30453.2916393189025487299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bdb4fece3f4de7b50e442f98f93a9f24c22289422813520a6d80832fc86ab50
Date: Mon, 19 Oct 2026 15:00:33 +0000
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Post: <mailto:ddprobe@lists.linux.dev>
List-Help: <mailto:ddprobe+help@lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>
List-Owner: <mailto:ddprobe+owner@lists.linux.dev>
Precedence: list

rtt-probe:lore-subspace-rtt:1792422033
