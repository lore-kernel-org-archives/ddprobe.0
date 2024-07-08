Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FFF3D76
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720407383; cv=none; b=uq/wa9VqPGTrxyoU33rDN61Feajoqqk2NDwi1uHLWiOfbTq3ewkEQwBMj0Prn9DGt/DXSfjQrKqgWv/ryHdkdkzrve28z65+D8UjAfdflziM3aHEY3SsIrIgBaGfXabqfAk3fmFSqb4C0BQ0vdU082EELy80zqSi77rZ1egNVgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720407383; c=relaxed/simple;
	bh=aXGzB5kXev897/QJOzWrBTPzEP0LT+kAYZjow937cso=;
	h=To:Subject:From:Message-Id:Date; b=owKLaRwcjYLRIN9ysRe3kIDiUWWCwsluUC8w4YHawvc6p0dvTfuzwcY6OlCY+cyCAKVzHGLSyh5lgxlTnX/2LmA+o0aQxO6FYNojqsnLGJD+msICDFY2Eig+omRXSvnsrn0B7OJHPRINT/88FGWN89SdiNHRIB4CuXpWJsOeqnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2zFadWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2zFadWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8899C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720407382;
	bh=aXGzB5kXev897/QJOzWrBTPzEP0LT+kAYZjow937cso=;
	h=To:Subject:From:Date:From;
	b=A2zFadWfMTVAAjd75DDurOH5erbByMY6wrY9xxfSFj2BLRjQrBGBLruG/KF9mGlau
	 z5u7ILTL6AqOgGEyVT8xkjZh+2UDBKRDJQqwCU0g2hU13E1t61Qvo8lkv+IRxfr6rE
	 jsrSVZ4fz8RHgDoFkUHtg9jp0dNrvMVuIDBTlS5lgULKLP2Thr2YAPlu2dAFij0SKk
	 KVsVfKkS4K54H8G+CAQOoJwY3tsBZym+mtAYoDBv8zMH3hRYz6wqi3ZSznoteZaREq
	 VuvQqMuyoP79A2rRr3GKR3aierI3lKIEUR+Z6DoEKHI0QHTABa1XrhKt+y9VGZKHNe
	 qjZeUEZYem2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD8BFC3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 02:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040738276.32138.3962339738847554591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d8afca166b01123e8cb1688d38354cf9b27f4f68507ecc2194d3a75307ad99
Date: Mon, 08 Jul 2024 02:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720407382
