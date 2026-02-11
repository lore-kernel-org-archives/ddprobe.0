Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EA32DC763
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770848094; cv=none; b=aYciJyD1JJJHK/BBPDX2HSreB/11zeyH2eYdDYn2xYmzfEfkOzUcHOlGhtujwXmSfWCLSttkIULNwn7pCaCxLRiuwiDQREtDyxEGoUGA5MIejFvD2l66dQhDtk1tVRIrMSPru4P+4C9lJDabpEiqDxoD+8M8hezz5L48+uePMM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770848094; c=relaxed/simple;
	bh=P8nFXVSvoi0QUMn1YCwknnZpbMTKhNUhKRa0FRO3DXk=;
	h=To:Subject:From:Message-Id:Date; b=KTZzveyu+Hr5Rz8mQ6MmVE/YuAQvqyqAxkm+tnnf/3LYonRqDBTryhfbStAbCs5dkeSd1gkwkuPW8R4Mq7KQCmPPqXGBi8SnJnntKdf0DVmAM6ofN/AsEJBWICNyuD0xGvh4b+r2AVy1d3JM5cAXeHxI3tlce/tWm986KKzJWNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h20S2q7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h20S2q7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C630AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770848093;
	bh=P8nFXVSvoi0QUMn1YCwknnZpbMTKhNUhKRa0FRO3DXk=;
	h=To:Subject:From:Date:From;
	b=h20S2q7fAFiHV22+aSUMA6MzwPnE6kq1PZAZJlwT9GScSNdg+YfoDkftPVhxzQkNk
	 IDQg/z28J2r+IvARIPAUSEc2DJyTfUKYgnSHI2PtOVTCND8IXxXXEKRjXfPXgsELhC
	 9HzWFfeVcvAXDMdYXQHuQO9t9YsVUbtCnuH8XAr+tcGGhol4dAX6BW3ImoT+FYUnSq
	 bEP1begSSRtNUex4PXnQjNWIAFAxso4MDyPtJizxA5oyUDhec6TJKsZoyUyrE0o582
	 Xd0JsLXdeZTD98QYgsaT/zwFd46ES3Gy2xRHm8AAu2Ec0iCuNernSIupFFHA4SuFVI
	 o86oALS0oFItw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D69ECD6F5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084809367.16137.4073161846820372996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88aba902f0041f2073a220b64e20e77572445405e847e86bdb3c76bec0a6a5af
Date: Wed, 11 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770848093
