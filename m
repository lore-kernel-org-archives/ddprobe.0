Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772F651C3E
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714291343; cv=none; b=GV2BHbA8Tv3agj0FguQ6EAmO2N0rbKb3Pd7dM93Tpu51WwCR76KznW39k6xVbuXJprFalYGDZzRwBhrbkCIWbqhPchGVDP4PfVbWj8qOMtokf8PORP5Vk3YR3e+wz14ThGZhV8wkxVPF8olV2QBru89wBlyf4bI7/q9voz4hIVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714291343; c=relaxed/simple;
	bh=bsnwWpZitU8rcL4tlTnfIeHRbbRsV7UDxY5ELuKVzwI=;
	h=To:Subject:From:Message-Id:Date; b=Go9jjEgPVd8/0tpgRp5ZFZNzxaHT2wO/PzkMkJX2i4pDEZNO4hPfOwV370KWWB/zM7kJut8ALnIEwjPgFE2U5Cx2h4JHI+ieX63cmZ6xoUnpHKHaaNCSRjL9+tRjW7EPNHPVmLPRRwX2os0yXNEIBspdcRWtSLZAjwX8w8hzB7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tk14xEkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tk14xEkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F7FC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714291342;
	bh=bsnwWpZitU8rcL4tlTnfIeHRbbRsV7UDxY5ELuKVzwI=;
	h=To:Subject:From:Date:From;
	b=tk14xEkx4RKosFEk3iIIkepUM+ifTW6ld4bOt1/uLqMiFSCLCWp7Is1Glw6xc15OJ
	 PILAC/GEGV5/NuoH5wj7IYu6dN785+mSCbEiUzuFH8Ez/BFLWNyxGeF6273OHRRK3H
	 hQJKZwP9ehMIyt1aACpnZUDZkgnV2ju0zCqdVtR9On0X8F9MYxoRYLbMPOVckDS6kU
	 Hknt4uPcXIN1qxsI9Iq4Zvk4z5asragan/lrp0GamR9UH499dghrHFx5O8t3wBqBKd
	 4nr01RjFPHmN4w+4NsqYim0tcFYUx4FOIwni8XJf5ledZV9cIKA1nQiVi0OwSUAF46
	 0V6s0zA/4b5Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B3CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 08:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171429134277.15941.2457073691147406045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00d6d36d86e3610d2046f3303597ed165c08270d52de92576774198213a22c21
Date: Sun, 28 Apr 2024 08:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714291342
