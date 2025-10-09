Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194A219E967
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760008194; cv=none; b=UVCImVJEXScYcU1c7gBpQrOD049kg8PJZfxE8aqJQkSwUBD+rzLo5lWvvOyVZsHeEXGdKHiS8OXlJEeTV9QrdjyX+Rp7uU4EYsf9FzNNbqflME2gK4fLeTOW0Dl2DVdY4RW13tBSqZ+gzGurgZOkl0ODgOCnaaMG0J8VVAkAW8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760008194; c=relaxed/simple;
	bh=7A4dx8WYQNxo0pqXzFvvipDK84j9i66WdBIGjSHesFk=;
	h=To:Subject:From:Message-Id:Date; b=Zw1fKQlbGw9R2C5Tqliwh50rkitXSAzFpy3SK/Sr+R5CuWn1Kc0C7wMGCTKpitowWloVA+kbJnsnDvOILVkZAETxmVtLI6wj57qvELVh4q2vlLI0SelWQ1M6HEmw4v/53oTJp+rWXX/qeXKtbgsZeUneoYjW3EmDWJVfIcMrmLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdzbPsKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdzbPsKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23F4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760008193;
	bh=7A4dx8WYQNxo0pqXzFvvipDK84j9i66WdBIGjSHesFk=;
	h=To:Subject:From:Date:From;
	b=tdzbPsKMALDMzwubIYVdNcCsO7u4dTnMW5HcWIdIzNySeSs+ULYXEAl4wJYryo4Aq
	 kYEcBRI5Y7HqZpcZr1KfC7eKIVB1h5HNOfEPZNt7r0BVLxjJyhlg0EXXO8/BLsldw+
	 ynINZ7sEo5tQ2rshSorUzbi1Y9uXEgMu1B41wqMm0/aRNgYv+AFLz4G6dCGP1QBjhi
	 ctmxAk3uMQmlwPyJX2WZyiAeI0SLN2Zd1ocIcpDaUpUbF5d0jPeK6Czs1YnG5AbVei
	 Qe1GPnGj9MafGXhy3B5hWR/7orOPOed7GJUI+HqhBoAT1ZMtXbjZ4EvScmX/dkoVv6
	 pS/ulVfR2QFsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA97CCD187
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000819358.5018.2288444266056486120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05a3d77f5d9cebabca36e189b6850cfea4c81a40010f70daa349228d1754fca
Date: Thu, 09 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760008193
