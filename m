Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CB32BE65B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790825436; cv=none; b=ptyHHo6ssF4j8Jxu+1pQhw1d5QT6u4oVNrS2vlShC++sghUyM2T4n/WLud2kYKn2x4e7NJJdBY/9MXfFRpOay7ewHzrEKhjj8Wr3HWqF6PLDz6VF4UKE5tVT+5Fj2kPWhEf38+OcEnpAXW3C9PR9jlnC5mdusPc18jHhjXD2Ycg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790825436; c=relaxed/simple;
	bh=zVCBAo/V7KENT7mL88N6gOlgZEK1K90jKRCI8MF3iP8=;
	h=To:Subject:From:Message-Id:Date; b=n1Tox2DNyTNloNKH0k7Hnxz11v36mrtkznFAK1+6PADzwFC5fKQ4gIk6wCBDPYdJPCgjFHQ9hndR5GM3qWalwqFEGlNcKETqka5+hKm0dpnBVTmnxmLDorvg9y07CLS0L9Tr6MiR2dqkxmszUhlZY5hw/BsxkjjMAd0pjOFCLsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DesFRjUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DesFRjUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0ED1C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790825433;
	bh=zVCBAo/V7KENT7mL88N6gOlgZEK1K90jKRCI8MF3iP8=;
	h=To:Subject:From:Date:From;
	b=DesFRjUNCz40s76vJRYHIvMkQVR2kFmGTrNkm+sOV2OjHmZaIu98SbZqRPH6AMPeS
	 GV1EJugRGqQU1vsxWn5FtmSylxDGlP9djdsM2AEXiGFjW7TthJyvO7ERlzNReRett4
	 wX8Y++NE6XAQNU4924kU+7Kz/9B/71ebULHW38uSIxEWWkZuUDRjPob1p0KdstFWjX
	 CbJYlqFoEpr99j4HbyXAEaUtkWTtx8nE51VJIczVzvh8KPwQd80ozLZmKT6um1P/eA
	 H7fMtYXCt2KdVo+snm59+8YN32dN+Kog7YSFTpRWqtHmES3h3P3fQoe3tn7fJ+0yu/
	 6FBpH6AsLGWJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A33CA5FC1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082543368.5494.3621254812434565339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b445948e3bb4629a421f6468cce8aa861400245163c165aca05442a88d2c1d0f
Date: Thu, 01 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790825433
