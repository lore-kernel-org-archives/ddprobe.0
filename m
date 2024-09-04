Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B5D1DA619
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725458754; cv=none; b=L6R/z9bJABouvjQ0Q7wX1wBxidc81MrANqzmhhSgJRHNqBDWdGjz1V6sFymrCC+TkPhQ4aE+3BUc2a34Ox98ytb62cgJtRkdVU/z8ieYBk+mCUpSitQwxArLM3q0KD8w10nqoOQHbupM9n95WNTCWXdHhyV17S2j65yIcv5cXEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725458754; c=relaxed/simple;
	bh=rGoavMjaEC+R+AGAEfA65kz9itmSaSPWI8jUEKfQYak=;
	h=To:Subject:From:Message-Id:Date; b=gysVPlZvv19QxVmA10eCYlL/TG4u653GLcSTocFrjHWpJm+vwKVMAiIvipCSUuHNrDWwChCSUtT5ofNjDBTvo3c5wa0rgkrmgHDuMXnYfghZDvu27M30rdz9VxFStIM3kFstEQbgZ+9ykkai2Rbylg3PXLkbjwEPn7mDy6tlXxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMuig6nc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMuig6nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A9C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725458753;
	bh=rGoavMjaEC+R+AGAEfA65kz9itmSaSPWI8jUEKfQYak=;
	h=To:Subject:From:Date:From;
	b=CMuig6ncgPTdMPDdvbRb+STHH3bAuJSEV4FqjafXZmkC7vGoaJloD6sXggaD6nlhn
	 q4CqZAfTL5ZKjOhOsEFq9sTbZ7tUiwIPoRtMCvhP1fuW4LJ4lQwwShmidYyj7ARobW
	 2DBBQMUE+PZwgZN344RLzcD1FmV6lct1JxM8H8IXLkENinPRRvR3DkJo7pteS8TNwJ
	 UnpHu1K7aAU0wwm+kckOrO5iPF/0E+gHiDrTpNiAP9k2+BIRgHwJQgbkb58qw43UYx
	 p3Ce4ycFkIsRM/zSeTgcJbEYD3AD6SJEng1ZJRM8Mv8/ChiUjPMJwy8ryLJkpWEToS
	 Nv2ZZWSKETGBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9438ECD37B4
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172545875359.30512.6388555335439220326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d594cea385a83f76fe09d1c939419692541561dedcdd3d41ea97a679f689193
Date: Wed, 04 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725458753
