Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57FDBA53
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750943393; cv=none; b=E1UOXEEjHe8ndyKcpVRrD6XsewannozVHnk3pxXQe0EyH8PbIY2O6EtbY2K9YOCBn6IScW1spqfkKkOYQln7L3ddEooV3G1gbQ01zzEWJIT1Sj8LjiImsaMWopybrghcRQi0Z0TyCY5SGjnqmxc52qBMis+jFMGK2R+5piiTx/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750943393; c=relaxed/simple;
	bh=HWzbMaBJMwjRyLsXOLxUx3Rl7PzpQmEgQkaSJj8hgJc=;
	h=To:Subject:From:Message-Id:Date; b=NAOU90zbUcNQsiWRNM4yu8PYdMJU5efAskgoXzebCArwIPyFkR96IYpzxIu22CzwbpWNDZKu4dJhbcNibFvPKXMsAl1qzYCb12xYoeSjdxw/LqiaaTtXQbL12ZytR0c4if5SgCDpkN61aFRncp5vpSmtg8CrPIo7Mv5Ka21S7VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBBuRw6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBBuRw6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4428C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750943393;
	bh=HWzbMaBJMwjRyLsXOLxUx3Rl7PzpQmEgQkaSJj8hgJc=;
	h=To:Subject:From:Date:From;
	b=DBBuRw6PdGO2fRihawov5QwEWEKkMniJsIvQWVtIBb5G6k5DuyVu4YYGkB2VVNL2q
	 Z+d2jx4k+73ji8+OC1YOypo+1Nrd4k2RtMlUFaVv3HayeHNYPd37riLCm9Lrl4W2OK
	 OnOsXb2j4DA42YhBL0wPRYY6Q1PQoOeWLpMuHOwM8eZFtjLpp1p12RdjLmnw1hF0EE
	 KEdH+8oF/MOHAUBucMxduD1rjb0qdesixurnixcUyM6gn+1JNKJSpyutXhhtlthSmY
	 2DGivUP8PbAsrOFs6omCuOTyWneptSVCpqibM3Xl//la9JRMBDP0owT/9PuGqeX+xq
	 bMrKHTkbX9XQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E9C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094339359.30227.14736268678748659244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f78fb48ea403017c1f94643f1b5de577426b9a3f59ee221be4c4e93c1b0f171
Date: Thu, 26 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750943393
