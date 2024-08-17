Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0EF1422BC
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723882554; cv=none; b=E8YRhSc68M8AEqg7daLBZOGUwpxGllaVHslGkoZ78BRuJBKGFOufVQ274ssM6WhO1mqmHFPFf8aDdJUcSNkpufddSDqE/QZbE5HNHaFMNILnW8LS0cyLNQe/Uuwaxr2pJOcyhJAJ3AjbdEUPe0J9YwxtmpuDRn5ZyBpq5w/oZ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723882554; c=relaxed/simple;
	bh=p+zRcYYwOfBVf+6SZFxIrJXN9QgZ6Zk2+qWwPSrJQRc=;
	h=To:Subject:From:Message-Id:Date; b=P0Nv5OVCCgalrmT1FMdQAdR3km0mAWbmuqM8BxQWW/UZ3PGPmNhHd9Hym5ym75ayFZSp1NvePGHuKRJ+eEALqQD4eNPbdMSZ1rJNSx9qPDsnx3SM5qRQGCBQC4QN6rPNUBbctiO0KXnF0mlj/5IW11tNruZH9e7eI2l/NlR94d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VM1q6QLO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VM1q6QLO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B42C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723882553;
	bh=p+zRcYYwOfBVf+6SZFxIrJXN9QgZ6Zk2+qWwPSrJQRc=;
	h=To:Subject:From:Date:From;
	b=VM1q6QLO0NJ9FZiXH2x16+m851gacFyfH4ueEM1aKgbrgKmsDaW1ekAcLOp/awy04
	 WE77zKkhDhFb7Y3lHjsCQKhW+AFlFR9IRKPMEoGbAPx7ZQwuIZQyeENmC75QJ7bHXp
	 h1+ioOI7D20fz/FeABfZcMLNL7xO3igKfiadB3bJCzxMMqtM0GJCydy6j+WvkiChi1
	 VNtg+tFQwlwlIqHe/cZ/bs/zazJgazXKLC7+r5Vd9wQxm0jtNklzOwY4m76f0X6chP
	 oARtCNdyYT/hGXDT3vNXrxHOhOL/7w/4JDtu6V2L6uxHNPkc7bYK8N5KM0aollSeFl
	 mlC3Cs3KllfOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3AFC52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172388255360.8719.2388458810658360629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e60eed42917127200bdce8ce5fc9ee423b9a97447eb77cd012d084160659c6
Date: Sat, 17 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723882553
