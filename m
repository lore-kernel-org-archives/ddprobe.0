Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB10C3587AB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768884833; cv=none; b=UiMH6Yq0RR5LXFEifAKxja7PmHYIkXeSRiTJeTGMDBm388OkiNrvE8GE2pQ2gePMdt+aGrqwvyrDFtsRL3CwU3aM+SxcUBFhi/sgrwlUHvHYHhFmI5pnoy3xCdq+M55OBKO6zmNTWdTHMG0zImHZFQYdog325A9EQpQtKyvFE1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768884833; c=relaxed/simple;
	bh=/OVd5wZYMOFqx0QCR7DVaDafPm96WzLlsZ3qBHoVxDo=;
	h=To:Subject:From:Message-Id:Date; b=qjkfw6D8b61Xz9JyWjFMctsxHm4jZTJKndotMejCwUJiwDpzH3dkv/9Bi6qefepGu/4F1H/Fh0huE75rFIAMzk/P0gYAZNSXWDnLSE/tI8dKwq3cquih8lB21EbnXuDZNCJyQ9n0WoBZ3/qyTOlWC1DZ99fsBu2/bncV9tPJCAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/CwDDHS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/CwDDHS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC8FC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768884833;
	bh=/OVd5wZYMOFqx0QCR7DVaDafPm96WzLlsZ3qBHoVxDo=;
	h=To:Subject:From:Date:From;
	b=W/CwDDHSGsA8JBwoDSE2p/4FU//iJRm/biQYn5h3ZILg6JTqZjX3eZVkfyWfZCuW/
	 J9o1SGx15D9f6cjEm/wl+R3NJasKxJNtzjV/VF+uiyrlK/Ntb6VskEKfQwxtZYQEER
	 OIt/LD67tXe7vazSv26PvGgmW0aFHeY+o4phLQuW4N8C5nny4Sy94zCdnvQ64zM5S8
	 IgcMda0VMfbEKIM/sRDthxrY2FltM752O1WyDWeHJtapNsfC7caswwLSzH19nf/6jc
	 VybiKII18MEedaNfAFi+lypZHDhVldB2wFphPoZbJwUEVC1ELC44k+OoVpWYCXZO85
	 1ibw+7IAEi8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E471D2ECF9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176888483360.20117.13509528048442047358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b00e11572bb14408fd1c71bc8737e0080a735ef2dfd6c47601c4c826ea1bcfd
Date: Tue, 20 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768884833
