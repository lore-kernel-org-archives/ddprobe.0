Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4009F2904
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727657754; cv=none; b=lIGXqaDa2Ynl90Z2t9j2v/2PBvu7FqfEbNQ4U33azGPysBhRBtk7mkZ+EMn2quAHZG5d1+73n+5yELbX7aA/XnU19SAF1mFx+9NzHIM27GWtEhEgcc9/VJ60n6/xhC/UVFpcYhLqpNTHZZkb32iukptDNy0gr/Su6EJdL4f11HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727657754; c=relaxed/simple;
	bh=bMJcxgWddiMg2XwSxULxUM6TUr9FnLJPffuxRxjpXho=;
	h=To:Subject:From:Message-Id:Date; b=k9Qd5Lams+7KTECTHhVTI4ZH0QVfr7ZBy0fVAUgKMqy/St0yGS/DdAXQCbBNSo8u7xuVD1FUm6mRyfEEgarXabWDJNbIZv3zOyPszn1hpqNKb/p/ABEgYoQudqxuON4+nAOse0UXjARGV4YVWWilzbvXtFBc/puil4E9vTntIaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1THp0xF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1THp0xF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4BDC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727657753;
	bh=bMJcxgWddiMg2XwSxULxUM6TUr9FnLJPffuxRxjpXho=;
	h=To:Subject:From:Date:From;
	b=g1THp0xFSpfVrfMnZl3SkA7CYzX9terTp6qujsWV3caRXJ4D1nBxJpxDB2cYN0a83
	 ZjiRaWtM6BYWUifADgAzhINXmTliyRhXX3ckv37vrgWs9V7TuVvxiFB/zEcPcmsxFC
	 1E/OqNwt0/c3FpzHJBvDFH9Fkb3YmN0Rlwzo6HnrlUstJ7V4OVb0TPXglqFdRw2uAM
	 A1syFsngHoE8esCONSiMTT46dP5E68kgZotfrbEgiczwum+I9Tr7cR7kcOK5nXBdbG
	 8dcljJRoMxed2414R5fkCkoRBtvZLkqFuUMSdUIQCVi1AJSxmUFAQusqCruFHDwQnN
	 z3cf6JkDI85+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9428ECF6495
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172765775358.2101.5715402166087923287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae62848f510bfd6994a057f3e0debf212cb5c6c09e96f02b94241f4e6b506f56
Date: Mon, 30 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727657753
