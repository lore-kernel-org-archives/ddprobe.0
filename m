Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3046379DA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765323774; cv=none; b=eqeBMuAdZtnW7f9kArq2D+Z416Ex+IwAO4Q3m26aGCQCAHScwaXRj4lO1a4tH3iuv10NxaRVUjoxLpRz+4Wpw4kG+JdIqfaCP4D45KUN7NC8JpCB9qOyYR+h8fQkKdpHkCFylByA5R/HDBbTyggRnJVsDYRcHkeAf7nDvoHuYZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765323774; c=relaxed/simple;
	bh=6uYBMuP2ObnhIveAb5G/MrFzI6eSaJIt4dQTAQj3GbA=;
	h=To:Subject:From:Message-Id:Date; b=MBwCLMtYe+X7r5VX2col/x84CiB6XTBnINV66hvAYejJsYkgZ22crrtW79j//ZgWD2fStkUdH4QdHI6jXGQbCGPirD+RjUf9WO/WNOMUtb0sEdb3hrfoxl3b3ln3NW3EGdevba+PqAKv1ECMwOVNr3OtrCHu9vURuhaCqENtrtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbmwuM6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbmwuM6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A5CC113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765323773;
	bh=6uYBMuP2ObnhIveAb5G/MrFzI6eSaJIt4dQTAQj3GbA=;
	h=To:Subject:From:Date:From;
	b=PbmwuM6K9CktP9XIlsjvMBVX9olYs/vM5fyewG+ks/LE9W9qBH1PDbMflBhBvSFtZ
	 RWNz31OX3KkPpkRnuHGobfXGmG/7h+T2cUyNi84N/NGoce/YqhhEB3wbjwiNzYeR1K
	 5izAqTbzvZ6HHq1D7B9eiMesghviMKEJ36xaamE7Cq3ZmrcaGR7h9u32uRyXfeyqhj
	 zvkJ/2x+4HyrFxy4E7SXUxGnWl0NjboI2uVEDK419NFxHzNaQjc8M/RHO1lxUh7Lzy
	 2qT2G8DEjyPVl9XDFyOxrLKL3TH85anW+73KV+PEBfufwZjIJdKn5owpxzWTY7bJzg
	 J9UP5Z4XgKOXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBB2D3B9AD
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532377360.433.17666934783610990952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5446a6580125277db971a4f712469d6b3fec64e6e24a76ddd3b7378f9f26a3db
Date: Tue, 09 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765323773
