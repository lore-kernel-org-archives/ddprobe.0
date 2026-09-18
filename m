Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52710518153
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789750234; cv=none; b=aS/acyAxB4dZqFkq0+T58UvOAcUzTAQ4AQtTICV2lIrTKawY3557JrCWVCezTMEIqgtv9z/d9SuAB3bUHWrbowhcmIfJ0xeUnmkmi52BhRqdX5CLJl8EPj++OSa1ARPm12TODGvFmI4UkHwskSfdXvvzCm51p777MVzyoaf+Dtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789750234; c=relaxed/simple;
	bh=eKtEee6D1LNBCXcydsg3b0eZjHaoJpHX1zU8xlxikn8=;
	h=To:Subject:From:Message-Id:Date; b=dV3d7sQ/t+1kRvwH65Il/o8l1SPwBmhm3A+e/s4ibYcIQPGvnXtWH6qdqwTvObR0qsFCtIAM5/tq6MJ+Y6X694sW6KqQweXwIXzFJC5ZUTnndLHc3nVsLasQkqi7y9hCqpztQKt6jAfj05zuygb1U7bqDUprBTGyTFo3WoHiH2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qb3WSwBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qb3WSwBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD96DC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789750233;
	bh=eKtEee6D1LNBCXcydsg3b0eZjHaoJpHX1zU8xlxikn8=;
	h=To:Subject:From:Date:From;
	b=Qb3WSwBT2TfSYRHpFPSTsMJMi8Et73d7LQbutU4kFe8ZUBaq2aaCYZCWB2a0AERD9
	 fktlUBH8pw7H6DD00X9+P/Oz6TR1eg02WXYEK2+ZtP7rbPJuA/XPOXwYV/a2oDJklq
	 O2wweYZUEudGqn5jF27Vw7Y0RfdJFTgOq/hX5xdJwNo0jlwZ7qwIluYL22eJR6dZqC
	 UBU1DwEkiJCZVKOD4gNJkS7991E3pXHEdpMfmbliheH00x7z3YHnxd426udoqXMMiO
	 Mzfg0AD/d7//kDqdhVn+or9RzTYJMlyjozINuRxmOTXBsVCJkKdJ5SqoXSCCxBY3yY
	 wmQqbDLhozqgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB916C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975023369.22406.11955753953992370086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5521632d13622830f6bb02b59e890ab6257c7cee83f3a331df908e36594cb6a8
Date: Fri, 18 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789750233
