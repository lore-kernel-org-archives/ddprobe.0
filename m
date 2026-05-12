Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57CD4C77AD
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778580634; cv=none; b=NsqAqPTrLx8Qmec4Vm3as7VTT6RM/JpQspGkJRejk2nafgknMVX+WTyIQhp27fTpPjC9nUIow1r9vfJbIA4b4GPB6qAGPHKlAYxn7D4M21q1sZYACIfoiPBtgM/BQztzjnun8ewWYoLaBkoYEqWIoT2d/wvHXMbtHAXsCuOjGsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778580634; c=relaxed/simple;
	bh=QSHmgAZrNOqSB1pYVe5IbWcng+jJSPlBUnOvkY9v/O0=;
	h=To:Subject:From:Message-Id:Date; b=KY2BaI/6I71vHLv2K/VT7C/XPu77k34yw6ITv9P9KzuVqCK8e9dTwKAW/xuW+mOsVg3KDjWcP2PErWiTeXR7Su+D8bWXL4F1cr0XC9u06bZ0Pw0FJDgxqfPqsCbEUyvSek1x3cI3a/BYwxs7HtShYlNOn58XkeV5tRwFjt/Oen8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFA/L2og; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFA/L2og"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB83C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778580633;
	bh=QSHmgAZrNOqSB1pYVe5IbWcng+jJSPlBUnOvkY9v/O0=;
	h=To:Subject:From:Date:From;
	b=bFA/L2oghpNl+3Zz83LZ5HA5OWgdVnQjJ5oYXu2fmCaPJp5L+OCgk7qe0gdTWVOQS
	 2QwGPmPrJIUsrDKXR75VJw9q9fouxkiFgvAXEiT77t2zv0w/g7ZI5JhJwoCpzmlLOa
	 KedUFaJ9HTdzyGSTfYeihLy+7+91vq+CfQoJRSzRilLB4J7bcCxZYQ2U2MSa05fp3e
	 6TGhy5rHWkluQr20hF/obNfbzE+vsEN929w8vwnj9xstc7FxtlixB2F2TegWTLxMtt
	 1BNykNPgiBgWik3aH50uEfMRh5KFIFwaSpusSBGRQkWO+kE04WD1besMuxj+bCG0PJ
	 MLq0pqTtQDFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB224CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858063369.18523.16421809555679814337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df0f2533437b0c7db225330119536be50d8ae9ace98623bd9d050215c7dd24d
Date: Tue, 12 May 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778580633
