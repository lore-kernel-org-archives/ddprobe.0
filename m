Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCCAB18DF69
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725965153; cv=none; b=hIv/q6I5ZothbEnOMiNvKHTjT7bGJx7piDOPcnm8rHozeWHubtot/lOsRSYaI8ERkTZRoTyE0yqwdSZLWL8CQRBKpxmnmmkTDc21vfrE+RaLvBLTO2noWaYlrMyZnz5XzIWt5/sytkNK962ZS8/LSXhO5qrpUZXyB/v9l2hBdHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725965153; c=relaxed/simple;
	bh=e7q9Ia7M8dOnPm0s0nnheVS5NrOHEkMXABy5ZmkYw6I=;
	h=To:Subject:From:Message-Id:Date; b=Uwe4x0AXAsOP7KDs2JHNBqRAX+BpGZOcyLM2AeUIFd6ppKR8bFEIhX+THPeX06Qb4ZiDhFPBMlLs9fq1hngscrI3YDsQ3uQj7PpaptHgO37l1YL3hv470yJrkulQEEoAozJS2M89CmOuANseo2hVGc5shfjmzlyfrF756WNO+BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmS44AZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmS44AZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE774C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725965153;
	bh=e7q9Ia7M8dOnPm0s0nnheVS5NrOHEkMXABy5ZmkYw6I=;
	h=To:Subject:From:Date:From;
	b=gmS44AZHrs/xJnRJGnYiEEl9fJA6Pw+Hkcj2Id3AyKOpJ2mllQuGR9MHDnSyramX8
	 RJPAxDX2bHx4JjSzZ6ETulAZQ0FLjhsfsm67UPU9uPuk7kjaH8QgjA9JfLUVDMreID
	 fCWfrfHBHQxtApfoDiNTOxGtYYQTaloSZwprcPRX8AMmcP6fYiqwZlRxQRvBWZbFgG
	 A3rrTYPPmz3XxT8BP7j1qpayug123bVg1YUB/mezW+OrnVUnoXcDl4tVFvKC7Np9Lr
	 sYlDp8hsupOGoF7rjH2MaY9hD7eernaF1A2SUc3g8aTwS+qlfJU0GQzPDlrFsd4Tlc
	 9UZdFmy63NZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B40AECE564
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172596515362.15445.2425827505391009595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473a66d6393d75cee1f75d76a27fa73cfe993439ec59efcc75b477bbbf7428f9
Date: Tue, 10 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725965153
