Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4232BA20
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733501153; cv=none; b=Mwry2yyw3F31vvN4K+0ZH0JXfI52UTwWah5dHSRqaMRYjy2xeu5n32k8YE50nTBV2Z3bmEMYDPaZzIh7s52hKndyuvgypx+VCO+mrtq40PpZD16L3DJRMhI4zNoJLfwBjh8GAb45UUNrIrkxSUoe9YdBUDYYGF4zBQRApqZiDMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733501153; c=relaxed/simple;
	bh=ZDz03I3jrzavuJA7CL+gZDanj4VPzvS/6Phksz9LUeM=;
	h=To:Subject:From:Message-Id:Date; b=JSjyy7yI8RRdvQJ/WEdjepxPKbC/k6BP8iicVJ1ldRTt5totYlKCmYFzUeEpL1AVrLXVlU73umZ57UcxU2VspfdWccX3paM5yoQZGVG4uAlv+x93JdzyUnK3y9MHPxtcmB/5S3HnCJeGSPjM0IXu6x4eb2itwq5/2b1yFF50q6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSKSU59q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSKSU59q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99250C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733501153;
	bh=ZDz03I3jrzavuJA7CL+gZDanj4VPzvS/6Phksz9LUeM=;
	h=To:Subject:From:Date:From;
	b=iSKSU59qqZcgBKiy1Dt53aD2ApNgqE9Vr6u+QcqwaU6CN5Dip6eCefQuSvyWAYxdr
	 9x0aDndzGJRaquJT4QDDUoRt97Pg2K5PtimCDGOgI0zzCBpXE0hcQIG7DBmytsy/GE
	 nXIXhXAG40ITuG2cR9atyDYxFfGMiTo0EeD03V3eDRfoeoULqwDLj65sNmQeCFThHl
	 wSAtZel4BGttF2SwJV7M7y0IUTDsIxJNYt7GvnHB/ERY+jUXXz29SVHAdq3IHYTgoa
	 mJbd7IgGvfOJAjX5MoUJobP+lCRhYZY9u9QmwejbQcyXos+OC3sMGhqdGf0b4QW44N
	 hntX32nym5N7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECFE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173350115358.21286.14173113473903448302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c8d0b1cf8a22ef2c4d515ee14b68d8108c1877107d12ee6e60f870087dae12
Date: Fri, 06 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733501153
