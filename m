Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A64143C61
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750130994; cv=none; b=N5OBbnDEzlIRRUptmLFVP9xc9RY/TUvaC4Cl1ALuCJ4NrwfDn1SAxhjV32hQ9ccFOlksLairuGSYWva7nhBPRlBnuw+9dYl7rKnspFMhNwesT1AAxjwYbN1usHGvUNd5Y3WezzxsAVm7UDNQGsMwo+f6KQBWdD/sl7WU5eRaroY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750130994; c=relaxed/simple;
	bh=X83IEF6KaHHoohBMHYKL4D9sul1oRZeULTyQLfdn4ss=;
	h=To:Subject:From:Message-Id:Date; b=uNAR2oOeSrsDi6uhaxP5ihD46t8hQRvAu+8Cms0+XTIzlJWx8yM2mzHLmsBE3XFBkY6p+bNmPqdLJHQJxFu3+h3apA2aqEoiSDBupKSDgHuXCXFWK1G0JRW0ZsiZfQVDzwtnOH89KqxDrhlNiq+5YrnnJeg4bnjsBJ8c2p8uKBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcRgzpKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcRgzpKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FD7C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750130993;
	bh=X83IEF6KaHHoohBMHYKL4D9sul1oRZeULTyQLfdn4ss=;
	h=To:Subject:From:Date:From;
	b=OcRgzpKWlS+avps2edDaoidW7bW52Rxf/4NxadnfXXd2Ru/3K22YSF3Aj6F8NrAX4
	 EAuw5qReD1Oy+pxOeStGyReyPKJ6MwWu794qLkq67n0XKL5BN8HxvOp1/AxCHnXoGU
	 Pughx2i3eB0K/6hQRHyIdAhoPu/rFf/WRby2s3j62/IVvRHjgxGhapWwGMw3DacYLa
	 hU1pNAinxQPI9Fp29YEsLRD4FQQXH6mCkdCnGaMjgZPwzA+aU5LegTKeXP8aH61BYU
	 E3b/apBe0DmEQ/i67LS2QjiyLo0xoabz/CorSxayq2HnyRlnQmZDGfT82ZWSysYo2I
	 kiBZfLU4ZTZeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A29FFC71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013099362.10416.1780825268435173284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379f2826cc6ea1b0d7fc33110eb392ebc7fe7fa7302605ace3f929587bbda7c5
Date: Tue, 17 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750130993
