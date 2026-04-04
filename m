Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDD334DCD2
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775337934; cv=none; b=t+8eF5TJrmgdxeQkOUkLJUV/C82xWFB5b1yfKeukTG3K5toV+XbrMf8I1ubSjM8c936l4PY3nanjr6QNs7uSctflhzfKzTbUDagQeyioMMgmDDnGDIcP/2meZ0Vcxptl5mahgxlfbtqfUWLVsVwB4OpeMn8i3tCNvXXTfEFNvHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775337934; c=relaxed/simple;
	bh=gzBsbi2tlNudYxCLVlStXZ1K+QZcu7Iwgn+rbTh33UM=;
	h=To:Subject:From:Message-Id:Date; b=jPt680ucM82TXUZf+jx8cZaZzt1cv1lFXLETSF+XMvBxZdRA6+Eel34nVkRrLYhYbOBwyi4g3sr3FaFrBvS2ABaxXnZiDzdGcrF/eSVehedg60i+CFOVjY+ndFaOg23dM7ykwWh32yiJZRA4JxtoyKBJ1rS+1kGLgiMmOTn+hf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toUoBZrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toUoBZrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C961BC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775337933;
	bh=gzBsbi2tlNudYxCLVlStXZ1K+QZcu7Iwgn+rbTh33UM=;
	h=To:Subject:From:Date:From;
	b=toUoBZrIOaIgLEFiqrxL5yVxdc5Q86A4BZqD8hdpc49+m0J2tFsCdRCzbkLbVJ20O
	 QMcCPG/bMLVOEqp5ACzfcwUsu+sxiIJo52ZkguFqu9gqrQywyAfBJM/HX4j1STPwP4
	 sLh72dt/ThsEfKXiB24HTRIxZ3vF2c4VptspwoH2I/G4CWzs+tOdg48jheLPKicUXk
	 YCal0awacVxtwyWEUrnjfHE4w2zSQhjHUkrBnNqeRsiz4Q+A6ZbGx2xMZR1IvHakhB
	 PXvJ+8tggzhlNH+Pom6Zd5c22ykxid8/QJA6Mum0h5zT+T6EY1uQ6QbAJFEsNv+nJV
	 VDCfK8TPTbdNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42B3E63FFA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533793372.11583.8446368845963628249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d47efeb2a10fa7b4f748830116bd403773df8ae0e39e1ea6b9dc20ea8cfefa9
Date: Sat, 04 Apr 2026 21:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775337933
