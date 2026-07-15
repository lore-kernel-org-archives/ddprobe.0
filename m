Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806FB3C7690
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784149114; cv=none; b=eSMGwM43pbdGTO5axab/4/AR1lLA0Dtfroes1E7eW79Vtlc7S++4OIeHLrQOCIiBdSZEEB+WYsysvzW3khomijS5wZDPc1QNwYc1Hi0aSIeQlPlNwHW8yBNQjj1WqMWWwPaaGlDP0E1/Nl4+Ffe+tb3d57z7xIfD7QsqtSupXts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784149114; c=relaxed/simple;
	bh=Q1OciSd2FXpTiCmHnpImTdzzBZDIWtJqQjL27TiYtMo=;
	h=To:Subject:From:Message-Id:Date; b=MilIwP2lcQFj5uHRXy7FFylLQ6vdeiixYScwtVIPat7Ypy82zCVIxPd/jJef0TEHW1XYKewARvaTKWf/2rSt/pQAmRRWaV1sOh62yPIU9hFOiD6382f94yRG6GaBXAU8EUU+tleEAvKmjIzLztQ1cvjdkP8GTnRhvyEXkE8ClEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfXUEink; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfXUEink"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D674BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784149113;
	bh=Q1OciSd2FXpTiCmHnpImTdzzBZDIWtJqQjL27TiYtMo=;
	h=To:Subject:From:Date:From;
	b=dfXUEinkGgx/teJ1Iu8LvFkrizOZHw7Nq8kH4ujOpUmwefHFsm2UAHqcykqUEU8Xu
	 jymqNFG7cJSG1EWtPAvFnDQdAcjnaU0s9lRMVLoC3nsRR++U8U/Jajg5dIi3A8OPy7
	 2shSXOaFgJlgLER6zMmbPc0i3AoEmbVHZpEr44WyhIVhT4p20EqdI9zlwEF6h414+5
	 K5Rxa63OnAzlxfdB3SYEMTjwLGP+lDCswiZKFVkk8gDCh9GnRgvc9KZWesiy658Xn1
	 REzqt4efi0YHyuoUtgwEuObq8D6G4tMTOqkmsz3GF+9hxyMp1/C3yWT3g9zUHzvCjQ
	 UhJ24rLf3H90w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35F0C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414911369.25809.13458410520239469707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9dbcc8741640679b5c6b13cfe3448ca65d294b9442b2c21429113b042760f6d
Date: Wed, 15 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784149113
