Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CDE3B1AB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763881314; cv=none; b=HH8HyD7fDzFcJvtd8scIVNR/3qNMhUPwSDnEjfURZKCeDUI/lRvi3Zk8wuAe7Y2gZ6E5gED5qar8MBfZLvn8/71msF1+RJwRMIEvLFm+Ig7p93ok8qGU0uEOjaQmBX8VBhDvLpNi13SYaKY4SN+Q+f0badnN8Fk9amX9ILfO+pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763881314; c=relaxed/simple;
	bh=SK0gtOj7G2TpNfwYXJqoSNH4R0vpt5H2HanFCAqwNVg=;
	h=To:Subject:From:Message-Id:Date; b=R2roPe3U7kPZpD0hlw9ydFtY21MUHRq27m0u4PJCrdYaw3pn71ZCxCbrIGJ6885auLk3OJnlBRQrtu3OB/6ELTEILs7T8nB47im3qxFg/G1DZoNmuF/maLLrxnBEq1L8QsTo6dEstZm51beg3NJOX+YvyHWLRIUdDdtM19U+h2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gh6qZnsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh6qZnsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A94C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763881313;
	bh=SK0gtOj7G2TpNfwYXJqoSNH4R0vpt5H2HanFCAqwNVg=;
	h=To:Subject:From:Date:From;
	b=Gh6qZnsuTz2dXsHxStDN5506TtwsnUr65JJvOkffuXX3kgd038nIQS+7mEwuPLGBx
	 +o/lrWBzHFdNputbSnYYEdQVFiiRm2Q7h+GOFgSHBFH0tOyV0cyfmOobX90jbwaR1Y
	 FFcaGumf/FB37w/g3rUFRPZaWcWwP2YGTy/vsbgXv9PTLyyZu7oPQRWFWvuI2yceqk
	 ARnEiUTOLE86AToIxHoesXO1dkmSQVOyO8rJCDt2f8qi1JAEikrWqRuNFxpkJaAmjl
	 /dkaqyfP8AjRcTF25d7qjO6KEMSbPy8TIZLUeqUd6KLh8DH6n2IUDldtcdDP96LWij
	 YXQy9RSdMpYIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC5CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 07:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388131358.23576.1671575184354229045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c875e0d9ac411925cb1b04b3cf372197d0c9adf9c8fcceb5a565db2e641d3fba
Date: Sun, 23 Nov 2025 07:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763881313
