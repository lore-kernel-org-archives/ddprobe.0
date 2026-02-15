Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB0C2E1C6B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771199094; cv=none; b=K1/rFoIx5n0P6OUc2skT+pYYhcFLzgs774zTktJDRfqSZDm3YDCyCB66WBgml0mcRxxksMWNP592kAtavEBt9n4iYItgguSvjOsE3fY5LGTmXIyGO9m4osIaKeOSrx6IIVmg3ZcB1SXYUZOalRVro2Q5tFHd71G5ZfvggGhSNaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771199094; c=relaxed/simple;
	bh=rFY0AE60NHL42WR0ENgGOFoiS79HrW/Cbi/lm+b9Sws=;
	h=To:Subject:From:Message-Id:Date; b=t21MmAueJwLhCVb/TQ1SnJNalY9+0yzT4u6Srx3nuhheO0bY98RHW9VVXj5QCFWr5yQITxN05qqGjBIGyl9povdNlXTaijKAqvCp5QHIHoOb/70blGIbDzl8jMlrwchT4RU7ti5A39AOLNhJETrdJrmy6/pwUhWJaHzNkFjjIak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcZFiXnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcZFiXnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E59C19422
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771199093;
	bh=rFY0AE60NHL42WR0ENgGOFoiS79HrW/Cbi/lm+b9Sws=;
	h=To:Subject:From:Date:From;
	b=hcZFiXnEshm6bEsgrZyDrlry7Q5U7KPeWm4qxNjRrqxlqIPpuOtVHThq4bC1d2NZU
	 0uGAaoCUYvqT0f6dMvpz/01DLXbI+nRWjQ81Xdimuf7Pni6MERay28hGov7uHN1fOD
	 2m36iDef4g5yuOwQElFS0AkCG/KWSfS1RMYvoUmOjdKy6wHCH1QoD+EKrrr0MEADsM
	 oDZA8JENiH8P4FgcKkvnnhquT+hPJuXbb5eg0dIC43UHOx6wjjna/WoJwiJVmRbO6W
	 7xjX3vC1wmZyCNRyunvHpKljF57QBBvjeK/s78CYhwsYK7rC4Tc7KMm6hXgw/NUCDv
	 nmodKfWhD8UoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2FCE63F1F
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119909362.23869.1292086061472431378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10a8e61a46148a89b6f26b5d932a542902748395e3a32fb9d5495ff0796836a
Date: Sun, 15 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771199093
