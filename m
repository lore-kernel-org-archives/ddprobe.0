Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F38C2417C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738929954; cv=none; b=sgxC7rpkjAeUflmrlSYfCP1xuHNAPVfclu3Fliqu2apDKcqggdjafOQVnQcuLa9NsLIaAtCWP7mFuIKwiIo0Yaqyh4TJMAYcRHdWCV7rsxrIotGITFdffiqk820brQZaHMJbdohUFAnqx6erBVi57Mfc1grl6hykDnoK3eegkCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738929954; c=relaxed/simple;
	bh=WCeRhqPii07YuV19ecxoV0BCK0qRoaKMuNI5CQi/2hI=;
	h=To:Subject:From:Message-Id:Date; b=eegmFAxHqZsGBDSdLb+/LWbRDEznn5OP25WmF5AFwY5u1y1CjpaoOahbhBmZgwpDCIz03QQ4c2IF/PazkA3nMaOXlLXMr5Y2Gd/cjuVf4A1xcJq/jBbiaIPp4oauCaW44GOjBsEalw9KiEtXYRmj7hCftbuJT1x9gMYFkNC9fXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4j4BxFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4j4BxFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC78C4CED6
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738929953;
	bh=WCeRhqPii07YuV19ecxoV0BCK0qRoaKMuNI5CQi/2hI=;
	h=To:Subject:From:Date:From;
	b=D4j4BxFvpN5MSiMPGqfzIkwgurXbRUgf9ZdWHk4pE3dmTypFpl5RPNAp4LYa4dxpX
	 GDL8/qTuqtgkpiykGtPMwYMupEDwVQzfE2l8BB7uqvYv+gwzTmla4wb6d8aky8SjB0
	 GmZxquxRen2ZkKK+ohuM4p5LOvpihVAlFMV3NJ7EhqadUsljAmds/GJhKKL2jmXr0O
	 iN7DBcHphRnVOz4FHyjdk8/fG11tqUnNjO48GxCzmFBkLTBvH9BVC4pgT16SGnbvFo
	 HJIZKrHp+KY4EOf23Rk57vlE17g/izu5VTMXj/mpq/YEonbWMBTsyle/TeZPuohTgo
	 csU3Vwe9hYtnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF60C02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892995362.21877.1802988561615607538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea55335b620a21820cbad4c462a5e1e93cbe0a2e9c9d7811feef98dbe5d5e137
Date: Fri, 07 Feb 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738929953
