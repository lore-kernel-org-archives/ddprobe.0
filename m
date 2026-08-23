Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7B71F8AC5
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787527834; cv=none; b=WBpEXtHoUwhsPwZTv1fp9wxwTcJDzjFJljTsaprF9HraO48HNOF35nBWSr+K2GCgNwLnQk4pjLY5mwMReeM1uekVn5gCSaZr60DUB4UBKt2arAmZLITCDoGvj21vAKyzWysMffB42pRWryeJEO+JoLEeUsu+ijigYHdt6C4gnic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787527834; c=relaxed/simple;
	bh=suVh94ZL7JkCmWI+ugXXxJt90OIKVTDwMikz3QcVEd8=;
	h=To:Subject:From:Message-Id:Date; b=QFne381NlHS/1lplU5b0Jew9LzDBfEhxkRaDrBWtKwjKSYclaOeMoUnGt06N2uu/pODLdKKFLdZcKkjhK925LMhgqrz4hoop07VMMEs3tfEjzQKWTj6Q3OCeHX2mZsc92LBPotb5ahimfY+cjapLqpNDVrcaIsIpTR3HxO9iLNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlVBoBjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlVBoBjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE5EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787527833;
	bh=suVh94ZL7JkCmWI+ugXXxJt90OIKVTDwMikz3QcVEd8=;
	h=To:Subject:From:Date:From;
	b=WlVBoBjt/RVqXOLu0FHZDVK6EkXLKZarlb7L7CwFedyfukrMkMKhy4DKR1kftu5Kr
	 fudPN3VAJpOPcTbeKVd3Y9bUPCtbBjQKMIW2DSyBGoti1+QLCXlBbmNDPqW4U9GSj0
	 Sz1ZieYX0IAVfxxzslss7M/y8yPXqkXC/Mswt1enKNFuP5LFkQTvaaf4rwjLHp1naA
	 RZZC9PPRC9Vxyv881V8duzwjg4lRIPUdfzx+jY3qSpuoez/Bbm2+6hEzRmqCmHsxBB
	 /AAXGaGaZ46qA5uIRD8dbbYyml7nJuB+GA54yRepoizBGPa/BufPb2X/IzqYGfvt8i
	 SvS600QU0q0xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B296AC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752783369.20122.9504632873055624863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ae466dc13b90b399bf6470a743d045999b4622b3b03330512470a8b6b34d593
Date: Sun, 23 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787527833
