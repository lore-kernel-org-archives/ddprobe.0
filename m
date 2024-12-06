Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9BB20627F
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733503554; cv=none; b=Uoso6PRyA4gvgFJeIyY2zhLug/bGKj8hoEJDR23RmdLVI/U6aL3+nfVnhoWbMBh7tDiFBFtjDr86cHW1nIzU+Hv1y8vJ618k6BfPSIdz3d8NYlD787xM76ONHcdnYwgkVjGBe8EYt7NFp1xo+CZTwoUWRfMBvwXqv9irp4ckBKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733503554; c=relaxed/simple;
	bh=soym+VzL3cHbXYExNzOpK2cmlwL7p8mDuyi9Xb9vEdE=;
	h=To:Subject:From:Message-Id:Date; b=TI3FhPF0ujiR9GLFlhhSrAnIVrbKoG9BC4aPyRiveLVhHrdF1jHEeWvcOOe4zHJGhgkxhXszN9PvjBiw/EM9Fe9cH9MMBU3Vc4emYASjwEuwx2/eKU1a9o66GP80Jw0Va+dq0VmpKH67eY73kdqPYd+fMWOPMzgHov5zEMI2tvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQI6Wkwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQI6Wkwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A675AC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733503553;
	bh=soym+VzL3cHbXYExNzOpK2cmlwL7p8mDuyi9Xb9vEdE=;
	h=To:Subject:From:Date:From;
	b=cQI6WkwzYJ1/4JELim55z21znBVUp16ogsvHqUCfk7OKGXgH6wdT7WrUOQ6WOLrjJ
	 qwGwNiXXyquZuwE0Nsjw+chEUNR7G+HnqISBL6/Qe/viYK4lE0oSTtTajp5z9mOqkQ
	 oPvqukGH4CpVyQKKs29Y08sfksCKuivH/1UUkpRMAQi4Wn5zTDFpHwqDvpzCVlfinQ
	 XqgLpueg3RwsyQyBOlZcybTAC50HgSfUb+sJ+9WOPeXp11N9fYOVpYEjClOXZ7Y/ip
	 0osoYXnYbulxupCAb2kyC6RGu6APGDwL8P0oz6qUrTmykF61zz7yBj6H+WDpu5LFCo
	 ruPmCxdjbA1qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950AAE77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173350355360.24979.11615201766997538711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9683e0fae42fba9c07ff55ce67be9fde4d90904c392818049595752bc76ce38a
Date: Fri, 06 Dec 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733503553
