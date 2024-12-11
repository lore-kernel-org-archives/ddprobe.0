Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3807A236FB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733912754; cv=none; b=DtXTOoEU7hcDyplnD9SXRVz6sd6DcLX5eHxyX9r0AKV+Z258gQvlTMtoqQ4LIwo1s4du0kTVzMVAyR5BtEli0iXS204V1zA5dO9FvDxxxsfckiSuXtyRPKUCiJwoJXPSUSbfHrq7kxzNOxM7O8Yvzh7bmcBnSRc418/T+Z1KiSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733912754; c=relaxed/simple;
	bh=gt/YJhgHcTX0YYSAFyJEJuF0prq8o5JlDZk3oJeyxPQ=;
	h=To:Subject:From:Message-Id:Date; b=WOXWyE7f+byH4ejJDlZHJDdKX+t8UQa2P6w7XPQn7n31qWJbeZcGDWZk80YttqpWcMRa2GrFIZRXXRlYLTXb85EX16Ge+vzKKy3VhvLZc90s+oG04+F6WAzHvu8BDdQdIxos/W16JPj4vikZePwVrSfZFXl1wpEKWbkmsrpaUgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYd/b4Os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYd/b4Os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B32BBC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733912753;
	bh=gt/YJhgHcTX0YYSAFyJEJuF0prq8o5JlDZk3oJeyxPQ=;
	h=To:Subject:From:Date:From;
	b=SYd/b4OspBt+YuUGkzzOl9moo15/QleY/Jqunagy5BwN1E5RUqQWo31re2/rmstZW
	 D91sMXibdFHCUvbHeuUv/M9BofhARb5zivqSIO7wD9+L0OqjhcG6rlvp1iWZS3RH4J
	 0eDjns8hlLnYP9PY1VxNYkLFzQmM74hbJPfslig+YspJXzN/IuQEPKv2z3+oodKTxy
	 mtld/Wg4iaQJzhtPwiyd9ICtwQ4+U21ytdgygHT+D1jAG3IoP5c0x8SInb5nSUnisj
	 J8h+ITyWCu1tJ2u0L4Frg1Mn3EmT41mC4W4gkgaZ79nNB8uRDjuxUmyxPRrgcpcH4p
	 Cn2hv/Do9ncrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10FBE77182
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173391275364.29289.1214526584649940191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d87134b747d5143a96e54bf00f324cc9af8b37804c6e895581d2f8c8584c63
Date: Wed, 11 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733912753
