Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B3E20459A
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769927634; cv=none; b=b7A9wcaMrDRZumBmISrFrF+IvW6+KXT8pP21RWfNZ9o9vqRguPsTImq3/sJxYwRz7azONNPmCqmC6UJUwDJPuKVomaY6N3SsZDh3d2Gqbk8snIq4SW6JVpSyXeoo3cQTnrPU8GApvY2C/hGy+GrrXMBxkdAb+luS5MMYfYu0EGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769927634; c=relaxed/simple;
	bh=SMubnNn+zu7UbN1MbOPoREwJ1JZXVsGIjXekYgT32Zc=;
	h=To:Subject:From:Message-Id:Date; b=rmg3mFQvcUbkD3etEGZwAlyZ/OdRY652tq2OrL/HaAqDgdH/ToONguIGHa0hq7Jmso9CwgtMqHQ0UTv4inA0YzXg3+EEUwFKYExhlh9/2ztoeupFKKDiMyJYca1eITbRmJ2Pb3gcdQvid3oCzpKLeI1v7aPAmPiwIpjpMHV/K90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVma2A9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVma2A9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6921C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769927633;
	bh=SMubnNn+zu7UbN1MbOPoREwJ1JZXVsGIjXekYgT32Zc=;
	h=To:Subject:From:Date:From;
	b=NVma2A9IisgZY5yk/dBp62LczY/z+b3xZGnvj7Tdu1cCP6IZinbMI4qYHLXp3aA3d
	 uKrDVv7Qbqaq94bKaJALsa+wUryLmlrLCLipO5h1xHkCGCsvzHF/QL0seM2Ag2XFyZ
	 AIVE/6mfJeQ3uuquxAYaxk9KqUCnuSJKexe7SyRRJHHzDXkNqg8lC97pyezPGRIIJD
	 8T0MnXDjJ+yOdbtMwmdXqd70w5p/297Gl0YgxX45YOuAIA7J5CU/qNfPh87kBc332l
	 D5TYMT6WE/VFXGmCkK3GkJcRCsqGjbX3ix3G8bvmlGHKoEhTXYR27Y7wtboo1Iuzff
	 VZg9jDPRfhnKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92735E7C711
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992763357.18058.6107986507124483391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d017f0d402a92d437f490995bc58bd1bad4b6cdb4586d154d8cde39f1b11000
Date: Sun, 01 Feb 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769927633
