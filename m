Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B9F192B75
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782402454; cv=none; b=rvN+uAzh3hwQ5fAzlSxprM8NEYCNauT2e6ediYfqMdUDbh/94TM52Ngo0r5b4BXPmw7gzZLAmXisGGy3ViWWqgjgvJqmKNY2FZmqbA6WN1Cc83SkDRsdqlxmKLKJxUFAaHdN6mgXhYTFfSaxj3ckcmjK/Iffo3KsEbdFoLMpchk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782402454; c=relaxed/simple;
	bh=IGt6l0vbTgl/ZitRPDBYkS3JXrSFmv2zq+ssC4zzaqg=;
	h=To:Subject:From:Message-Id:Date; b=WU0jSOfFd0mT0/Kzt1yBp0kZSPDagzLi0CXWVwoX/iE368ciyUyGlnNCoZaZBf4ypaHVt+80WSvC18AUhUNflnr4jza78fYom70k1AMnSpn/CqiYgSApuXUB6buIb+3+mjNtLbcBMhbr3Tk4lv78ff0sG16MCxS0L8eQryrn490=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K09joPwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K09joPwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A3FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782402453;
	bh=IGt6l0vbTgl/ZitRPDBYkS3JXrSFmv2zq+ssC4zzaqg=;
	h=To:Subject:From:Date:From;
	b=K09joPwg0W2EqoT0/RM7/fmBeoca0vTTR6tYQ6+z3vQM+ZilZ1djnd3oBCBDqQ5Gx
	 GuwHmTRjJLeOlvCFjs2FhYvTtpPplVZid3Rx6axwyjbK3yd0K/345RwhJ9ACMfaMJ/
	 VWVEhKFLfxpJfNtdWX0wIq8HBuHBYLGDrEFudkuTynqcYrtXW+T60Rocw4Uv/mzILX
	 or1Oh7qztdooPJK+AFxmJWxH+fcROu12EhQuuq4yUwu44b17oRTzdnIL/kaurYsFVO
	 mrONUawZvzvxKGqGU2G+BWn5xzbhUinxfQPwAFYy4oH4Rgx1YxiYQzMhdMOAkMxEd6
	 rB932OVy4q5aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BE9CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240245376.21977.11684551668744587394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb208b6f94ce2691d8986e4420d29d7452b15cd02a189b164be5a2d53f3d8092
Date: Thu, 25 Jun 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782402453
