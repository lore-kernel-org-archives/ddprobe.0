Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A8630BF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763409714; cv=none; b=jGXegY0bGqi0hXl/a3Nfrv22E+596YK4HXwlR5D8ibGD91oAbwi2GGn11gpL8HS2WDOk1J5uJMWa0FxqnhsBEpR1mzA8/xawZk3ysnPBOpA39mcWR4/hL5fWI8dciUPXpWpiYXcac0znbzFigAtIbYpr1fhpt/mUTE+dgnFPu6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763409714; c=relaxed/simple;
	bh=HIQ0gOljUrlzsns9wXWW7r6Hi667UVUdPaOEP46Y2g4=;
	h=To:Subject:From:Message-Id:Date; b=VTi2JmPR81+ISmT5y54d2EQSZy4nf62G1dTul/zgDMiP5H3jel4Jz2VJHXzTBpCs//p6etQF4uW7KSNSQ1RGrkU0+1XeSe/07XbXURgX+N9ndhk62fI9xVYYam0a2XmpJur51C4y8NJ4HamJ6v/q4wdiyQUK8UUCM2bzMQDG7Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezEaMRNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezEaMRNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBE0C2BCC4
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763409713;
	bh=HIQ0gOljUrlzsns9wXWW7r6Hi667UVUdPaOEP46Y2g4=;
	h=To:Subject:From:Date:From;
	b=ezEaMRNMg4SIATNN6pqMgQaQYYwa2vMFYd1qKkg1x3INqo/SImG66SK2DFngOKnj4
	 DePhvPdShnaXNHjIapHKAQSjFaS+yZPSJ17ziv2NrZypKtQpw/8zcbB3ftf4xYaZ41
	 He9U13VYheFySNiyMLaXiY6O5RMOQcBBzzOI6p8uU39M6d3pylOkf+LR6jfV2+PYs4
	 6xGyhj/+DWetJzsI28PLj/d8OkxGcMfaFf4tYrc/NHLkBD9tiQ7V5L85E3ZDghAJKp
	 fpDrCYG2xWB7/316m6j45TAQorJDvAesxLDKMn+hHBdnFZT4YVNqMmIER5YKa5rHlW
	 7zvJYTjJLbnrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BFACE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340971358.7137.11202340888369051500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11409f6dbdb6a9de61216e24bc15069dff7f06f458dc0ef7db90d953db3bd0a7
Date: Mon, 17 Nov 2025 20:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763409713
