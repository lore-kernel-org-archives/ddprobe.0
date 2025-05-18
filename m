Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E0D136A
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747555194; cv=none; b=BZZe5mliN7BZ/dK4GtH9jPJD4ZVTNZuclrR8eiH9R94aLeMzqUibnL25NmrP9+PNkuCeDuS+DtHvhMlHjUEkDf8d/AA9gkbIwrjBLZTmKIG3dpsW3il649Xm3RwIXcmn0wq4lWncXt5AjchU849yWRGG/EYFgi592s9uYlsk85M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747555194; c=relaxed/simple;
	bh=zDltf8G9RMNhg6DOFwZjbkMraRwal8wMqP3x5DBsu9Y=;
	h=To:Subject:From:Message-Id:Date; b=Bue+LnNp8U/QFdljPr6PKSU7ul7pKIfejZMr9+GNoAMw3IDLZ1iaIqLNovk0HdBTb2qrf+Ufj234QGPzikMhlpZMm9Gb9knTRJ8M6v7S+8HQJYnf7a1bWdLf2v/7GifsOvGak31d0I+oJPwrxWy+A6Gi8B63jyh0f9D7qiyzo4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFTF6uyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFTF6uyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCC0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747555193;
	bh=zDltf8G9RMNhg6DOFwZjbkMraRwal8wMqP3x5DBsu9Y=;
	h=To:Subject:From:Date:From;
	b=AFTF6uyt1EeGE5PHUa+ck+lj/FfVCOLEuQhwQ5TAUsyBFvPZYC6YeMIUvg870saBa
	 i1/qLkuSYetuHzCq8bZyOuMpChbTBQO3Bm2VXWVjdpk1f9MuOn4s037xWnSUT6mls2
	 Amg+oZaM8xeOVpQoet+c2d6XACU0RvsD2UbrjhG2ebpz1AIbBRvasD+7XzG2M6fuJ4
	 Ws8HPvgVPfIJFYC9agFM7zOD6b5hHhiNItdCTrobz6LhZDmyX2L61N7dcQXUtt8Hru
	 WnIF7XT8UBTehGcvfM98yoyJdQJ8ReWyK0WVql6rCj4mr7UaJM4m+1iLgUdiE94vEs
	 vdfI3eFqdyvhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5F8C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755519357.2410.16070191572956720625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256eb32c12ead9d90df4b572f38dbcb9d19ffbaa8f07ab34ee88a17600891282
Date: Sun, 18 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747555193
