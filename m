Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201931A2C04
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771795494; cv=none; b=h+/Vqi1RbHWJDwGqKqOIcxZEeB/ldw1HkWJce3cmSY5v8oitru886FV+H52ws3265C1NwfIO4ZtBC/XJ2w2rTFCJVpHRMruO2SOvMc7y3uPLqCtvRb/5ck0oGXzUqv6XokmN6LgDtcIoXJ8BfsEJFs9K+nUzaF88jlXzD+Xjd0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771795494; c=relaxed/simple;
	bh=R2KB2FJwuDiQga++jdwgCBjpAtYJK25Dw3q/ssCVx8c=;
	h=To:Subject:From:Message-Id:Date; b=sQYh84OVoh/+EhM9N6IuPKYTu7rJVj5aL2LlNXatM4FGobZAY9CDasXx3m1lNGi8dMCZkgqBgap4HjGErAw1IM80Fb9V+YnTH7+cq99hfrVuNeeENgNsR/4OMIv79Ei0jy4253vglUFkZ4J1ibWL/SxXuv+Tm6geU7iGqVtb6UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkKW3Ktf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkKW3Ktf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9057C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771795493;
	bh=R2KB2FJwuDiQga++jdwgCBjpAtYJK25Dw3q/ssCVx8c=;
	h=To:Subject:From:Date:From;
	b=LkKW3Ktffda5U8l22BuIs2a9/ALurMc43mGlaNLUz2I3Q91gNRhM5UifI5QE43lXo
	 9AMIwHuNMIP3eggkNeg2LGKNVdw97PqrTLGi3tPaTc/XLHJKwIwhBmP3bfkbb34RXx
	 ktJXmROM94J2vuqUim61QZ1ANtJ/B7K0w3QHWiATqdugnzzQ3GiDvuVoByNCTUm7eM
	 v5sp1qWM9WmlQyDApMlTS4FJ3oGY9R62jGh1tc3/1fFgBGMdv/uvyoRbh5zehl0eVI
	 Az3hLDPR5h/mBj5b4ULh1qqVvGTcIIZU0i1IxwIskl9ogRhJ0d1SksV9fYg8CWTUov
	 74a46+MInxpnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E1BC636BA
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177179549358.11981.9833792848864547809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e417c955a8b62270d41c2391f390ff09eb10c8fbea823d6e5d6d1d4a28e426
Date: Sun, 22 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771795493
