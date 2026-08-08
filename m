Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A53219046E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786204834; cv=none; b=mDJzcIY4alIIfwKiB0kBi47zslnxqKlg3qFr0o/R/Q0EKe3bdLBrXvrFdXfQ7HRP+KtMLCIsBPGk8jL8PT5i+DGGcygMoZ9wvS201EtoNY+xec0PFVYUJQ+JxAwWiq4WAtFSyK0Zax7WbXoGDkoQ8J2DLu1j9vkvneSLPuTc1g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786204834; c=relaxed/simple;
	bh=0MEOE2L0yIrJFeDFO78cezp+H3RRcsTTAgMwUtvtHt4=;
	h=To:Subject:From:Message-Id:Date; b=R1aowWSyqkMbcHUJ4E7iotDgdKAP64qkq+51zO/ENagCGNEYnFX3QhYTVGs8vrLu5fNc/TFrARvkWcp9S8IHGwevxB4dP/tp+OuvosApyEpv+vpG7RFfD5AQf94uuyA+PnaHHzuQmowcLsa/9d9aNT7p/IVjDzZLwQHql1Q0tAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Txe43cx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Txe43cx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64E4C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786204833;
	bh=0MEOE2L0yIrJFeDFO78cezp+H3RRcsTTAgMwUtvtHt4=;
	h=To:Subject:From:Date:From;
	b=Txe43cx5F8nmtXqWKc59vcVOpEVxvMY4xLuOuMe235mD4MunnEhw7N8ZD6HvaCyyn
	 fMec5h/sUe3Png0SEUVzu73CkqNmYMo0P0/AnSsSFV57fbQHFjzI96nb529XUlu4mD
	 h0QX9YhBT1rdKnV8awFtVJdjyAHmAPFFGGyn/fBGJ9EWTCxLeLtjo0JHW2t8i5G286
	 qjHwjLYhgQAbWnCUw1hRQFNIl8O5xSLFf4dP5D6DULlyIljaYhFYk4Km+dpIViNVzk
	 hcu2ef1XYnGMKp7a6UY/dam6iZm64avY11/n9rC37JqH+1q/Ufu59JcJQGx5aoIFNS
	 J3DbnVeRCnZNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB9AC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620483369.4661.6360034563914640792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8503375d2bb260fa6d4397eb8027b486bee374c2fe986f2b1d584664fa06f8b
Date: Sat, 08 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786204833
