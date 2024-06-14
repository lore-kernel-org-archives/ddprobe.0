Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F93145A05
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718347103; cv=none; b=rHxIwMjSHDZNXDTan+KaMAoSYHpLbZc9u/2VzurFJe+vAWasIRlpRVccMzFUyUqKVfRIDkkW6650geWHetaXOlHumlfgsXyUJY16qv53ZXUf/hrY3ZsCboQweY7pOpLS6U5n7z/Z/LIhGYsNH0HWVNKIfsxgEZrE8UXh2UVWLMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718347103; c=relaxed/simple;
	bh=7r/ca95tOeJAeaC+mC1UgJ2V8V6sbERRpVKNmp168YM=;
	h=To:Subject:From:Message-Id:Date; b=VcufLHufrXdQJjo/m0xLbzmBUfRHlOtglMZYojYwhVogXMM2SibhyE7sreS/H2MLmltZGy16AFBedxctFDPjawyx31wap0H4w3Y5dSSA1Y9HDzVUMfdgXr9Q627/kGX1rFk6uBF6WoQDviMko6T6mBq5JdI3qxiSaL9tQs/uUDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ii+V9QdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ii+V9QdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44B0C4AF1C
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718347102;
	bh=7r/ca95tOeJAeaC+mC1UgJ2V8V6sbERRpVKNmp168YM=;
	h=To:Subject:From:Date:From;
	b=ii+V9QdSPiaXhgKAQgD8TqfrjSnMdD0i2msGV58MWEZS2YWsWRddujpwokYWMmy0q
	 XSGhPnUm6pYOp9BYocBMryTuTceR63UWlFYlKOlIt8VX3gAlgd+jqqFP+MUgnU449L
	 ajNx8szoi0EB8o9MoDGUV9xSi9qfY7uL/9hi+ThrslKw0NGoFHZ4I97nqb9/EXrjt/
	 rWuGO1fmosZUFUt1SGKq/igE67piu4VqY9vvl6wPD/7i1XjkC17x4cwSjwrMJO+3qU
	 OCIYK0kHaNetSFeO1aKtDdzxSoZS8unQj8+pqcx/Uv8qGxi+gVzNDDVrQK59nDN376
	 U+wLg8S1RkmYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C074AC27C77
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 06:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834710277.18435.824829659931703698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6cb4d77225089e7714bb4c0beea63c4cf2f1fc31ad7e4ad051e372e0cd2b8d
Date: Fri, 14 Jun 2024 06:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718347102
