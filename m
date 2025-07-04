Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C3D25FA10
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751611194; cv=none; b=T0BVEkguV4BEOn10pdVxC+9S2fR4j7jf/92h908MhZxkQVZgVH4g4TLUzgRnExAiesn3ZK4pHCrNRMW02ybYh/7S1T1m0i9CSdMCL6fdvTC1CGH3MqF4o32s7BN71aXFS8Sq3DEt5a7j+IbA7DWRqurx/n3IUJ9eHrLEk0eTAac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751611194; c=relaxed/simple;
	bh=u4NpoyplsgBHuaPsvBG9+Xp3JvJfxT4H03Ev3NsZXKw=;
	h=To:Subject:From:Message-Id:Date; b=fK1G7Vy7fYdLsZxC74ZD2DPY4MmzP7EyPK1TwdEdVmCkvhr98kKkQTv38i7VDRuYPDwQIqGiS+To4O8BbMfo+etIsxz8B4Myg72ELEKB2bZblR7ruajIbUvQsNLzifUwzSUWTo8JcfS8Il/FtXSoLkc000VQYFr0I8l01dlyvpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFoJS2im; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFoJS2im"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5199C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751611193;
	bh=u4NpoyplsgBHuaPsvBG9+Xp3JvJfxT4H03Ev3NsZXKw=;
	h=To:Subject:From:Date:From;
	b=sFoJS2imUOGzN/tnkbbrcg/0DEEN/ngrmWx15oFoXmldptOZRp56CECGVZbHv5naQ
	 CUiUgJnIvAKuFZNU2rrAMFOTOp4dYkeXNza9opg6YqzracI7hyC8mKYXhUiNYXZfac
	 CfG2+Sx+CcrW5F3dzx+VH6ELKtTfBNTWT6poZvNd4b5KAgeTrMpOsKXaGB8nqEWaYY
	 n9vdf/qyOgwpWceVxE3Pn5BOR2a3EmLHsKOz9kupOSBsxTISfQ5snm6M1HaARRStsj
	 rFE2KO0NDknknJYZJ+hbwK5xfMhsduBhrf83ZRg4Aunt5VH7aPClRgEJREUcjwaOXz
	 f3CHLIUTi8QVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93108C83F05
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161119359.19887.3570391137307360526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb786c193b188b3304b3397fed179fa7a816976264a2e575f2aaacce469120f
Date: Fri, 04 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751611193
