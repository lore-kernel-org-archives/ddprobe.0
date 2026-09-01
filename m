Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4BC37C10C
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788283834; cv=none; b=pjNLEKgsNLdXyOyewP2u79VCq0MlEuApLXFPAst8z1lq4Q2WAp2ZD+LZHWW7EXug57JY8NxBYVP5CxWo+p9odxGKxbXAbg9IQPSEssukTSlcBazryK2znYvQXApuwilYD2CvYqUrY5Ah0uONbnnG4n9q9Rwv1TYLSOrSSvuSaCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788283834; c=relaxed/simple;
	bh=qQPlrA2BBN7lA0MInXpsLijW9+LFO1OnHn3y3Snd14E=;
	h=To:Subject:From:Message-Id:Date; b=BEDzyuRWM+O29+F8Nwi4Rt83jpw909bDbecb/eVphxKu27OkKWR17u6+MJCz4oTnQdK39WmJDXHO91FrKeD5ShMQKyGxiCBMjf7ZAj0Am5nJAqHmsYewGf3X1ZG4Kn6BIXqjLSrMMoVyz6ps1qETTzojjwISLbRYDSZAP4xAAig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoIdVfLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoIdVfLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B51C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788283833;
	bh=qQPlrA2BBN7lA0MInXpsLijW9+LFO1OnHn3y3Snd14E=;
	h=To:Subject:From:Date:From;
	b=ZoIdVfLkzY5U+3jCVBjaaw4j0be1EPJcFs4wG7odBFgY1hl3AeB3PmizcU4QWMmgk
	 sb/jd8tISzR428d4lKfNFWUfzsTh3CisJOkagpctLeHxcTu31JDIdZye/XQjp7IEsa
	 PAX5FPibY3OTUbyf43av4Jd8285UX2/O5+fIjY3ssUBrMsdSBtHIXLZfkgmtSn76ym
	 lN+ni8ETGWi08haBE+oXcXQhn69nHc3vkfGRNgA4JidYXfzAS4FdLa8FADuQVkPgDj
	 5qDVoyftWJ6/78kt8LAbDDBuyLyfSM/U9SN+0mSzKwSAuG3DmYsthEF1eNmhSY0+3i
	 d00oB3Idn50FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6BCC624D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828383370.6740.7900239420239757351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2462c4a009d3bb9282bf599d46d4619a5c33a05cba7578de1b70deb77a3b37d7
Date: Tue, 01 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788283833
