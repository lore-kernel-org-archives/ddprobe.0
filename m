Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DAE30ACFF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775957254; cv=none; b=q46VFPIniu581nkGWF2U3utbfSS/dr/zMe3E0qlb5fsqjVC0Pt/mtxIDF31H6XTLUeNCq0Od4OtdKJeyKEAZZRlF843ROrYJeh2gT5R1rwMSBM4JEfRm+aBu8FjUrkGvC8vNfj4lhYoHU5ATzZLRSB/JHiRDisqg5rOn09KiX58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775957254; c=relaxed/simple;
	bh=ctPcKO9aJ2pBiBrftTMnDXhWsgM7KUAemtPCA0qQ8ds=;
	h=To:Subject:From:Message-Id:Date; b=ks2/yjMCTolod5JjsxOCvYjT+MQI8FS7xHDA7jhuXzhgxhTBQTqPAatwKKsQC7g44js4IkpHyRz8j2GJw+dKG71rD17wTWfc3cOLli2+m/j/k+vFoonpdJXxuXenJucAXc6HWabzo8gnIp8lRV505OitG0kimRTyw38MrbRToOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBUW7gtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBUW7gtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4FDC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775957253;
	bh=ctPcKO9aJ2pBiBrftTMnDXhWsgM7KUAemtPCA0qQ8ds=;
	h=To:Subject:From:Date:From;
	b=TBUW7gtpFA7UQA7Z+gee6K4Z9Ex2Q8tF38qEGb/LtgfLAcYQiScZiTfcVvCZfPF02
	 9U3DyHrAL5MsOkSq6CYmCY07JwVy4hEVvQemJaPvb5CmGiQIGk3rkbS5OpWLY7Chz4
	 8QcrKJzmZ6bxVjwz/+Mha9QIJKHeUKg5SCN0O1DEVwtSM7D09/K1VibmB7iRqVg06J
	 AeYQtHmRs41/bqW5Yn5S6THuWPPclSHlP+wKCXS3E6aQVQnpXJ3jX/wnF8F9ao75DU
	 3jbGYM6nKYEEm1WD2f0RJvKFQkkiP0zhXsKtr/WUhfhjDPRVhF/SRiVN1j3m64EyP8
	 STuqmx90pK6Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B09F3ED6B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177595725368.8118.17820241749805832598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a802cf91ef771ae605752ef3a30d0a7a07dd80c5e09cd69c8578b67ae98f12a8
Date: Sun, 12 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775957253
