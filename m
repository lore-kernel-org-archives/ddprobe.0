Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25151A48
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729652754; cv=none; b=LVM5V9NxMKUVFsHILymfDgotxbkuI07/7kgVykvoZLVtyTNHB68ugjqDjf3NokAF64PHbYkIE+l3hIzRRM19/2fu+pR7X01NhjwG/GSpAclxq7WoTMXhl9dKgOi1Vbl8to05YHcD3J9HGtwCy1Eiq8TMh6tGZSmlhTbUuRWfDeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729652754; c=relaxed/simple;
	bh=yPQeIYMzenaOwNZmwjihuQFz+c99iUKQ4PHsWb8zzU0=;
	h=To:Subject:From:Message-Id:Date; b=Cvoyp22fnUUWgsTisV9FfCK/0+bCra/fTKHPm7q9QNWWffQLrdtkpmt0h0+YTf3NF2h2gE3y31SmJJ6qsCVAWqwLo4ZKdFGKHmAHJSLpEpndILwHjhPK5lsg/v8IITihzaB0iGFHlYdFOmbWxiURGrd5r2P/IQBCpDYK6MpXlos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ed/t0EVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ed/t0EVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADC4C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729652753;
	bh=yPQeIYMzenaOwNZmwjihuQFz+c99iUKQ4PHsWb8zzU0=;
	h=To:Subject:From:Date:From;
	b=ed/t0EVja3HgQNV5u1Ea8itsCuXkap/zNKlJluoMK/XWEn8X8P49PcJR9ZrzPxFjs
	 JKfod7040y690PS7Rp4gU6o2zO8vESzcI+VR/M1fQ4s6o9SBUMFnMMIb/STG7+EgJY
	 2HI8UyHduZ7FOJxBwH2Gx/MFeBXE//2lWATE1x319cZ3zTsHZLFVT6Mz61BZv6/SnS
	 2VofCUvrpvuTLXBr0yK9anzrP0O5K5xmt1GkL27lqFTyBWrsoDIcOovtFXfPn22zQb
	 ttavL3IMdW5IsAvd1K2WkJexc2EJN2I2r300HY1hVlAwSUspET1/ReyF2BgQ1Z/H/A
	 +hgSzdqsQUbnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9A2D2E008
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172965275362.13612.14960546225466144464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734912b40d4d3185e6155c1b8e432c4e626a8fe014d25e1461b420788593ba90
Date: Wed, 23 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729652753
