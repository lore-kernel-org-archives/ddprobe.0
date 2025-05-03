Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFF7189F57
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746268195; cv=none; b=kWRUghCKtSOAXmjXJFGKoK5XNrzrTtiCV+dPmkRRj9MUqzZ3cup/MuzgbbRqzVb+vKV6PVgZCI7K+19LO/IyRcoPI2o7V56yr0EgSYHAfW1upIfU4lLs4BKq3JAQzVaZi61V3GxqrTl4+nAhk4pFRW+J8GQCeneGiBMbyNhJO3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746268195; c=relaxed/simple;
	bh=8GUlApxunaf1JBLrvaJ7Lxu7DUOyQRB+fziBU93SacY=;
	h=To:Subject:From:Message-Id:Date; b=IqwxpzELRWdNAYx5SZIBT/65HEPdAwKyoux39kOoX/izqfpwMzSQFKNcE0oX7u1efHsCL8RGKVUKQVTZIagC9kZPJNdl5/mI/GN1zsFzlAg3K+50OaM8hX8j6cY3AdoaX9vNOipN5V3dkiMIddkUmGECMTuZxYu38FNVBLSzc38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dV6ST1bt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dV6ST1bt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6038C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746268193;
	bh=8GUlApxunaf1JBLrvaJ7Lxu7DUOyQRB+fziBU93SacY=;
	h=To:Subject:From:Date:From;
	b=dV6ST1btpGflSCk2VIvOgVUQQlwDZBIVmGh61EzgdvY9EvzbkJjZ6wxdxvmdb1TST
	 ewNKy7h6WjUukFhPbrGE4IebQVfybT1NH3NxyDGr+NxQdYslgGDeYhV7fKG4AVQWDi
	 rGpmLTZlgbSw/jrEQ1FZjebOM7+h+rz5f864qzOd4DqilhCYEbTZxKux9zvtsVRG/X
	 6KnlSDpADIhbdrXZEtKXdoKWxcvtL8dFf9G6Qn2Qk9kX4blzt1C2Z0XwvcaOQNzEjZ
	 kbUnReaBqdXTAP1Rvmku+D7BVLawZIqV05UuAnFEUbB9ePMSc1Q/uGxmvklEleKlG9
	 k35ccYA0ROQhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91783C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626819357.29085.1474097388929303251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ecb4e20938765bbbeb754c7401c3096c60b745e0a5720dd5fd8be509bcf96b
Date: Sat, 03 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746268193
