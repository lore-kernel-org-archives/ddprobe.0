Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E112304BD7
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758288594; cv=none; b=soZLgIW71xhGo+2WxY8fw9UktZezkscIHopflzjhzAf9oQQEc7TFfrA85ffHcvPdpYp2x/9hkTFgWam7I4A0l5K2Ag2ozTTPZmbvVtdwJPLi7aLEN+Rfl4Lt3cisM3K+Y6mLTx6SS9nplZendpHV/QaHVgFXt+z7RcgrjJsrUSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758288594; c=relaxed/simple;
	bh=7o6uzukkT8WfzXZEcN+RXU06v/1u3CrRAsDh4fLArQI=;
	h=To:Subject:From:Message-Id:Date; b=UKOuEqiPQ8wRQ8/DX5iAP4ciyJMVCTu/aXMFqXe/i2010n/A4PWJQuL2KJwhrimisS1xCI3iuNesUODNUBklKuMEK7jBnJRq/VHkNDzEWXBUFtvpIkpqni8vNbTbaK6M/3l2QLnvwoBDoT0lmiKJaS4BnOpNLP2uLSh0iYHAb2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r20HZROn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r20HZROn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB284C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758288593;
	bh=7o6uzukkT8WfzXZEcN+RXU06v/1u3CrRAsDh4fLArQI=;
	h=To:Subject:From:Date:From;
	b=r20HZROngxFt+zNXl2yYq014tP6G+OA88eqmYFQBHSmd+kDyniQajYqgxI/X0rPt3
	 LjVLliYwOW+MTRqOrlIFp1aRcH2sImTkB7aUtmtJbe50VxT4K3/iQmFhY0vnqUFbQO
	 +TiOtVrqGbqbGoZfID36a3WgyAjE0DM1f6XMS5ctbrbL7OV49kMbasfMa28wZvSloF
	 XF2qvECtOfHJq4YVtyaRAXLHlSZcPdp9n8e+1zDen/2iOiP1cR9Ztz1+mprMjITCOm
	 Hq5MOZGCHK8Fy9EM359R0dbQQdihqTo45ivHh/nclwnAplLJkuWvGVkh1hFDRz8lk/
	 pcwhcpisUcj6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97448CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828859360.12552.13781485371012301149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14ed66e83777d6e4ebb8af79744e9aa37dd7847ca9ad32db91452c1647abe74
Date: Fri, 19 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758288593
