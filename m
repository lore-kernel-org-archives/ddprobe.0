Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185B52571AA
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753270794; cv=none; b=oc/loFo5G4+XU6jWOpmNv4SraHNNxgBxm4A81Rdq6pNikuq/3/EHJ5wXdQbsvPk/ue2LhDSl6KwWnwHV5x3kyMYT7sWQGe5I4ox5bxxX0WlTyqYu2pDG/RRV/TpaMbOF1vIUsYm4c6s8hxn+CX+4M9I/hgTKBvE9L/QXGNKUUk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753270794; c=relaxed/simple;
	bh=LaAIkegS36q2OJuNnb1tq+E7FgflTv2ZXE0N3Bs3uOc=;
	h=To:Subject:From:Message-Id:Date; b=dm1M+cXEww6NZSov2FTThFBfi3ZyJkzu1qopRiuAO1u0Cyds2dWzW3w96yGYNSk/uheymTKeTfdHQAKXALetScjyCZ7G/yj4WhqZ7zY04Yy2LLV4Sl2uGBPY84PfRM+Ji5hhb4mcoEg9ljZfogCOAKTKh8vrhplNKV+i9y1nBlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UI4hS0My; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UI4hS0My"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D710C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753270793;
	bh=LaAIkegS36q2OJuNnb1tq+E7FgflTv2ZXE0N3Bs3uOc=;
	h=To:Subject:From:Date:From;
	b=UI4hS0Myx+Q2S/xeLUZvpX7DLPDV3tPPFenm7flLk7QJAFCN8KvFWojPQs1EjCFrd
	 57gQGeU4CSKj+df9qtNbZxmze6rpRzaPDiH+pN3E/5gvO3e/4ACgH3912PTfXXlThG
	 C/fgnXeQrAP4z56Z7J0BSJrUKgP8Fk99gf/xSEIIS6HKm/TY6Mrl4TfCpGVnn4G7Tk
	 jxE/4NtODEYO271syg90BaKc2KKdkxPf/q4LNPbteDrW+YKia9IJ4y8l4LZU1vVNY+
	 MRkwNlHVfBYyGUB0DtSggYzKMhQ19YVsdz/Jpt7mOhXR3c5Tapbw5I88KQ6FqY54qj
	 uR2dUL7g0YoEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33EC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327079357.2175.896186198771388155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf26d050d3c36f0a66ddfcca63f45bde13b67bd80cc35f42dbe48714ce0ed8b
Date: Wed, 23 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753270793
