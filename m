Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B41641C60
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726931154; cv=none; b=ubhynAUa+QDeY4DmfwYY2xz1+9CLx9Fv9Di1SA9xMclLga8quwBQ/4goCBJQRSQu9qGH6sNWhYhuwOIqibo40AKAFG7LU6bXRwDhE/dkNLLwpC9NpLmLlffiMTMycTMDQeWH/Vf+5eVU6iHJuO2YRQ8oV5/MHBV7B3mJBgSuxJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726931154; c=relaxed/simple;
	bh=H63Z/2PpVHmcOHcEitKg3dI7vUP23+5BbMW9zhjEzb0=;
	h=To:Subject:From:Message-Id:Date; b=Exb79j57m9p6c0BDvJoezZ22mjfJSTiaOdoUr+GitlIyHaxHiQl4beD0b2UpeX0sRs2c3BwjyXSIquAOoM4UJsaBfdU6/FSY2xefvKPZaNFuWQ7Tq1mCqv0Wx2HZCnxh7ioU8q5oPgxSrR0dHd5rOqL3m/TEa21uAG8z1BfeiZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMKz0NPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMKz0NPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2F7C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726931153;
	bh=H63Z/2PpVHmcOHcEitKg3dI7vUP23+5BbMW9zhjEzb0=;
	h=To:Subject:From:Date:From;
	b=IMKz0NPkLdLVaGOxadfPhKuce365DgnfLtjBlJt8Ol5qs6Us6FKcBfbT/BJcUYaBh
	 BVPxwZRTKg/Vfnjn8q/I19CTX41qSHVVnOmLDqll3+tj7TRmcKQOpjNSh9vL6pd5KY
	 6YmLgCy57F4uVFBEjJ8/0lymShKwrioYdraCivzlbzPVMYnMx21rBorqm/6nBWSngz
	 CX69sg5w7pbuTeIiZ0TNPEIj5PZHZeLPnOK0WNcQ6nibcW9JqNntRFSBKMYbHpk0Ij
	 F3Wc4W8VmhtFNUh5AVDVHBaiLktA85Si63hz8rwaa/C01o9+kayoCFfnRRGdn26PRf
	 syI2z+7MfGzVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9545BCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693115359.27989.15507697151893583044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495c07c15db2dc4967d0b67828d8364b494e8ec066cc710152b300eb437a6956
Date: Sat, 21 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726931153
