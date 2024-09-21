Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E1F3D64
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726928754; cv=none; b=M99KWmW/FbuDBOC6HkEAQQ9TxmTV8EjMn0dKRVa5tTXOhScbB0iY6d6WOsvC11Zl4PWdBtxDp0iZzNbt/MxBOZlDubQmfBg6+vQANiDN43uDgtEnFqAQ9FDHtVu+/vW2Sij9aCVkty7k4joPazndx7d2cf4lU55vWqJMXfenI8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726928754; c=relaxed/simple;
	bh=QtN8kgBtptPOsqts0xPnOJB8UqbiGSkMcNEJyHlaQLk=;
	h=To:Subject:From:Message-Id:Date; b=LYY87sK9RMkAqYPj2ui5rKF94L1f0RWD2cbxWXvuT00kDLT9Zt3zbFKtuwLN9ObSuGv7fMLVF9fSRZ5ahtYUy64s/UgKcdL6wetTXYWZqx6LGZH1dzbDFJLDNlOejVc0pykTamoUnNEAZ6rEx1ZLW2eB4vjVreZH9A/SX8aTAoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/KHIRDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/KHIRDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC798C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726928753;
	bh=QtN8kgBtptPOsqts0xPnOJB8UqbiGSkMcNEJyHlaQLk=;
	h=To:Subject:From:Date:From;
	b=r/KHIRDRCMB1za5SZ5hznqxE0RLAKOIbLDw9rUGNtzEPfiC5soBl2ZDhJogFFbVjz
	 ffElsNoV1um+xKO5JXmCKW7fnjxRS2lh09aPP2VAbIaJNcv4ZJzRgtm+v9r16noFOT
	 otYeJC26R1b2L2nM6YQQxRv1c2Huh0+Fid2RTbwTm/n+gcjhXNIFs0OCY7jB0/ncdx
	 gF120zvE8AMqGTEw7v1IfjTHyYuAlmu1LlGgTGN0GWt6trduqNUXahpnJQcI8Ae10G
	 Bi0gi6AohFa4Pd6EpiP/odrZBLgR/r4Ix3PwA5UAdEsMqkfGHcWSrjb5OWjYd+3/We
	 1qbKh0Qol2+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C3ECF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692875359.16234.14352378495523500849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5baf4f9ff32f5685648fdbb9f529664fde837c9a75617f18ef5c92e25bd295e5
Date: Sat, 21 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726928753
