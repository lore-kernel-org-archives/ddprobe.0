Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D772F430D
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749783595; cv=none; b=ju8BSBieeHPs0jwybBodT5uHvlSN/74UaYAMGiHmyDpcEgBHa9cHbGG8QT6jNtCA+jwH5/aMt3HNWTrwggw9Sp5USW6ak18EnsYmWnQe+7TKxmKbT2nBw8SFaQ1cRJxNYvmxnGTZ+ox9X4YGkegZ2oZHph+ov/yfUKrOddEhPTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749783595; c=relaxed/simple;
	bh=75jrfTKgJDq3f+jRkek1hezOlJBNke+i3sjzSTGcuFc=;
	h=To:Subject:From:Message-Id:Date; b=cT9LgUudkbCXPNsuV3oF3pvRq74RkcGf0gluXG5ZVgEz/gjUU4gtplGKaPF5TfVfD6fRDb36YQ/WhAMRDWFjBoKQ5/ge8ELKJl0SiZ6Bb2uztnp/DP2uC7gyZvt6udK6+q4e3hJTrRINQEurl7h1ByEMIpA5zv96E/y7BVrbqP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mvz6wJ3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mvz6wJ3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A71C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749783593;
	bh=75jrfTKgJDq3f+jRkek1hezOlJBNke+i3sjzSTGcuFc=;
	h=To:Subject:From:Date:From;
	b=Mvz6wJ3DsxTdldckgvQjo8Gx02uuDJotP597RdJjO2tzOAJcHHWlQ8V5jy0gd/rSh
	 mUZhahTheC2u5sIqBw26+JYf7rXeyYRGVwoIyFYN4Jyx12IG2/3Yp4JkQs4ItA2w81
	 xz0FuZSdpCyG2wTH21JHhzKnXKBfSm+908g/4KgaeOXaOQ1EwHsTwRCvyPYGtoRF0M
	 Psd8Pwmc5hkGSTubxjdGcdC21VU711a9J8syQcHkdn1eEuouVJs38a/UeesnBNnzKx
	 CfSgT2j6ctX8AXp2hWDwXQhduGiOsbO0ng/MP+OA4sOjQDGYs7aJ0iEtul0wckbdzr
	 lv67gdL9IsVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91635C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174978359358.31857.8907322291367075153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00dd2247b8c6b1b6696e7f5402e6f9722db241166c29ecfe38fb169f732b0557
Date: Fri, 13 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749783593
