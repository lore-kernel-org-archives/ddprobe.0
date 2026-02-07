Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348E72BE657
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770438834; cv=none; b=tAkulbCin/OVMY1sx2Mz0WuJdtf0glMgA9tDslkR/uGYGqQpjZnK6tkVAkYUXq2+649cFowHS1ZJjOdp5/sGyf+q4zBHtn5L2pHUze6/mvnAASPQePubYCG6J8neSwVUXZipklG5ylgVZDPWN0G5g93hBmJFD13/tvM09z7Rcww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770438834; c=relaxed/simple;
	bh=tBNuYmufF77eN0jUWzFMJYxQhaYye2jVhj67eL96JGg=;
	h=To:Subject:From:Message-Id:Date; b=n9Yd/hRuOb8uJ9RTiKC4bTors0yCYshU6QQa95PGlqfzo2VQ/FDMR/99aPEtZJtleM+g10uXybCPGaCbVOmtHTQ/i/FKfMB24SlF0Bz+MlKJnmSneSmf/J/0siFcYbYXifEO6T1G39SsBXWQemnKGh6fcbESitgFTy9UBq8ls1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGZbMkVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGZbMkVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C85C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770438833;
	bh=tBNuYmufF77eN0jUWzFMJYxQhaYye2jVhj67eL96JGg=;
	h=To:Subject:From:Date:From;
	b=qGZbMkVOUwyUqU14DMY+Qh1O1YEo6l6xx2WpGumebd/wrdncxPuwRKPVhtmvKiEYV
	 73VMVVY3NtcVMuEfXaPk+eZOPzjL3zDzlpnsmWwxmmnCMvBpcwCiOA/AjaKJT3yy20
	 amNRur1stN1CzO6oe5yie0Z8rWZjBdknZmgPWB1clUZ32khJlo5VJJqdX3wuqmJe1b
	 i9NjadjBvcWWU5AXlsYJEJ9v0bGBFb4F2PghRBAEsqkalmd2c5GaOkYtCOiWdS7bEr
	 waA5/2MlrCxuse2XOFGPmzRZSiJLpzkPL5gUIZSCh1yfVlAAz88fkN/qG05BRkD+vM
	 948yEX/SqXvmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DC4EE6B74
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043883366.28916.866302225787032319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c96e4c870ff0ac651d82b7519b51025d72bf97d2e399d6ac0968216ab706b9f
Date: Sat, 07 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770438833
