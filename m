Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C3912F8BF9
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755859794; cv=none; b=ti8M2ZW33ZAVI9L2qrTxpVbHlXvU3XY69hbb0RlD64bv2HjESqgRBSlg0MltTv+rzX1WyCUCMl0bfdihTVIkRuXDeneuhK4SVeK7uCRj3kAIAm1iEUmaobqTuWIrtybUu9f98p6S6y10raW+XUpejQ3qa3jIqEN5eVvUtQ/Afxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755859794; c=relaxed/simple;
	bh=w11LsDhSnf7VtkRQWQ3VCGVywLDRwoztb60qyVssyEA=;
	h=To:Subject:From:Message-Id:Date; b=jrMozB03xJKjMI0PlS2/pax6AKVotfRt1RdgMlVpzSx4m9NgZSjZ4wIdRUY2Ffn3tQmr00yylscytCRX85zc69D3pYNtIReB0SD4ssQa+voiGkjxN2aXupyaU52FlvfspDGhl/EUVrlWYOdms5uEDA7Q5dejH9YCWW7Veui4ZCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfguee6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfguee6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C1EC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755859793;
	bh=w11LsDhSnf7VtkRQWQ3VCGVywLDRwoztb60qyVssyEA=;
	h=To:Subject:From:Date:From;
	b=jfguee6O2BdfCdi6ZjjCaIxqeYqabTvRG+6heM1l9uUvclmmH3ev4/MAjaW8wOpHU
	 iyAsQT4Z1TD9WKLjmvJlODk5wI/OMKJWlVmR4DiQSAqTm0006yPnpy8VFHgbrgq/jS
	 nsIWyFgbUlsqIqWDAx7+63HQoUrsO/W1TuqWl3XN16RghyNKhbuP5kl2aSBZVvKswA
	 wS51ARYBx8/gXu/HHtwdiC/pY9nA+npniRwundU1P0W7Wit9Vt9SvYIo0ymiAuI/M/
	 QNcGHIfCEfdwviunD3KfmcCahLujdaCG7Srikec2yjhZ0iPR0w4F1Ia7CQVRQ1VLLL
	 xdB8F+pz2TjAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F832CA0FE1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585979363.5712.9082112375058373849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28a9f9571e8ef8b59317ab9977aab29cbcd7d9a82268c2763fa333ddd5cb6da
Date: Fri, 22 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755859793
