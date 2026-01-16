Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D603939BD
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768585434; cv=none; b=oAzLJ/SkYAs1EkOTgCCKivtQ3T34V013MyAbSPnZdZ+stJXUF92iB23Z4bz3whBOWXJ50Gs6pIxIb/vpaC1O+WdbjET+3nRJr5eYAWJpfgn6neZva4Pbl0dKcQE72KqYEShlFA0WXY4mLPCbFi2Af5nnGR5ZaQDRSgQkoY+DeP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768585434; c=relaxed/simple;
	bh=pBgfTa//rxJUnvdfhsD7N2XTG4tckL5+ywIvT6VNxkQ=;
	h=To:Subject:From:Message-Id:Date; b=JHYqVIl+8fvMv2Z+XsWGvKbXVDlaz4OtEl+IjA8VXnQY7LqRep45iPU9p45TGhrvB+pAyNtxWiYHLfFOE4M+ELov3jC5xETrWUyuoKSqSKWIF2NFKidzPVLLjFrvfkGfW9UQWa8RWCYEcDEd4oaFXP3Hg4EPSzju3CEs/QKlNow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhOKop31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhOKop31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A301BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768585433;
	bh=pBgfTa//rxJUnvdfhsD7N2XTG4tckL5+ywIvT6VNxkQ=;
	h=To:Subject:From:Date:From;
	b=NhOKop31cN6HzITCi3+oU0LkeAVcL7QlXVp9vfb5voNkHiQ5VIbGxSIRps0lZeyqZ
	 kFRr81SGBvSgE0s7RqqoItpG4cVPiyW6ssdbpj2ucUZya9xFLDQJw+4TBsQUanOoMk
	 CLca8y6JmA218PS4yx++rYp/gwdGs2a4un7oVL3d0v5PxvniMNDhN6bIHbXFbG0yM1
	 8sfft+fankZxfZxG4rZP41rcOvwpqm2Z3uIoakHTNCdExvJvV4M37yheGrRs7al9oi
	 z3CcBWlzVgMVhNe9D+PnIZ0bnlbwLohPnpfcNamgFwavOu8eHKNbQF3odGDEwMpfAA
	 nzDbKxrG19zoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928CFC982E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858543358.14489.958220781417344442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46d9b98e14b57d3823c8bbda5842634a527b694b44c541ff80be470fdfc6c8b
Date: Fri, 16 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768585433
