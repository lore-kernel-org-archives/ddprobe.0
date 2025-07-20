Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19D7429D0D
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753012194; cv=none; b=n5HtRR/5zObUsm56JXbOBFOf4JSvgC1kWC1sWT8TCd4HqkFjF4qOR8FdO2s+WSDjdy6Cx2jmesJv7TuP2kS0v+VSfQmJO4CBEIPrva6UjygXWVwtHMluDuz6y5FltvbyvQqrM4gM8aKxP9nTXVXjkVn+sDVr5pdC/ETzHEzQ9K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753012194; c=relaxed/simple;
	bh=ti7oVzkDfDFk3oXukbyCzIliTc3xTto+tWVRR2swlJA=;
	h=To:Subject:From:Message-Id:Date; b=TcYkesW2hEGhsrBbf68mBYpBJAS+eNfH3Kd/s/BZG49+ssWS3oluMuyFYtbTMhJ5WuBWGwkeR1gNt1itnrCdMoFxeq/7s9+rZZlf5A1+GrqfsHfpC9DZ6sVz7Vke1Y5HmjdjXwTjwikwOysJMV9hjxdd5FkI0OAICMhLSq2AIhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cafl6wiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cafl6wiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A070DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753012193;
	bh=ti7oVzkDfDFk3oXukbyCzIliTc3xTto+tWVRR2swlJA=;
	h=To:Subject:From:Date:From;
	b=Cafl6wiC8NegqBaErAILDnZElUfWd4iZlHh6wrFvAUsm4Rloury738Q9mnnCUdz8F
	 OMrctDYfclllLhnyETxcSaNeWPvvupmCMHFcY56ffsfeUCv2KzYAlU0EFGZNq/Y2a0
	 jf4dTQG9ohzQ7OP0i/BUzLVeltQXBR2qlxqqynucvHSgijOw1ZKQU78+NmRwffZ6eF
	 aFQAI82KauEKUJdNmRZelC+EWaJ9eIZCx+ELUPsARPPDto9dHjYMvRvKdkBTjdhSHE
	 uyiNkpepzG+mClAlVltT2aBBDoMhO+l6xXSAHFkQsz5p2vfeh/qseJOaTPhtgyy4k7
	 rmHWQRQ5C1tJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85AC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301219357.12283.6493174986767714336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c59d5d9376177ef478b314b0da234f87b3c6d5b1ccec53fd92dc94b108ddb0
Date: Sun, 20 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753012193
