Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5420514387F
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717057463; cv=none; b=GslaMXbznHInvodFweg0HZ7dTB6zY3gWF92r0HhacCZsm5ZeI6sKz5LG4odJRBwq9bmErHTN3e38xDkjlB7OZ7xQL1fZLk07hfL1si6uETDpjo9lLWAkLspj4T9kbgFoBCWqhpUttKeU0xYepWUrbQO+f9j0l+KgrKVi5XBZ2Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717057463; c=relaxed/simple;
	bh=jh9vG0S6L6OkDP7ySRQCBv9YUQVxI6cgCAoj3uiDGsk=;
	h=To:Subject:From:Message-Id:Date; b=Xv5+eUqDKE9I05u5JgIM2tl7MsBBmAu8Nm0qRie5A0fK9w9/kTmyHuh1ipSbmRFkyQ66nIvHqoVhHcANGTWFgJC1CRsjgW5rVwGks2DqqDgRnofjzWyW1XQYkn9V6axgDssZmo5di12olxE5DaSTPEwA5PZWSv0UlPP6EqzcDYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLoTi4lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLoTi4lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1027C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717057462;
	bh=jh9vG0S6L6OkDP7ySRQCBv9YUQVxI6cgCAoj3uiDGsk=;
	h=To:Subject:From:Date:From;
	b=kLoTi4lcz8MmIuopzFTPXeno51gdP97bgznIvssvwQL+HrH5gJ4JvBC/Op9TYkQfQ
	 qbdfUgKpiHiX9Ije0t2A79wA4xD762Tq66B7Hig1ge1Db6hNo6GiQc3+IY9HIrrtbQ
	 v36FSVrVYgaOavfP0laARuLWbSogScUo4DDiygLoFPXh4vipliaKiJiDmQYVVJRuJM
	 FmCG9CUblm6H24eXTrq4tyK4U0Ubn13rUuoW+QD95aMZ5E3UqCtYoNGJNoOidJSzKe
	 1ijI7VJUmUZZ+EjY8tRvt/hUxuPG/k+8hjiqujHBKpeztqLnvOLpnNlvo+GwYPAZWV
	 kVvRDrxDjdxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA3DC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171705746277.1490.326443730551008743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712f7fa14c04582c6ba774d078abc6f9d7a183967458b401585698d5942396dc
Date: Thu, 30 May 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717057462
