Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0831D2E622
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712519897; cv=none; b=XoZQVtsGPmVqiVRKMxJko7pGvZrs+gtk2zRzOzsXlQF4eOB+2Tokttv1aFAfMaqWcYfp2BE9K29ypgtuAtEcig+OH3NlbwF2dIZeqqmixEpmO68IvlAji4VjkIA/dkL8KkLZNMIywMDOihbPGmXXrtxHZvZLbx8COoajCl6Fn40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712519897; c=relaxed/simple;
	bh=v4w5M11MXPv/0oS8+CDiEfUKDclnNtoggaah6S0K1kc=;
	h=To:Subject:From:Message-Id:Date; b=e/CCby9yLIeSCGX8+WbGybRAdhJmmkzQKJIdXAhSPvupi6lmDCaVMJ5r2xRD74DxtQ4J3bdTKyU9lq7MJ3+ueDvNZ1cdBbpHkghyK2u5Yx72zLBhuPJCWnoM0TAlM+slKTDxi7elcjEg2hQgB76URKaFuUCd/chAjZ+KJCXDOj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Km1zGSfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Km1zGSfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D73C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712519896;
	bh=v4w5M11MXPv/0oS8+CDiEfUKDclnNtoggaah6S0K1kc=;
	h=To:Subject:From:Date:From;
	b=Km1zGSfOl+3i6fjX9NekRhanZxubGO57NOBAEOkYbE36mXvj+EHofNJxF37j6EdJ2
	 JjbHWpbGpiL0OP+yckJoNxoHYcWoQpjdi3oLFJTbWGeh5y/DjzPRE6g8kU8Hoqbm5v
	 zZ3vc8vUkj6oq4t5WiM+S1w1O4O7DvENbuZzk3YaQ6QX0Ei6zVIsOYnoE6vbaSNshB
	 2oFg8lc93JOvlhDWKoqSAQ9oQF+Hs/iwswg3cmPZe54AggsSsTXetcOs5gh0Nbzk3i
	 wv9iHgVvT4ax34xcmWVpf+vJWnH4drpAUTsG2LmvO6+cH60a7ZmC8BkyVtNTOliVLs
	 OfPDcrLlt/dfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A10CD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171251989641.15299.9487137980057418363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe761e718cd176fe93a92c637b765cbbe882076321723bfe2086ab0b2e9d09d
Date: Sun, 07 Apr 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712519896
