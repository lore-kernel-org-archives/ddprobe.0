Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA533C38
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754915994; cv=none; b=Yz5vEur5AsKYNcsbuPSjzOlRr39FVsztKjlYf71A21bfn+sCCKg1F60Q8w3wq3+kAP1yEDlvQcWbDIPUJdxUUE5FVv+Tp1B+A9DSe7oVSOJzv6tjYGJ0TV4sZjJ1wDKgZ7THSFc/1/mVSn+GCad83+M9QKws1vO7Hel5a1HOn7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754915994; c=relaxed/simple;
	bh=8OwH1XTO285Dt0PGI8ed5mcctwF6R/SvZImXwSP3Q5I=;
	h=To:Subject:From:Message-Id:Date; b=cTBeR+gr6pftBdnSL1TnqmF9Y23EFqlGD1NNixjNldP+4RT8oCO7J9QZitNYRpN7jdGcGHctrLUn8NSSSqMK7IucO1jzKX9o5EPhiTbWW4ZRuuNR9GrPvHJ23L3VM5GEDYvnrL+ZeofTZAuRpxcuLHujECxulifmlpe5aa078TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0o8FHPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0o8FHPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57E9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754915993;
	bh=8OwH1XTO285Dt0PGI8ed5mcctwF6R/SvZImXwSP3Q5I=;
	h=To:Subject:From:Date:From;
	b=i0o8FHPlgMlR+CUMu38SmQ2pudQrbcQZ+OFocqZ5oHDOK0t2Ka0noUWKbkx+EpBwe
	 elRi+yw/VHneWigN0dz0cOw0C5LZeRa35pNKPBnW0M1PvpU+8XFiW01OlbPyw584IN
	 vc1i7X5bHfmR0imDq2EpZYUGAGsk5tcbkAymAIxwVwMqPuBLGSuVkmUnrav5rkPIDb
	 6DlskZESQ7DmDQcVXl7NxnIhajQkFiOujVAgRFY4FLuKMObxr9r6eIO8ExFpRR2Us8
	 k6HLL/2QsTBw3vM/1IajqtHEvqASwVQ6Ic+CmJLemyyR/to4SLaotS4fzj47YD0zGr
	 VZM37EjujLA6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AA4C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491599358.2668.14763432612422291048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f48454881acd3e98617509194a70f8847aecc3527843c3cbad3fdb84b95045
Date: Mon, 11 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754915993
