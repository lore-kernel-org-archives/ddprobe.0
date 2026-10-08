Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C95F3749EE
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791430234; cv=none; b=dh1rTgNhHPVlGG2BxF1ys3qcZZ1J3kNTzrBqcuo6RisVMj+fyAMylwifUDUi8S5V5GE3YcBgkS3vujQUwIcMlNI1nRqJq/nv/c8c42pDOJRH7OORPOU8xiMFlDP4DMGv/XvJhilSq3DLWmPPozq0k42aGPkz4NU0cNREn5E0yoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791430234; c=relaxed/simple;
	bh=T8a9KESzn0xG0f0+XhguZwOtnn/ZCvdb6CkgYJ0a/JA=;
	h=To:Subject:From:Message-Id:Date; b=JPrIkuwUXbShPSvNqpXCSIlpYsA9vakYhD18pi9Mlx0h5knJY21TARF95G4O/aEmV7V8YpA27pVtCU80aem1leC0d1vugYYSSLo1D7KDeY05leQrE37fMviLOYmmp7wWOxxSPRc90uQu++VNIOMvnR+rpl6AHVRHeg3ffTrgzxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqf+zNSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqf+zNSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BAEC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791430233;
	bh=T8a9KESzn0xG0f0+XhguZwOtnn/ZCvdb6CkgYJ0a/JA=;
	h=To:Subject:From:Date:From;
	b=gqf+zNSrw5zGC7jJOXtwFVn25Z/2AX+ETJaAPiEJM4kadRvphp84pvLjLkfXoqkTB
	 uVZ8fG5o/Mdj25TvnYpYDV31ZaMNxmRhD3PQqoK/+8VYPWP5k8f7RDjej4BmhoIK/u
	 IxeqjBoxJQ0X8UZ8gzQgXoHh7NPtidOwyNp2LzNmTpG4rkjHSaOUuBfzsIdHtsdlxg
	 WalNMm97ybxtCOG3iF6j7WknwhArPK+IEvM6j3oCS5nxfTpwaTa8eN32L/V/m88QST
	 h7X4Y8FnsulBeF/zGOjFtbL4tUjd9cS8Xj73z6U6p+MI4nYEseupAXqAem7D5iCysE
	 S9hqDg5hP5a2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB736CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143023369.17137.3670161709118333489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199888e9df3ac3096f0248163de34ace0466130ef9ad52c4b74f3b687d27e08c
Date: Thu, 08 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791430233
