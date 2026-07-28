Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5138C3ACF1F
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785219034; cv=none; b=PPmhHxwQtznrVpwyo5/Ehqz9dPL0ksY1TWz7LWq5Wdn7OMSTircOMVNRJAmIYUhS0uYB6CYvs5KE03kKabwOQD6nmD3faC+QfHM90LX1Xcj5qMcPmQroqIi8ZuxXvKIiDFD0nWvgDkg6yGJjD1HDoYXL42weE3+IsM3evJHeo0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785219034; c=relaxed/simple;
	bh=48opIFFEjx8jF7hmZECEqEdbgGCpCmdiuEOduv7OmYM=;
	h=To:Subject:From:Message-Id:Date; b=krPmY3OGqmFRkCYB7zk8Yn+ntr0BSQUbL3NxhDaCZGYSQyXQbp8HKhvNO6D5n8H8J0LuUmH8D+RKn6pStdDVR0DiT6D/HGJgkN/sGZHqUl5jjDJCAJbcochnS3cxJzYRtcMRf1QAebNmDOXs4y7gPKjJXXT2DriQtdaXFnqhUww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ln1jRfJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ln1jRfJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E99C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785219033;
	bh=48opIFFEjx8jF7hmZECEqEdbgGCpCmdiuEOduv7OmYM=;
	h=To:Subject:From:Date:From;
	b=ln1jRfJ6ZnLHxtclhZkQirLkEBo2KM5l2CvGFNXpGsmMiAkNUVH1V6JipB0WU0goV
	 28Wveu5BLV+HBWym7Qm/ZdkFoq0laFB+cruKAzK/h+4WM3M3RvYsAbGRjtpc7cLtBM
	 GaP6yR6fvOwVv4f/SiDdR7pZw080EjtdtYZJoihmJpKpBeTlC0IZajunKDSRlhIDzK
	 Xmc/iyd8E7MR7nqdBiHtRAkS2ldGjQUsMVcZSO51KFkVNwwLHmdUKuUO4A1jpoYrbU
	 EyNzCu4qgO15O2N87cqei3iLgSKEesq786HLsqeY+/UtVXV303KNIX2/kJ2Io/GXsr
	 S4L/WqVKeXarw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFE5C54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178521903370.11781.13472187837955261645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8b5ed19cea873127d33fef155f3a366b7dbfa48cbeed12f6e12fc529d66d4a
Date: Tue, 28 Jul 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785219033
