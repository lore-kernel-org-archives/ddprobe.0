Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D891F76D5
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737101754; cv=none; b=YUAyB1aVkOkDQZqQ3dsPJunTM/utsq1bnoi3FXla+s8j41PkDnSudf/R1imA+K/MlGUCGjFZC8xDsWHP7W9pPvy8lYENtboaELH3jvfts0/mqfuVuklHxzrVQLl5PJY9nRyaoWxSqmSWOOoLULI/BwmuT9IaSumYKaCDLlklkJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737101754; c=relaxed/simple;
	bh=d+ODw5kTsdLUznqS3B4hjjCQdr0dNFM9045aerITDlw=;
	h=To:Subject:From:Message-Id:Date; b=o7LVH+uJHhGJ6PBOgajeUyKz9zdYgNthrFyow/D+/LQ+GDiyqXh7oW8eOgkjpNB1G1rk727E6o9PwnEjos5j0W3pSiHBs++J81lXnUyVazRIPLB+vv9Fy9W7Zzimb3ePEdk4Ptxtj0ARAgPBtLPpvdeqV5sEwV+QeTg+hlDHsfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r65AY2il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r65AY2il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FFEC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737101753;
	bh=d+ODw5kTsdLUznqS3B4hjjCQdr0dNFM9045aerITDlw=;
	h=To:Subject:From:Date:From;
	b=r65AY2ilWI0ekuvR7V/tvvDJFRaFKgOVYOxryM2Km6DpeR0bFnkh+p90opgyW1FTK
	 Id3MbjUoCiIyU/bH4CGkdJ5reaV+dp4vu6u1RWsA3Z+Y3pr6YbRfowHPaSL3X/sfuE
	 6ftJ3Leb05lsTDd1f7ZFZvGMA9fXxotSn31FowJJBd4HU5X6Jta0LJpf5Ldq514jOv
	 toW0VvV4Q78IfGULneLnw4TGm72zagJ0vcXsghKbaBHjNIKJz4jh6OE7QTKvNkavhC
	 THEAwP/qaO+VS7BKw+PMjjZMRgG1ZPUL47oLwfwHy9c2otNUpGzKfH0wBDML0k0GCA
	 UM3XKIfuWr92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900ACC02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710175358.15774.6376753918396061035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557e725430510fa1e0c8e637e2b92df6f84538d1f9c6a30ee2bc29e512f17bc0
Date: Fri, 17 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737101753
