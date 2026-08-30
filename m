Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7614A1DE894
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788063634; cv=none; b=n3CfWEnVYdM8p1rtbwJTD0tAfZCpgV4581ewLsC30vG/YMh5a8/7GFWSAW3IpzWXXi3MAA0pb2+RrKf6S/gaqd1IBfadJWH8Ame7UoNFA6e7mOwriTNrIFIner0o+maV/Rlwgn1f7Km42qQ7gE0SjMvyR69pwWaRJ/c3cQRGM8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788063634; c=relaxed/simple;
	bh=i9AJqFEdPoWDyvmhPIp1W8Z1JiEZG0eOvUzo3laYkig=;
	h=To:Subject:From:Message-Id:Date; b=usubz1fofVOT8AFS9Nuf3ic8rf4uzZm1PqjgoV4Hul5CJIGm7FTsHCToX0jhCTu8YgEZpm28i4aglyPtmJHLz+cYoXpHK3FsDOVaNC+s7nrEjVtLD6Rs5QdyMfuAsKUqLGWN6Miv6N/l3ngfD1DoW7XQqgHhydTC4O87ueYMJTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txjbwFCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txjbwFCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA287C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788063634;
	bh=i9AJqFEdPoWDyvmhPIp1W8Z1JiEZG0eOvUzo3laYkig=;
	h=To:Subject:From:Date:From;
	b=txjbwFCTasv0cdiBc0DWMZ4h5oS6zlwM4BZcvhBEqpVA76c5DTJX14NuEZhuKVzbP
	 s2hixG1qngaFJ2m43bfXyU8SNJXOAemMk2mxEwe6LuNuVLQeJ3EhEH3g464wga2+EF
	 wqglmsGwJeIC97hfmW9ilsY7LVqPyh6roB7dXCkf7u8LvWtBUDGr0pinfFkCforzT9
	 IcZtEFHm2q2CkWXNVD/Yp4WZgbCFDteq4EHfNiZVTNVyLjvDYfllw8RU8SE5qoC1T8
	 BXkoICF0+F4Tsxl85wXkwZWVOuD8a7aPE5LmRNWdaZlU8vhvM2avgmr3xcuY8jp74D
	 Ljol19ag3q9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE79BC61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806363377.4696.6545930433723184108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f223847748b2091cad56f0c14120e11d297b48136680f2b815f2b2c8bc153c8d
Date: Sun, 30 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788063633
