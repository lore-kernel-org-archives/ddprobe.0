Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A60E21B9D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765900434; cv=none; b=OHE5oSieJ7Ma9AI8n20cD9WLYvRK2kcBQhOh4Aj4MS6EhOTG9mZPBAcMlvumv/ohjtGZbxyfVSQfGEzzcpIKYvo5b6GhrdXPSyhKEU7gEZsOVn/iJPeAWBh9gtqoifLCKO3sEoJIQD/+GyqSEkELceNUYvw/Gu+vJiP6e6iywbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765900434; c=relaxed/simple;
	bh=X9XmYp5QbCGiVhzYE6uziNOMBgvfD5qr44mfQ5HSsmo=;
	h=To:Subject:From:Message-Id:Date; b=pJbKKhdV4FyOwtYdSTmvBPq9ex3TpqlL7fulwEe7RLAtkc3oujsP5VFk1F781kWbAUg+AwSoQ89VJvnEhhHirUrJplb8maBSPt/aXoZ0Cw9ClITKjHxMPRJj3sBWeD4S3Adl2f9LPWd/1zcoRNQ1xRx6OX/hUkdvPg8m4uYeiUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkyKbpu0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkyKbpu0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20EFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765900433;
	bh=X9XmYp5QbCGiVhzYE6uziNOMBgvfD5qr44mfQ5HSsmo=;
	h=To:Subject:From:Date:From;
	b=qkyKbpu0wEK1oLjSk2PHo4y8Ul8tDw4x56SifPcDpvqzH5O5j48IowmQHv1DxI8M7
	 L2WALcVz+qvpRcwjfxjXGH2hlyOZ8/Gn9DA+4IY7/28mWlbeq9BXkphEwzTWc+Svc9
	 ne86sxoS8Mse6yxu7xLVIbIGopXQCbvfFL0R1j1nWzVL20ZyL5RvFSmRr/4lbvYP0I
	 pvIloOPxl5ltdTP9dZfaV0++eDyGL+/FrPcfV5pRf0/urg9cBZqJlz/QebzbADD6me
	 Da9uBwT51rjhVOlctbiaC+BTDkm53ydDZxXq5LqJnwWlhVnP/84hpW11rnzOiQo3I5
	 o8nV9FvfiRLPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9096BD609B6
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590043358.31987.7978559337710578009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f8fe63195a075216291cdd43774ff61bdb9f39ed9645a2f4b49215a8bc0ef5
Date: Tue, 16 Dec 2025 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765900433
