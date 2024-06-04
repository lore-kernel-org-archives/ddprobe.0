Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6592AF16
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717520183; cv=none; b=ZZzdCBZL7sIpe2rxtsNIyvizJlxF7jtYwAS4EPv3N/E1KuPk4UJHvmKWMI97cpghmphUJp8/bDOy2uMc+53+0dBqV36rJu2qkxacbUoxKnjHPIRyf8jqDmA6M6UzPwRolmIOrfj7muMrQU9F0Nt8r+wfGVNAsZ+LuOGLtQb7Zx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717520183; c=relaxed/simple;
	bh=i0jnmu2kJoeO6iOxIAKzDf42gWZcJ2YAIS8ldDT6EDg=;
	h=To:Subject:From:Message-Id:Date; b=dMHixx0+zmIQS3RTEAMuUOp14Oz4BR9m0pe3/wQgYJyybCI0pHdxu5UTzutNdxCZAUDLyg63M9YCH0xiZCE/7CeKlguQAcyimv0pczlY5RaP33kKCg+jYz0Xs0lhr/GHUA05pBvSiLVWOFpnARB9dfnBQhI82etcTAsLK/AFwMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VV8HBZFG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VV8HBZFG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E466EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717520182;
	bh=i0jnmu2kJoeO6iOxIAKzDf42gWZcJ2YAIS8ldDT6EDg=;
	h=To:Subject:From:Date:From;
	b=VV8HBZFGeAyt1UEeT8l3CItDV3kgB2X0IPq7t3nhwt5R8YD791joOiB3TnXNV3KvU
	 ekMy5YppxScAPqYLt2DCsv436uV6B+KkBtRC5kC/xNnURb5XQC+X9cLNq80qI44wxP
	 P7ljknOWxdA03ZtFyTR0Z6QSdHvgULHemwC1UI5tsIrzFtob601oKxB6n3OXJTfVCM
	 4q2iMWRkXPzYZMzaaysmw3uyT2lWZSR5SkXd0e899MwAtWUCpJ7eJmdcTC7mW0E19k
	 EH55XnlG6z9JN8OI0kQ5TXqmLmc2U/61qPi7QFw57EH9GG8eyQq/eFhO5BwVeN9QYj
	 1k73dP6FMLnIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB635C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 16:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752018282.17221.9565862071898519233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee42ef8d7434450403672a7a0fc2acf521a4ff561694e9a5388db8d0ef5af37
Date: Tue, 04 Jun 2024 16:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717520182
