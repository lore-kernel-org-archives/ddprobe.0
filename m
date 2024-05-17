Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600A39441
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 02:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715914343; cv=none; b=S8KGsX/8h78NWlm1s2Zr9QI4JbO/CezxpW/R2GO5wh5Uygg2zdV4XcV/0METZ1hkeHsxFLcFZQ71neX5r65YtsKrn7AEfQw6KJJTYDfgBuUHmC/ciLlSl4DPub38EikRm88SuezzyIp5yQiW9jb2nY69W3f8+LtZsBIguJuUm8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715914343; c=relaxed/simple;
	bh=Yqx/NgoL/ITvqWWoEvK1J1iTdGZEW9DwI7wXijABWSU=;
	h=To:Subject:From:Message-Id:Date; b=PGknWRVTpjqcvdkEu7cu/P232LqOFTro6LrVer6/kbvOhfxqgvx4F2V4vZPhpCYaQwwaOWWZYXmg+6DZB/Br8nhOYfiMMFqIuZNfAxogj/2ZSeKjX8jsHi1RQyJzmxTaZbYnqNSQdPKQnWi6x8v4Te+v4MwBBojGj6OxAvYy+gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFkqniP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFkqniP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB407C113CC
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 02:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715914342;
	bh=Yqx/NgoL/ITvqWWoEvK1J1iTdGZEW9DwI7wXijABWSU=;
	h=To:Subject:From:Date:From;
	b=HFkqniP13p06wdWnx+eJaUaD+uZLfz/yhyWzqN3Y7h0fiS9lQOeE930nV/137Ddum
	 nWj1vNc67M8HYfhyIjBClIk5Rpsgzcpvs5BJbUwL42TJfYxk87p3iIXMRPwo4D7m2b
	 GIdJpLWfIH6kK9+9x7KFrzUmv/ogGXw1lnTfsmS4L4z+UP4d+xrjagx4hnByLioElQ
	 QwwHwIaVV4DJppn7HPYoXU/Ojq9c0eCLi1yqbNJPgBPRqqKXNh5BVj/dqP2csZvBI/
	 d1l4zwWI9ypx4QjQH8WnN+T2BlPnozKQCA7tuyq94i5Pa8c7vhuD7JJcCQjEWcpDlB
	 f6mX1tGRc8vog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26B1C25B74
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 02:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171591434277.11630.6977333232042647750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179473409f91e0d521835c5069e50bc781d49d5da0fb7869ee40c0c0dfb1f411
Date: Fri, 17 May 2024 02:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715914342
