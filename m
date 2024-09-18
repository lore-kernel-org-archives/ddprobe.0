Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375B97A15B
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726672554; cv=none; b=DHvv2qr4oA6eXN6V5ajjeyCLZUppCzZlpJnGaonKl5HQvPFsL9L356q2ejJnnNHej31WKOt9toNyFeoBYg72t10loEU+L9oa5S1UqMB1FqeVsFQ62liG7W0tfk2ysTAogqutHfWOcVld4BRA0flVeUgPkP8JCN433Fhct7ud/Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726672554; c=relaxed/simple;
	bh=dwav9KQ1d8TJ1Ov/RFhfdtOB+Qsy3pVQgzBsOjYlLb0=;
	h=To:Subject:From:Message-Id:Date; b=MeEnkl+Pcqte0qFmpA9zJWuEWOXkghCKESJsJEgttOMZ7/E4i8+LNehGNzCLdbVkN68jGrjqwWF3AyDTf3irZfkIAPWHTHxH7+Ic1n3sNRyvX8wL+GL/ou6RpbWq9qKgoH9RncGu3mf+yQkcgM96nXd4HdFKiMfXaBnkG3GMTls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEPQrIfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEPQrIfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE403C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726672553;
	bh=dwav9KQ1d8TJ1Ov/RFhfdtOB+Qsy3pVQgzBsOjYlLb0=;
	h=To:Subject:From:Date:From;
	b=TEPQrIfGoVkwpH3VdGn/hH2cuubU7yBu24FGgHvGzMhU0YcC1Jp3i5NaOlQ7AijB2
	 pfnbF7fR+qkqNGcO2NCKH0v34rKP9Zaqi/JAcPOMS24XpaYLZmdu6wjq4+WdxWaQIs
	 spz55Hy+YDDwbCFuS+CdtiUpna4Go8jvQVet7pKVNMs//2nlcz06K8kfTgVBlTuRq9
	 CP13wDxA7Ml/pccxhh773Gpa0GdagHXuuU9+TBAYV10ECmttlIMEUhZBRqBQfo4Z+h
	 RruKrbSeKOSOe6NC0yUnq7ThXSKH7PT4AvzxUyIaXjV/ZVU2K9LCd8tl824v0TF529
	 lQwAzQEBPNRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B30ECAC5B3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667255362.27459.16530178058294341070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767109b790f08c278a4c7f1a1325f3ca15f411696a39fe8b069db4697aeb5dc7
Date: Wed, 18 Sep 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726672553
