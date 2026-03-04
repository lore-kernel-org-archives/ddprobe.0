Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B97A352FBD
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772597694; cv=none; b=ufD9lWfb3XuuWd/JEOmyq6+gMGnMzuNZOVZs8W0tNMfZDSROVH+NiYg08+jsGINH4oHclNW82Kmp3SHeeVteEpoSISyLjsquE9PK2WEhyLadTlRCIPNGOUxMddPuviAV7fv0YJyNSr4QH60FvrypXkMkTBpz9D+sBlRmkmjifEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772597694; c=relaxed/simple;
	bh=ze3C0ufZelc7R7YGN6P5LjCmSk2uQi+BwuX/kbSSit8=;
	h=To:Subject:From:Message-Id:Date; b=oTJ9+xvPspVAd0XYhS8hfs7iBLAtxvSzGJyGkLVC623UHBLj3+zERkxrdFy6DL/aLnuAeZKWeSxiHwjYyK4OUOpJ9d+qUgRW52mRSHovqLoeWpfEU2bJdPME7TNtZWfg4kKqYgE0/mFIsRLOxNkyip25NSijwxu9dS9FKo6rJjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4xEM9rW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4xEM9rW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E0C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772597693;
	bh=ze3C0ufZelc7R7YGN6P5LjCmSk2uQi+BwuX/kbSSit8=;
	h=To:Subject:From:Date:From;
	b=A4xEM9rW7/hKiA1nyobnjSune5iyh/kKMZxXKVAJgeDVLwa5tN80r3+DT3T+NO14f
	 ua+zXkHVObfVH1uNLfr6JAGVM/O3RwUtN0VC/im/Ff6YcWaI90iTIY1Lz3e5CdWk6x
	 GG4Q9nhbSj7IzM2xF3xZtjxJ1lxmU49mj75ZoWORvNxDjzXhILPj3OLODKg9Cdrhxw
	 IsEB4P0F4t61TNUi7//QRMJOn9pHsV6nfCA+21yvGHnZu4Kb9kFC8HneYqQRBO+Jqd
	 2a7P7CkB7Z8PT34OhCFnte8DGGUpmKO4uH6e9Qx4dFZPY3VHO628wr9aldfH6Y2HzS
	 eQ630GeY4R/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92488EDEC08
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259769358.5675.8159674127416961021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc399df9e2c47f9bca71d3c5185ab716356c5364363c5bb58c23aa6bc58550e5
Date: Wed, 04 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772597693
