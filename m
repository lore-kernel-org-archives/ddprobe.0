Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B62E375F7B
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788851434; cv=none; b=B9bbcWsBVk36k3IehUrc23CpBlqzRJblIv8PxIhLX3Ak5YsHG6AQIeEm5Vnzxoc94RXEhl+kVrL5IQHnBRwu5KXcRFg7zAU8Ms96429rLReqtSmZA2i6VqQvOqBaVHJbWXZ+vmxZ6Z2w1h/A+TRtbYVddsmhOaFSqBRcJUjpDB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788851434; c=relaxed/simple;
	bh=ZFchvchRrYLp66UuOcJs8M4WbROXmloIVblTW8DXDI4=;
	h=To:Subject:From:Message-Id:Date; b=Ybn2c+kGM6vLL7Ha6a9pbxSEO5yhNPgk/z2W0tVubnenNO5tsbSKEZoakABxBZlg46CQzkTgsIJGWhnCWvWu34M0PXxKVdpkiIwPq9obe33UccO07LimdWOLgGEfLj6HBBPLH8jAt7CBJMUjiUFze8Cetv9ISRKcv1wjZjn571U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZM/NvciV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZM/NvciV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D113BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788851433;
	bh=ZFchvchRrYLp66UuOcJs8M4WbROXmloIVblTW8DXDI4=;
	h=To:Subject:From:Date:From;
	b=ZM/NvciV/XT0Y/ukAhewo47Jkb5YPO1M2nTB1HDrhp9bYxjGcEO2NMtWiIllhY1wh
	 2K/o5znAb3HOvf9oq/tUI8My6ECglcIBZ0J4fHuRlKhTPL7qdSCSO2HJhJqlrPiJBT
	 pYVzzjdGU8k8lsOCWXfSwUpnTPGeUd4vLuFiZcWLJJd3QTdNIEZKpevVo3zOGRi76Z
	 IuNJX0PJMftJLxhiBH/tyYOllnUmw9Q8zwDDqHosEc8hI6+6zV0oL7SwNIjy6ThG5w
	 DAlFYwDsDocAhviiGOlZ2Hf7sHDD71StxXSGGWCTDi1znLwdQ7ZNaEJs6yBEYYsAmv
	 DG1UD0SNi1OjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE678C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885143370.5699.14689586662160785083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289c4d3afb983fb7bdaae8952010b963f0376b717fb7389f84970f750e93fd37
Date: Tue, 08 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788851433
