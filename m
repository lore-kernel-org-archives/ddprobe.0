Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2901D29DB88
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752694794; cv=none; b=CNHqc8QX/tD22qHcaaIN+wcvGNufNyCrMRhQd90km7RVICANigk4fftwLTumpF1DPNJqoLx4oJA9pl7Q4IQRGu7dGAb6solXxRu4m/wRuaKfQTbpsgd9mcRNAb6HR9b7PIOSuz1h/HHMKyklejr/BoH/Z+as0VTmiUe2aME+1bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752694794; c=relaxed/simple;
	bh=euKipoA3vHc4710X2rwru7kvq1uhFAStLAK5tcjLALY=;
	h=To:Subject:From:Message-Id:Date; b=NB16oSoJbDcvEDSczBUanvWRNhkPWGtntzkA/FqoY1aCtpZaldH/Zk0RVLdnTFBtU9NMvKS9FgoKkkrSEJed9w6/aALjAIV1j1VhIJKnnFv6SG5eFJL/+06E2IyyM2c6g815rewDQOnF0fcjaEA6l+fNDQrOk6hnetqVnTr6z9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFHwERnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFHwERnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2232C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752694793;
	bh=euKipoA3vHc4710X2rwru7kvq1uhFAStLAK5tcjLALY=;
	h=To:Subject:From:Date:From;
	b=sFHwERnHTf/rjgmWJ9wTan0HGQPciUbbxTIXKRH+3I2Iwot2EnDN1I2p8D0i6vU5b
	 F4BMxNf+nbKrfmkGXT6QLprLFUb8JpoMj04fdhP+s1QYMfClT4OSeEs/J5gMH0L8jV
	 eKkpzEIEPDQ6RfsUrIDtvmYJfS0WYfZCDxbweN6eTduViamn4LAiA048D1zKIF8NDQ
	 1H3CK3jCyE5TKUZHlwlaE1fW6QFoFbiUAwi9fblqNkOlOSiZABjzGqWMN/dU/ddjWp
	 cEZ+VxjPXOmBBb2HM04hDWJUgJuxlIdAFmVvnrtcaRrYEyVdebBAeKl+TABEHYcVNq
	 0dGKvDlKJ8How==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90158C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269479358.23894.16008904977129490468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd0fdd03b2fe2f2566404afeb8d09d50264fc758fe1beab12aa1efa4432c1e9
Date: Wed, 16 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752694793
