Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AEAEEA8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783213714; cv=none; b=Efvu2Ktn0dCBHNa/+TJc0YfM5Q3K0uf1w51QwpxyHILXywfn5f2BUwCKEWTuA4QVUG/8bF60GtfeCNB6IQOjPNI0OqZmVdlNwbFt/+vw4uYSqy4ft7LyXI3lD+OLCECsc/j5saDwW4Oa0Kt8IT0xwKd7I2m4byrXzzvYuyUyQk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783213714; c=relaxed/simple;
	bh=YorJwLYopjb7/JXTjpa+DQ0TGLJMLANCUGZoab6X/8U=;
	h=To:Subject:From:Message-Id:Date; b=osdaRn0JfWvMuF88IDSZC7Je1TsL9JB3mHR7FpBj5v7L07Cbh0y0LGzf8WzW1ozbOUq34+dN1JdHjTAJA7xsGSfOP8ycS0J+QDl5hCXHWqxYR6xwvCSjNOnA0F9t2Xoo4756KK5tbiUqNq+anspOirUJAI3AKEjEQxAukOFaG8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfHW4g6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfHW4g6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAE8C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783213713;
	bh=YorJwLYopjb7/JXTjpa+DQ0TGLJMLANCUGZoab6X/8U=;
	h=To:Subject:From:Date:From;
	b=AfHW4g6f3ijUxcyDlEqo3ZMn9aCPJFtgA9S7cjUJolrkPYU1fei398yPXY6ms1LAA
	 LWbVk+jyT8NKeEw2X6f7e86fwKASdV4gcDhTxu/g3yIPJZw015MrBhYSnVzu0Mczfz
	 vFWFhd4pNmCv5FkmMxkWdVR4Y8QWPQGPm1zsCJDxN+lMw8NE/nlfjbaZwRmfJoqduU
	 cFd6j26qTX/puqidRla9wcwgRQDvuWS/WIoNhUtFznQYICyjWL1JWCkkIVutsVuZPF
	 EucJsiZZUPVdaBzUjplc4s5xOU2mL2zPA//EN9UwuddHQhVdcnekTAhUp39dM1tkE/
	 MYRv9uWpQZrEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA393C43602
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321371368.19910.14472924851460625250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b2f238a066f2bdbf19fe37ec26c663d4b7a7d2dcf028298e7741edaefb93124
Date: Sun, 05 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783213713
