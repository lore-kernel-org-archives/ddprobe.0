Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382284B4889
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788906034; cv=none; b=l7920ksnG0hK2QDbf7wcGMIoM6JCNLeIFaPFC9WhMRKTWSTRDHteLlrkCrxgbtP5WmhIAumFaFFtwrNwphzZahDUa7F9yCpmld4V1LD0SO6RYRVYnoIlfhoAIeEF6K/nbNTOV8vsgqBQuo1+SQImKL41LfppR5t0o10ccLEHJ88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788906034; c=relaxed/simple;
	bh=tEnizhVAhaL6YQRf54rNuJ/dTgxXTrBWf3Qj3ncqsj4=;
	h=To:Subject:From:Message-Id:Date; b=Jd0O7805IXO0bGyhuDsPPrJ/o2w8tpqYbuul4hQQXFslrcj4OE+2vDIvolbzzQFvK9mPGIrvc6cYDuiAYZs3zMflsBoKjFo5/dQCBHTwe1V/YgMllbziMgs8hYdpqPjKlLfF8t/LfkwycH3ZixB563ceYnjcs/xrUy26pBnVrh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNtX3XAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNtX3XAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3868C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788906033;
	bh=tEnizhVAhaL6YQRf54rNuJ/dTgxXTrBWf3Qj3ncqsj4=;
	h=To:Subject:From:Date:From;
	b=mNtX3XAgNciJ3KmULc3MsoB2brnEmg7Jdj9LHsv0dW5c83JrPl9gW0p+rh/U0kDsm
	 wTJEzpv/6VmD8PQLA6wfDyaVCgEtLs2+w92JcAy/cN4DdGDmyaT1My0oNw8+bU/Z3P
	 C/17BQ5eIoqG+a+vyvdtPXQByfb3SExv/qv0jz3gghTZdARi7gg40tqbjkQ42SG6aI
	 ccAIoIONchwzKqy9wtnpHQ++eOxFiTNqcONVe8wfb9bRqxHpbbSzxzTGwnyNctoRKc
	 V5cXc7tMKeqmat4tR6wIOtkydR9FqcWYJ4LwjqAkMQPghguPO86UyILU8HUbyKZNMK
	 Q1kRizgf7kPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C2CC79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890603371.32271.14498965152229525152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2514b5a37797baa98b42c17928660b09a6eccc44e7a6b4de3fbe1b623dcfbc3b
Date: Tue, 08 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788906033
