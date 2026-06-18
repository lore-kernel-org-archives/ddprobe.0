Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494BF233943
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781742394; cv=none; b=gmZ684bafFpxNRxZPONfZYJWj9+PSGlL2Vts+9lnHwD4MJsL2EgTWkJcvHojXKB498159dgF4QOLZvlt7F+5zhRDOOFTao7mAZFEkg1bg6Hm/DHj37OImbV2PHXs1MMfAFFNv4vQUXHP0Q4qb5d2/pOwYO2suFv7zKbZErncNKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781742394; c=relaxed/simple;
	bh=4xU71o8LYfZQJvzRdk7ltxBMXwVRhn+RHT1loa/XLGI=;
	h=To:Subject:From:Message-Id:Date; b=uKYgKEUG3CtLUmj8ob9XGPoVPeIqs/CiQwvOEwCx+9PBTiao/j1x51pio6Py2+G1kc0Dbac4a6iQzGocmDWK2SjUPzp/B6wAratqbNUH1T+j2IEPhr5qSuETLacmKpDqG6EHVU0nqVefwRcVhJ8Vr82DJUcieMj8HvIFjIyPxaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+AyqVVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+AyqVVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0862C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781742393;
	bh=4xU71o8LYfZQJvzRdk7ltxBMXwVRhn+RHT1loa/XLGI=;
	h=To:Subject:From:Date:From;
	b=i+AyqVVwQ/xyZ7+PU6Z5ye4jw482tpK7zajwReN0/afBxSPREkYWuklpbr0inkbRv
	 G80QnUkmlsAMRt4glPDruWalR3EARyiaJcgTktx9MwJoNbjBI+ApIiqw+huo9udIUk
	 5F44iZ3kPIt3ZlnpTPqt7WPw7yQCAYgdty5qZSnKIel6F641+l1xwRYOwZbCtbcr1R
	 NwMdU1fKPaOQSHyeuUifeUZGH1f7ZdY+ans2PSVnkfFPO0437fycF1lUHGcmNnj0SB
	 Jp7zBYRrTsCaLIKaPwr+N96Src3zjaIsGb8uoBcxFO3sTniwbGVLxn5oAfF0zdb0uJ
	 TE3j2SyP9SKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F55CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174239373.8285.5861335566373515520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c523a85a385dab4956fa8ae613727973d01910b6536c7eb316186d760f3c38
Date: Thu, 18 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781742393
