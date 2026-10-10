Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5E652F8E85
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791669034; cv=none; b=IICKz8NLeXO3mf4DOIDTbqZByUNLAFb7IJPznNmyR09LlAWU3tuEPafSWIiUPhgOp6hbWnyL4FbOtbrOAzn4KxdbSJUg0yLYVx4F0BNjx40DbfdbCf7DwrA4mbG0TgW5odklTaihI48HUV6l/HjZmUnTo74QO/tWpJhAu+BDpZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791669034; c=relaxed/simple;
	bh=sFsJnGH/d9d1ZHiC6co0l7/yGinWU1BHc7jqTwcqGVE=;
	h=To:Subject:From:Message-Id:Date; b=gykklCdK6/gVZ0KSQW/RQzuUIgO7mIUNlnbdY4ydKGsAsYpsuarHH+83wTbm32OjS+h3GH415K8VfTWI7jwZotFmGlnowjFtv2Qb/OgyfM73EIIGd+8Lx1q6uAPgBM6ZCk0UiWxVCThK14T8yEb3WfXcrSp8wMok9V1OWR/cDSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzwA5989; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzwA5989"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DB0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791669033;
	bh=sFsJnGH/d9d1ZHiC6co0l7/yGinWU1BHc7jqTwcqGVE=;
	h=To:Subject:From:Date:From;
	b=dzwA5989lf44V5+EtAd3jx1xVFDYX/pCVtHZ1/TtT3GSTpo+/TPbLf+99vUFuVP0w
	 D7q6KMA1zuETRFYcz/0kkuYRHYdenHAm2wTXq48Z+A+uyCG+w65/ECMRXZmP45a7E1
	 UoCxCC/Fz1DLfALYbWEhm/b3uiv2soIJ0WfmRw0lxMsEdiGigTj+MyhEh1zZY5Jta0
	 s9xFTK7jneSEPQncSlHIwB1I8txXdky5IwSelGAdm3NiTBA/jsNd6ZrONOO4AanHWD
	 2HDh3MxGkRhiOTyRPmKjz37kTCCWFljNDrCgzwW9+rLuy/ccsu/KjlJp2JBsiQPIsu
	 88atHoBaYfZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1AECA9EC5
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166903368.10117.12207738507132058860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02027ab848dd591a718853a3d4ca26476782ce05cdd7d24662146202de007229
Date: Sat, 10 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791669033
