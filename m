Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB10B500954
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932033; cv=none; b=anbajVDzVw9bFsYK+JxG4Ewr6NcD5tZ9Md5iFHoIQg9RuOPg0rV12KbtA8YLX3UTFO72pOaxIrKIFxTL7/OR/hyZqTeztEsbiVSKNfa/ZJ4YAgEI4rYPVHByt0k5EJc8U9pfwL/GehRGg+7emuPIDSfKrf5ZgfYCdGaZU+j7VgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932033; c=relaxed/simple;
	bh=7T14QVU5DrF7iv9GVV4a3FBU9TKACW6oB6pDvvKMiSQ=;
	h=To:Subject:From:Message-Id:Date; b=FK7PDiFTpCjljy+JBvZekAKr1V+pephJeu9PfqXxFiwSftQb+9GsmxUNlb47/RnRsLbuwDVGRvK1dSiDXdXrQEgbAJXZ+2J1F8tUUFalVKUSEsoQaPlM4XRkcbtVSkcYNbZqgvq9vwXb28REjRhwKnNXMfUpjWXNE1ENOQ6td+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoibJy9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoibJy9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF14C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767932033;
	bh=7T14QVU5DrF7iv9GVV4a3FBU9TKACW6oB6pDvvKMiSQ=;
	h=To:Subject:From:Date:From;
	b=BoibJy9l6t6gawArsCZiUAETolvOK1Dn/Uumgw6fNPzZk33W20hkh+DxS2ZT2LEK1
	 PvUFSz1iOH8khAF/P7G9MrHiRgJWUkHLsOt+z1JrEK8LJbOMenwpBGkwi5W61DPwLZ
	 6lMT45Avum6w3IfMVbPURC7Lk7SPT+Ait6n4mSDgqlMPFwCEa+4LgYRmKCQBNK7Qqe
	 dGhpy2NUGuyTFZLXR54f/Q6z9MmyNFC3NvF5JzOxUiolD2/Tc0zqPUlNR3YEuSvLNK
	 tlviQ/vbuAdW/L7nAUqEm7DE7ZSPriN6aB5bNuS9LiM0rjGbhSEFK0KLpjYr1z2ZKn
	 nF2hmXdtDcJSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B5D232DA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793203357.13672.6264044128437130353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18b16da4cfe7b97977e23c31b50cb2710514fe488e9e61b14ecc77a11a7e967
Date: Fri, 09 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767932033
