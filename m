Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F55D253F13
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756682994; cv=none; b=GqRiEnTL3sYKT8+qmkY6wVX8KhGALPqgadBRnS3ANqzakyoQBiS4IYnsE6Y75cuJkv1uLrYMsKnDzyyFI/58ceL9tr+gYn8LsKXZs5LMYLwO1c1URI9GmQVsTalh4zkZ7JXuj47NO+XTv+csT9ZPsXoauR90IO2rXi9P5HpWd7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756682994; c=relaxed/simple;
	bh=047DSnTsPVX8+WqU3ulmQcz6XtKIQr3rN+3BU44RKRY=;
	h=To:Subject:From:Message-Id:Date; b=lamhCVMDiAx2g3vwu3UkwcvNquoVwijMbizuLU3Mx8cMCNXnaGYyb3eoeOgO276b/UzGlDPFo3tsT62Dryr4DZxdegqaVcThec7ehP+MG3X3yhGV7ZVSEf76yQsYg2FXPVZaFwIjQrQhzEfUBfESbzWhLQ7Nonz8/M4Tje10V/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RetJIVTX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RetJIVTX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C97C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756682993;
	bh=047DSnTsPVX8+WqU3ulmQcz6XtKIQr3rN+3BU44RKRY=;
	h=To:Subject:From:Date:From;
	b=RetJIVTXh3FgA8HAHrz/oEY7cDQvqDQ/NhazDjKcFNWBXzFmkJ2Q0bRWWnofA2H9W
	 0HbkGPPMudLiW2cgNxf85J5mPuRGPYke6so/15tVqJlxZdzLyqSZUDDIP+eC5F1ys9
	 tWqKqeDBSYB/Xz6zvHycv4jjHXuBO8I2gXjIJNVGuVNep3jQjzMrsBlVnBgvvJK4cv
	 cVP5zkf0MJWOYzJQrg8cXacs56jnat5Z3t5YlvWqaJ6t/qDgP6KlBBKaS2/vnwarL2
	 VNFIYuvNUQsvvKrc2W1iTDvpABpMJeNPseIo1UmKXwk+vFGk/L6H+K0R4dc6odzZi4
	 Edbk/nm8FMJ5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93701CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668299358.4256.15859262026146587956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43809dab9316ef7081aad655705f42c68e133c5f7e8e37d44e52af143950197
Date: Sun, 31 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756682993
