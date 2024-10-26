Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA652F36
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729970154; cv=none; b=EEr4+/65GrdTwcjNBLY4SpeNZRTXPtgYBb9FKYKufRGNTsVIYsLiBPprJnquDjqGqLCdspmoHAYPdpOxr4/Fin4TkTth4DYStb9TgVAyeiLA6CSHSUrR1Ky5lWt9Ey/L7Ss3G/vu4eq7n+UkrvoY1BV+RZ8MRbw0bziu0nb7MZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729970154; c=relaxed/simple;
	bh=Oqn8KieSkqmavODsmPhN+/w76ERiLv66YFVBk8OFgRY=;
	h=To:Subject:From:Message-Id:Date; b=U7Nm9Sb7VrAvFsb0fI4WdtlPEI4fyLfcNtvvJavCi8Y5V3zSImHPrt/3MAfPgrLKmHT+f3ncR7fb6zeEjJA72LFzASjCuK0vTeuA0Ga9N7mdPjKW95nmaXgxtqdHOWu9HvHxihYoalT+vyrYnFIJxNy+/szvOh3uzk2AUP8qcvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEPYTFcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEPYTFcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17E0C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729970153;
	bh=Oqn8KieSkqmavODsmPhN+/w76ERiLv66YFVBk8OFgRY=;
	h=To:Subject:From:Date:From;
	b=IEPYTFcTwMJMPz4C+T9PjKJ6tD77C8GFbohQEmEJCqc9XDYcsyjxncHRdRi9uSyC8
	 txT1qsCVwcpNwmatoiDyM2RGnryuXLEK+WMdxU7sMcUHnJ7RjYlbxEKemduYwEPIVm
	 pe75JlqtBwqBJC195yfrzeW+tooSILD4reJhYxPxXzwXETDXJbdnvSa/dhArIEuwEo
	 vcNBM1tKqcc9SZDvR52uJlHUKFDf5IxbIWJeEaBKUI4cx0udqj4mQeDCZoHO9mvAWC
	 GkBsGYxz9odlQZ345R2pMCySY0cBqPpamuk62HIcOYWvq2fwWB/c1OBzAFhoawY1ns
	 su8ljLIdOIZvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B23D10C03
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172997015359.5329.9108938861162268791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9838155837efb72a331f10acfda95cbeebf7e7ed36db06507daf37b63763e7c5
Date: Sat, 26 Oct 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729970153
