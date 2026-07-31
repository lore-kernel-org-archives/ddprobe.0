Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627CE3F0A8C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785499834; cv=none; b=cqsYcJR7Y8ATcD2Bct7uhS2Bbpeu5tEvif3hFPO7RmwTsV9Vwg1ctMGIBfAAENFpqFdfcHtsasAYt13Bq6OTdXjetGzTZ2Q4POG/PvqFeY3prld2KnNC7ttNz1mKSKuxV6Hxt1dLXeZaTb9gb56AuhFqptHGwKia8z/1tocagF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785499834; c=relaxed/simple;
	bh=u6/eIfriQrDxYhR1zfdxLdI/ZV6RJ6kw+ujOVg055DE=;
	h=To:Subject:From:Message-Id:Date; b=QJ1CarE5SkrY2bPoQNnJ11tJiaG1j9HNwQPZ1wcDa4s7wHHVjM2GygHZqya4kAnXZMM2uB1On06JLlrzArDo/SES3KDb7bUcQtNBcRhXjCJOSjgH3jlKsvS9Yuw4QnSipJ8JXaABGjs+K6CAyuhExyaOIWajgI4Df5zJDnGaH94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juIPVHaM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juIPVHaM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD86C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785499833;
	bh=u6/eIfriQrDxYhR1zfdxLdI/ZV6RJ6kw+ujOVg055DE=;
	h=To:Subject:From:Date:From;
	b=juIPVHaMylFVFVOZAz61CboICaAO9+TNWzMpRobu7FWP8pime5+/eHBjlMngZMKsW
	 5BzutKpEbygcrpSqGODnSqIpfsCW7s+wPJ7sHnPQKI37ab1iZwnQG5qiOmX7Lpmxpx
	 iCthCdl6szIoe2uX1PAJT+Y5PM3jjlObLEA3kV/Opshp4MNYq+1bTe5PD+xphROmQh
	 ZmeomnHSAjfILb/Gt/tiEIVvX9mhFh5HH/xRIrZiFznv/yjSbz60N3CB4wZmMt3Lcw
	 CTWv+d9LdxHBMSHXH/zM84/pFtQly1dtVsF8CivH1Kn0Vv8wCu2UDgP8J7NUhE4ger
	 BRdLAdBVvtWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5729C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549983373.10085.16470966356359969972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a026fe4553e1eb3f38113dc4d07d2f57e9a576712b36a88a40100e632cfff03
Date: Fri, 31 Jul 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785499833
