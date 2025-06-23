Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156A91DF977
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750663794; cv=none; b=JB82n6qRHsjgrQE+mZehkpLqTg8P/KFEQe6ikDIEvEMNSfzrxFrtc0xH8iV8S8Pm/QN9erTrgMeNtE0TPgrqQpDeUscdErWTHhnlKrCb7rOOgPYDjaxfUef09W06W3GIWC8Ci0seD97hFhPs2VEJG4Gct8AIpoUfyMgXKN4n6To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750663794; c=relaxed/simple;
	bh=RUYjzQU+fKLGrk0Y37AeV5HepyarXZVbx+M0TzpP+qo=;
	h=To:Subject:From:Message-Id:Date; b=YFvSqLJGQm42eJv5v336VXAOBmRbs/Oe0S5zYzNhZc8cKKBRyzStLocCdfgMqFEGXwyfTxPrSz6tejFr66Hns2w98lkj9ztVcW3eZoM3LvL7jaIj5zzgynIpXvJ7mLbu6CsDFM6mBjIFv9th4+fM2V4Sif0w7MhSd1Rd8e0E57o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suJ1BoqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suJ1BoqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BB8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750663793;
	bh=RUYjzQU+fKLGrk0Y37AeV5HepyarXZVbx+M0TzpP+qo=;
	h=To:Subject:From:Date:From;
	b=suJ1BoqTA5jCO+vVaWLiSj6tHL3OW38+G7cTMX8/ash58Yjoc89oI6b0pMNjxaSF5
	 WCcngsrUbm4e6smd0mWUywERNcTyZ2Ou+NsPmwpeOEsnyekE6ld3gj/MyvDt0NAWeQ
	 UUd51E9h+InfL1ZaQyMf2WNvZcyhNHP8M6h0dkiCmxH+bPIj75MhRQG10ztlen9hiq
	 z+cpyUWh00w3AOF0obvYbZO7Ib/Gt5oGWxEH7cpQm3QSk6XUUQ+dlSmu0or3qSmQsp
	 uWcjnDqywxOBjcAVaV3IpGxRyjXSCPrlorScU59+aLYG8Bq7tozIQx3GyRu4fNj5qc
	 ddAmJAeuB9JIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8BC7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066379357.18113.6768836539766693269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8137237c229a881434487d48a35a82c83f7913b2ffea1621511645e8d2ee5f66
Date: Mon, 23 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750663793
