Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DAC2D8360
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754868594; cv=none; b=PGeTCuWxxUQAVFjGMWv4zEDqB3dv/2sYqNo+pHZ4UXmZN49A76k20k6UMMH/cjKiervG5q3qXI2pRD2HooHSiHYO+XpAHgUNKTf3N1Kow4eRtk8ZMsJroVi3PxlTyyZlsDUZaUgYEKPsxF1ve522cHdHV0QhMoXOqkAHLnyvul0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754868594; c=relaxed/simple;
	bh=K9/zs3rZQUqIX+Fo47wqALsCFIDX+4BepqEny+xLiao=;
	h=To:Subject:From:Message-Id:Date; b=FeZ13mMPubZoEjXzTnc/9Giyf9N4h8Xx7Po4KOdkG0Q6+kJO8T6m+30ZC5EwZaKv9r7T2Mxx9iV0i+tLjAHNTfqP9N5hgO0DLVMZHceF5KA990v1AC0LPI/GSej44m2mQ33lOCFF0RBGDtQxtQU3i5do0RBJ8x5IQbJNJgpXyLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVCdPhsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVCdPhsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B5DC4CEF6
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754868593;
	bh=K9/zs3rZQUqIX+Fo47wqALsCFIDX+4BepqEny+xLiao=;
	h=To:Subject:From:Date:From;
	b=MVCdPhsG2ESJf5npKt/l/U2eB77hWxGtMAsGAgkxp5lDvIXBaHUTJTBVkdbUMTtP/
	 iZHRe06EYzLqUbCFp5YeEe/CRD3o5vad6oLpQ+bhqOX/ArmqFzvdaNMY94N8mUTe+a
	 fqn2aMPKZsJHWY2wqaN3LA6iG3RKwrn7QFrxm/YoXpTDRgomiKj5KHQkizho3xvORR
	 Al0A8FV8mQ8FbujWuQpXWickgISjT+yqVnb1WuzwwZxB6ACQ+VyRGwMvC4tLAfPLHg
	 PB54YBtz/6JJFi+asyn0JIQ9lAgIXKzMJw9lEvER+TL/MhP6Zf/rKFYRhoMy8LAo1Q
	 gYwAXhPT+AxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FDC87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486859357.4200.6906862822637697805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7feae51453cfdee5aa95e69946f15a6730de3bb9a3e17e4ae18f61b2fd0b4a0
Date: Sun, 10 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754868593
