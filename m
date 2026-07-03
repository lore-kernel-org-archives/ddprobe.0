Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5087B3D566E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783084714; cv=none; b=fGiBntbdECTF0VvrjsLi7MNCEUgbPOFaz9kYVgx0dvgBlF2Z0zQpYS42xA+2vj3/TeoBkabgUc1PBuwTjUxZtuIWlE5t89346W110Ig2mYxwuzNnHNCqLNrurdpcdZWBp62hsAM0SltN5G8OFVWDSXqETKuzvRKvRHcbRZNVwU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783084714; c=relaxed/simple;
	bh=Yv0hdUgmmsSb+AbUmYf18T01aHT6t3eIlyw+0P7WLmw=;
	h=To:Subject:From:Message-Id:Date; b=OtbbplLVkt1ym9bApnAtSeqfEKp3BoQuew8ZDfUk74MswdzHgWPdLo9z1QrpVEi6wNovC10oCZNH3XG2qc5Dmnr/p0WUF4SX6P54iTyLvd+OGRfUOaR2JwSVWyDxk0XstT+mzEhB9pPTLoGYYVOaJIaCNvHEp8iOYiaI/YZrheI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1C9za8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1C9za8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D73C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783084713;
	bh=Yv0hdUgmmsSb+AbUmYf18T01aHT6t3eIlyw+0P7WLmw=;
	h=To:Subject:From:Date:From;
	b=Z1C9za8mOKaGZYn0EqTQT8BZRhbayiVpz3tuR/4ko2jM6ViPQzdroSroKAo6I/mrc
	 k3uarFKzMSWQc55zUMhn9Zi6n9RH5cGdFVWSV5EVXdOsoitC1lnac9Wod2g7C5iWpf
	 qvlaaJkA7tXsoPTjKRb2i0v6X+1jXpYEaay7nRR5u4tg/EKsk47V0mDiBKxStloqqk
	 tBKNqO5TCmSntdwJh32vIaKzT9e4eQ5/fMsXZpyZe5nHWB+8JNuay/VsbO9UIaWxtn
	 86TnEEQU3bsAHnzkVuj2fvLdZCfhwFJG2rrwJAvKnCbZzd+jv+TwHAD4FQ80qbbtFS
	 QzmhIS3vhW5dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55CCC44500
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308471373.31412.656375757733332773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0503be7467bf54b984ce939fd29a153282dd4d36e31340f4bea4f22c487f87
Date: Fri, 03 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783084713
