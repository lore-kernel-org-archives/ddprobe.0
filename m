Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAF333F6
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742584194; cv=none; b=T9yGYSFO0DL9QMMGygONheGP8EQEuC4ULME6+oNzvbLsRtY+hFzcHOpS2KHF8w36VY5oYPxC3Xz7SbwN0c7NZHcA7PBg+sqfCdqgapuHv3xh+hyZrH2xCDIPDyjv2akFs9rZlcBfUVvUPuwTfoE3rtnIMkACol/GAE7e2qVaQ5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742584194; c=relaxed/simple;
	bh=QRgfk8A24/pn8oMDijyzSMJ6tfgMH8I0HPObr5NaJ2I=;
	h=To:Subject:From:Message-Id:Date; b=H0liA3/QO8PvEi/qFECQvaDQAURIBqjKevdzUYBh7Kl/MzgpzaGxL50dav7EGraTc5OidFcIVDc6tuRRewfyoXwIrJdsqInXWw1slBp/3zKKiQBIKuu306yhW2sJlj/O+JQd8tZ3ORwKScA2vf+nDp1bQe9hEfZT+2svhrZzj3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URrz1/QM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URrz1/QM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B18C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742584193;
	bh=QRgfk8A24/pn8oMDijyzSMJ6tfgMH8I0HPObr5NaJ2I=;
	h=To:Subject:From:Date:From;
	b=URrz1/QMIM1d08A+Y6x5zCZgmCklZxZLhoIxdxlwKiAQqvf4U1KHZA5eqxKDIf69x
	 ZXKHE6WRPs6t/KBBS+1ZORyi2TNVK8NIVBa5+TZDcg3uCTyWq1AxQAFg2fyc1AYm43
	 mtIoFxf38NIBk4ckuTepxGYfwY36UUGRd8ETfrvpgfEMcD2vpMhxNp+eqZtwbyRKwi
	 4GS4uPe1xRUxD96o3Nvdv8E+kNLlb0AbM5uhdIIM5Mkv5ankRro04TEOHYQBWn+CQz
	 6xGgUV7Qt4EFhMJ48yYeHsz0Bom0GNKIyc+LLQ2LgBUniro2ZxoQLdvrnLO8g3NuhM
	 +hbjn91nQizUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA83C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258419365.24291.13383648128501935197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a52db9024fe8a2566f1efc773d383d50d41ce7f41d551f4fe8d9b16e034ac3
Date: Fri, 21 Mar 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742584193
