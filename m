Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E4019E99F
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757992195; cv=none; b=tFOnnemlfr87k6nEJBmVbjwh7GCiFKgi4ZXk28Gp0NK0OazIKDO0aWzV/o3jk5OmUnUzRBHiBICX5C94xFhnEvjgXnWFEZFhCm6GCBXr4xt8P9YUlfcius7/wIv+AbfLLEFjYXRbhhC57OTmrLJOn837DlOeM+68b0hxmz/4cIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757992195; c=relaxed/simple;
	bh=khkkNpNJu6OgPidXf7860lCUKoYz5ulqXZowoB2Bz2k=;
	h=To:Subject:From:Message-Id:Date; b=rOESaCbJXJLjySjvtfsGaCHchLOQ+ve745FXqybaZmDHjx6Llpd1tgD47oMYTUNguSJlX/AxPHYXvdQveE2NpiOInuGg2zwue/9Z5z3iZTQY0wSEyDOLXnLS5+7ybmB32EChJaSmWJ6bCmWVggsT0swr1krLrPEXLo++hmcjKSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlwBVVT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlwBVVT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E139C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757992193;
	bh=khkkNpNJu6OgPidXf7860lCUKoYz5ulqXZowoB2Bz2k=;
	h=To:Subject:From:Date:From;
	b=UlwBVVT8SvilnWWd3LZj0V8qlRjaMuKZCXJPnbLUJ3LoklsB1VaFPBDlW4T82qE05
	 VpFGfK/znSsNCy0fJ/1AJFMpArVJENdo5vDtdxzO4AyqMRWrTX89yjLzEglSP1sPh1
	 sUuywiL3NXGPGyV8vErMKMmmRUZCxyiVEx0A1I7zj+jctu93Ieo7XEP21gBIZFCcFa
	 g7XCrrIy6UIvVFg0UVQpQ27R2DfpE27WVR8UPZLt/CBEThiUohcna6f2+OKKyiGAEU
	 6Wq54bFeE8MJd2ee12mW9kIb+oJCW2dBgO0Ps5vKJIF7lMXoSudU1jPC+cfooPZz5n
	 k3QMbcy17ERgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F821CAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799219357.5860.15500773982988987704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0867b9c142c65c02a8c5ed077d3e51eaeebd6bb8b27aec5a6755c0f97681eb67
Date: Tue, 16 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757992193
