Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139BF29AAEC
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751891394; cv=none; b=L+BZ2xTc9+6bX52dvjgM62jfHPcfgTA5Kex7pS0YGSrjU+jZV7i9IOymHeT2wM5831DbrYLBASiCHAAei8m3RiLHUMSDBQJ71hn7ITNkFM/0Zytxq4E0jafYcukz/hUTb1TIkefsaLg63S0xBVpLZG6hgra3517Ak3Q5zR0Vm1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751891394; c=relaxed/simple;
	bh=9j5JhM8v7DsrgMHO3Q9wnfOrX6TYvgeQVwjkYPckXGE=;
	h=To:Subject:From:Message-Id:Date; b=lwy+e/KVBbWvndDvaIKhSOgy44/ub6BBN211XrqJlMk8wv1rhYLLowKri/wz3TbeAI+koN9s+cgpVaztKI1+VZQOWe2hJVsKn31u4yrg5kDdNWWkVj5LgJAFgjR2uUTHWSScG2lK84L2EX/EClQc9YJAwjh/JsjfjTInlS1Gbk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caEkbkD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caEkbkD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751891393;
	bh=9j5JhM8v7DsrgMHO3Q9wnfOrX6TYvgeQVwjkYPckXGE=;
	h=To:Subject:From:Date:From;
	b=caEkbkD8XB0hVLbdcqTWiEh2gnVwAddCP/ry7myDaxVcngt7jjku3V4Vvu84RArSS
	 ViKeHy5BMjHrRSzxwxcGXtpVSZW3CLliumG+E3NG3XukhmeAIN5raopWLd41WMxrgl
	 35cQg0tlax/eHicL6TIaaAFR9C55Z/o62p/rrJTF4phbmYw5dvRL3EMcnmTZSfi+wu
	 nlAKTipQikSeCVJ35PeVUT/0cR0o7KtGYXUxnNlvaNaSmNE2W2mFUqYXq96nveVMDT
	 BwYwKwxZ9mM4ux72Rvg01/9sHEo2rZ3UP089vFdzVTaqz6Os59IokcC8gUTLqK0F77
	 QMnW6lNy2y+sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA1C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189139358.15750.8761333894190320834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6f72cb122165db2d2b5578b546ad065cb46c517ba00bc0e3805e20d337d877
Date: Mon, 07 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751891393
