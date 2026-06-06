Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479064071CA
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780716274; cv=none; b=IpWBDn8xjjn4761x3zqaOPJ6Ow63hNcQo6vu6P6tv3xwInmVqRrz37KdsmSwb8OgUvmxJv6DRyxDcYkPb4nLJJp6Vn7pDsIoI44BzGP3Ebo8RJR+MD1161c/2ltQXgqHUIZTKwCIYEy8uTboLpHfYcszjZPjn9s0sLFc6Do48NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780716274; c=relaxed/simple;
	bh=EDOGqs7wNQQf+MkMiqYyQacTaLKsYSrFnjk/aXtQw60=;
	h=To:Subject:From:Message-Id:Date; b=WAI0PXMI19Il/A4IjUlNQvsHddO7Hk8YmDVBTmrnwoCCtrQFQppBLv0+N5SD5OEUhnx+WuQi/FGEgUl59P08BcUEwWtni7BDHJ+BE/f5QfTPOebwtO+KAflMP5wpHS+MFUnP2lfi8pWnwDwyW7FqbnJ4LvRc6jqF/ilQXRxcxBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3fH51Lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3fH51Lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C922AC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780716273;
	bh=EDOGqs7wNQQf+MkMiqYyQacTaLKsYSrFnjk/aXtQw60=;
	h=To:Subject:From:Date:From;
	b=X3fH51LcW9YH6+3WpTP9w9Uwz1XeVJ8Rt747K5T2ilRU5fzTkPeqIFUmSFKiw2yLM
	 4nckXDln6ZknkGqrceGSKhJ6gJaW+qlIB4CPSpGCRV3BotgwCyamdpa83ghqK1XDHb
	 +qy5JKvY1cry8jmOCHywFb0Sa4jECF8UNBUnjd1C/llHT6haHbZF+k11kmA2E04FPo
	 5wRozwESgMctTlBX5heyYy07yhDfzahy1T/FnpVmtXHx3RCPeiXF/WlEU0urwhXptj
	 uzo/VFT6pqzG4ZXA5Cbtk93FqPk8A/wfFC0kAbyEQuJWaDmGxNzPUv1yCmnf1AXLP6
	 2+ubuEC/bFCBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBFDCD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071627368.14411.1144680012587664351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d019c2e3103cc55922159f7bda1d871bef814b5ffb8a90158c3bd7b1138c2a0
Date: Sat, 06 Jun 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780716273
