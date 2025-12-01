Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4AC2BE632
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764575574; cv=none; b=WaN22QqEw5Bgkfvv4Yf2vQwsmO9nHLIwaTqhpMnxNzmNdPZI/MoQwnOEolx8pr/Fm4gB1QF1wZiwrQ/5ucDm9rg+fTS9BmKpipkdAApX/0PTwrvi1BtEbSIglnPg8Z/0lfowXg3wgiLgo1Vhs4coltj2GXaI3gzbup6Ri5uCv8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764575574; c=relaxed/simple;
	bh=1jBMNOS4jbt7c9RD1ccsGen4Wy/bb/ESsUMaaTZlocY=;
	h=To:Subject:From:Message-Id:Date; b=NXa7t5/TIqlSYeg2p51ktY5VKI7HaKImyVrH8Fv5c0zAYC0AFPUbin3ul7I3ayY7YlnkEE7iKvMwMhMc05ucKmjZk3ys+lreRUz/k2ymrfq65L/1ypDwfzkzQ7L/aqQLMHe8UdIfwbfp7hsy/MKIrWR49UV6O1Mj2e2W8U697kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4SrQMxr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4SrQMxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADCCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764575573;
	bh=1jBMNOS4jbt7c9RD1ccsGen4Wy/bb/ESsUMaaTZlocY=;
	h=To:Subject:From:Date:From;
	b=k4SrQMxrpR+tv7GkCw5Nh8pHYGgI2bdNtJOUN/gpcyDSoYzVXd13mjxVopwVOZIZR
	 mBuuF3OmvJ4FaxJf6khd36mb2kcNIJY1IBHW0Q3iPCVrUxK1YVqnsjKiqwg2vyb1Py
	 jKvYLVjy/tjH76aYfc0r3yqrcvH3JoTDpzDhLavn7JwleWm62ifYJ9zV0EweEyIRLN
	 1Q2udPdjG/0NVYbMoWtTBHT+1pAr6vuKcffmU6XrBikUNr0ZQ+r9UiOSQaRQVS8LAM
	 DSTX9SyL4DzxiLFdIPBrIUvxDdmscd/uy6N5MMTJiDW4n4onb8NTw/qpKNwz/bOVgP
	 r+Plsx0LhZglg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C809ED111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457557377.28490.7944445244266255535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04cb1c6cca4335dac80891489bb5ed5ec5c925b02324dabe8dda031a7a38fce9
Date: Mon, 01 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764575573
