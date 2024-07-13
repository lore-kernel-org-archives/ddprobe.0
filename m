Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582961386D7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720896623; cv=none; b=qdr72rpWdVvbggg5oHkPhwBx2UY8WdG6oZx/Ylj4rT6EbYbIYdIpzqyn8HYwEP06nqr7oNiPBjgJPunLWAnDrnT716W7wuECxgg+wK99oTO66kS4rERjx2J1b2ImlthwFXf1q+nMbRZ1+LwH3MEQJh8VQ+OcqvAoz0uTfbHs6XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720896623; c=relaxed/simple;
	bh=dA4/zEsJfHEchd0DXyVBARdle3VFGmLjhERvuo0R0H4=;
	h=To:Subject:From:Message-Id:Date; b=lUpGq9Ky+D5XvrTNZoEyZmZwYTHh2bvrqa14HpenLpTQk0k1JpTn1FtdD17iCbApsikcld15wc5M/DbH53ot27EIBL2zoAzEnFJteeJpgVLG0xUn+r9S5cWUFnwUgYBNlYIqhcWlnKwZi1UPWR1Y45dxMl22YDeggvktV1Sz1r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs/eOUvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs/eOUvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E0FC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720896622;
	bh=dA4/zEsJfHEchd0DXyVBARdle3VFGmLjhERvuo0R0H4=;
	h=To:Subject:From:Date:From;
	b=gs/eOUvL535RE5KEmZ9R6uWMUOmRdXAIFsfQEdbBa5bnMHW1i184vMF43C0M39f4j
	 tjkC8RwfgVWxkVMdKBsKq1AIx4ywK0QKyxKYyxywb8dmmz9x/nT6d1/d8GScLI+qa/
	 yPAjBx02GTJwBLfkxOmeUA+wGEAbU9IoZVrPkLGScxmo4ObA85TdDX1n95KyMK+DU9
	 /WZla3cp22IYM4XtGHf8VUDdicF6gFu+YTFWdXgANHXY2ifcoBx2b+Ti0N3bMoV0o7
	 Jz6pa/lLsDbP4U4hnWD1jkBnZkTAZOudple5GSWMGpj2wA1izweil72MOn838v0d1a
	 ClZIo45NMTDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C1CC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 18:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089662276.23689.3139994501349432462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc4fd85fc222d1e42d1217966faa8301b365802edcf105ba217f6269a38b759
Date: Sat, 13 Jul 2024 18:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720896622
