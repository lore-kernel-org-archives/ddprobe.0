Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3888222615
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748834995; cv=none; b=RQhDPXwFOSDvrRO5G2s5Am+eb9LaA753S/xu90DHK/WPIE+d89LBrIALF+Qxz66Nc3eanMz5TmVDAPAvh679SrciL0zvZ1IkgEiocBpmr6POKS4tlN9bElfzfmx5o1uKvtW3IJRCabm7NgAb/tTOc4Y3mVnesdAqgCyp9E+jTSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748834995; c=relaxed/simple;
	bh=QF5WXXnJEWa5Bs5BcD5liXYOrEXlefipQFwy34Pp96g=;
	h=To:Subject:From:Message-Id:Date; b=GOod4wb4+mSr6lHDMIch/3B7p+EFDbmm3kqdLfT9gXOa+4KRhTQH+cqC8jilhzVromKYdTyzc4xxpfkl/Yt3NkkhtWl4S1ixjGzu+Q7NOUnexhce1hGiACTJ9ePHA4kcrusc3f8WErQC/zayxSd8yKMUjHU/F5LOhl+W0UGhlbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4nDkHvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4nDkHvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2640C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748834993;
	bh=QF5WXXnJEWa5Bs5BcD5liXYOrEXlefipQFwy34Pp96g=;
	h=To:Subject:From:Date:From;
	b=D4nDkHvP5Gfbzd0WXPHOH/sr+mj9Ib6kIcXng14qE8RczsIb02NJ7OS2vaixBL1NY
	 K9WdlB0E+LtzDWvU1RExnsqLetoOhGKODfjmQRI6d2nfRERFHjFwnnXWMmkBm8hMVz
	 BycnrMmnlr+9gGeWbft0QZPdTQx4B6/TpYOVRM8HfMQoEBMa7iOzutoxvSKJptGkeq
	 f/szXxyACBX0w6RLupLAlfbaTgJ7rwmi2B6IlIXSo4vwieWK2jTfSsVaXLU4sRmJS+
	 i+xNPCxq2cEF9Rr8f/M6Sf3cViSY6CEusIL40sFBk7FxZibYummeFgXcxWKgYykUxJ
	 G0egNtLRvzaFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902C0C5B543
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883499357.3716.14176706586075531560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a0a7a770bb412ab0a74584327e02e8974db8739cf7eb1bbc757399ffb598d9
Date: Mon, 02 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748834993
