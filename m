Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C1835979
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743232794; cv=none; b=LztkUDbe9KhCKHGSV0x6y1Ykx1yvmU3SScsauu+d/r9PcfVuuNyBZi62THV085fDuQ5r3tEj12fSwhJDmpxzu/4T2OuVFDoHPc1fcRXERxVmg/0qVayQfN7rfElRG4NVruu27NCQjMTj08gocn7npt2VKgvSvxqh+USXonCZWbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743232794; c=relaxed/simple;
	bh=lsXqTWX/ven6A/OCDMI0+Rmik24rUrP2EECecErs9Y8=;
	h=To:Subject:From:Message-Id:Date; b=Nfh5Mg61qt/Fw5k1+6BZi+Bita5Lp6A4JV5+Y83QyWzv08kwzc/xC0szNAn+wUeC2Eo/sUgeT1oH0m4n8wisYIJoq5o3iwUHLOflAsoWdKnjBZvpBPZJ7yC923APlXGXr0Dy97AVQDIVMS1r0ENkx/QCn97hQo83cSquoFYZtk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbfvVuX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbfvVuX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41C8C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743232793;
	bh=lsXqTWX/ven6A/OCDMI0+Rmik24rUrP2EECecErs9Y8=;
	h=To:Subject:From:Date:From;
	b=MbfvVuX/cXfguD1E5sbkna95laIPhfhKPIttpX00ZUwtMVK2hApJYqcaT66F2pQrn
	 DNdYASsLgNJiPCyhF+iChRS2f/uPhmKNWu1/NbKoX0D7vZ2YRoAMpZ6RsCoihfEK4m
	 IPQ/KADBHtjTIXCkYAvgypvKkhfPUfbFmCjljOjacljoo8IiBSpk3kbRfHqIibBqiH
	 3MnA6xgYgV0BWqTYcquRLkiM8ftLrdBbI1OhV6St2JQcyZL9tLgRp4J+RDv6NImyzv
	 ud4VhIEmbPB6YzVL0+MeJ1dKV4IcyPHXXD5QjqxCpWYH78HJM9z4jon9FD/cJKX6Wb
	 jb1QMU4wh+cSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93275C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323279359.12647.16418703026486265674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d043191eefc4caeafb732cadf9929ab849de6237ed116e67180206fc5e0dec31
Date: Sat, 29 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743232793
