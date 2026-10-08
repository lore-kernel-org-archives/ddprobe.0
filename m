Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB6A4DDB31
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791484834; cv=none; b=IVGLIBnOnOtkt96DmkewKO03eMgC5VT25kXlnVd08unpQF3ZWYyHC1QrXfbOu97479CzejyXSWpyFaw/InPy52pIEC3umPfgyjP1hCfrIuFJY0TI9PKFx1Oof2+uszKNcqMTJrjijqBHtYc2UI8a8pJ14mM/mQmFvHrFlnMdDcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791484834; c=relaxed/simple;
	bh=ISlsdbBb4NPRJxzitHbC/5rm9+l53le/gyzOhVnEfhc=;
	h=To:Subject:From:Message-Id:Date; b=TBiYnxBlXPg7RExOrf99sF8pR+on02UewdqD4r2L1KD0GFw6IIrXG6NMHE8k1lMMKCNQY7lIeJ5vFxc1B/1sAa9v8h3IG77AwmmeLOlHlrYZKrrTu58c6pRlNnw5KpR12S8bwfZTkDL0uFd2otvQsgNKHm2jBrgeVbTrX/v1CPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gmq81h/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gmq81h/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E24C4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791484833;
	bh=ISlsdbBb4NPRJxzitHbC/5rm9+l53le/gyzOhVnEfhc=;
	h=To:Subject:From:Date:From;
	b=Gmq81h/kUxnKA5f1zHjYjCq1qjT2duuay4fZWgMgZxSLxDUY2oF10duI9rvD6VsAb
	 LeKzZchneL8onTamCm8yUAIbftqRrg82/jgpa3qpdlbRnwmbAuOncJBSxr6eTkeR4r
	 4EgiBcx3RAm2OgMp99NhIW/itW8exI4bagCmZcmeoZPIEi7/EWRzd0YrzdXzD187XC
	 ZnU+vapG1aL+GKli/1ojsBhubq2HKJ+ikynbkgLdp76xu0+0VHKq0dqe/oywPB7Mgc
	 H6vHtSX6pC9fXtNlN7L+4wZdHFgSCvvUaei6qUqyoN8xJSkmWkdzXTa3oPFaaz48kA
	 4/RG+RIgDF4iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86F6CA600C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148483374.12409.12301833870537447040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05be8d881de946f7478a8f5bd4c73ed097803c994d6a1f109cfd280eabc7275b
Date: Thu, 08 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791484833
