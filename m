Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2180E308F33
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762172394; cv=none; b=l+JR+RG0yxA6QtK6Or4lNwVGBvzsgTuTmTHBuCQT9YFQl5/TRTIY9LkZ00+tM3TZIoeSdp7h7qF2pkvrKZaMVUMx0I4ez9U1OGN5mrGdcxEl49LGxd/CG8arAF/M6JT9w09C84osBUqX2dzmEyKfLRXUgEkp15/+N5gv5XcAJYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762172394; c=relaxed/simple;
	bh=J5IX7mmpMvWHVtqcmEImN6kQJqz1CB8+Wx33RUHaLYQ=;
	h=To:Subject:From:Message-Id:Date; b=PLZy7m+X7oIqPVtKmjBL3ARAYWRug08LtPwa6lSusZ9AWREL2XzrDWDZWrsPhYfEhkfo0dBeR5QBLe1gRYcy02uvb8sMvhUYvvoxcF+wg+39y8hRtbKakoha7AXxgdyFn9iy1ERUWZ4u6nyyjrj1I09mdtwkcilnBdc1H2KPgtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ojmiy1B+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ojmiy1B+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C27FC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762172393;
	bh=J5IX7mmpMvWHVtqcmEImN6kQJqz1CB8+Wx33RUHaLYQ=;
	h=To:Subject:From:Date:From;
	b=Ojmiy1B+jzaFSiIGTymQ4QYFhF7nq5fU4ZEB8/CWABN88Wp28fJGT3E1GIo1SK2j9
	 t2yBHifQJYf5bBZ9pE0itshsHHBGmO90Vbg5wPnMEz+r/c0pX9WacQwMTMZoIMPkPg
	 1rUhDugJc1inWPTSXxl/UK5gDU4DEyNZlQ9C6lmz9wVg1/KIXiWqbfQAjp6c1zElUX
	 7hoeB2g2fO0WNvVbRhuAaWAGJsnEzGtSWKZePnoKbyTE+rA0UeIZRzAQSWTwn4lykA
	 e/RSHPUNPn4RspvwkylBKKLv5YCWpKc9e8EpkrWsZeBIbbWYts2++hoHBIXBwVUswP
	 7kKvRWA5Xnucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A3CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217239357.31131.16376779120686942801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e34222b8812c28915c7d35f07a8d0584fbfac99d48b3eb1d72791ab3b12e9a
Date: Mon, 03 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762172393
