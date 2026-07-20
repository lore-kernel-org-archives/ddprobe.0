Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CBF437858
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784584115; cv=none; b=eH9crTAp29KcqkgjK51AHh0fkaD3WWDg8R+mxbNpMne/aUdtT1GAJt/VOUP4d/u0YVQvo6fUGUxWaDBtrHYqRkCa8CQwGV1q+w/zo80/b1W1pGvbAJ0QtRbCWl9FECGcoCxYkD8Z2rPN0MZ9NSnQMm6SFp0bS4MP9mkbocuRxAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784584115; c=relaxed/simple;
	bh=C9uDpaNcnqDdIiSQP39nihQ2uOX3+ldG9nvMUDiQlT8=;
	h=To:Subject:From:Message-Id:Date; b=WoRdx/aBHA0ns4Wz26bKP1QfOjpe7F5QDaBl8xxcc/PPi3j6WhFD866QEwySfQbGjyOGw9aUoWwnRiFTb53XNwJep9ZZ6Qm8UblG3uxpjfKAU3kuoGWmSbYCUpOtB0Fe7RXcjCFZ41ZJeBTipGT2qkVGTuTjd6D8IBXzEaQoEIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0RqGBtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0RqGBtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0524C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784584113;
	bh=C9uDpaNcnqDdIiSQP39nihQ2uOX3+ldG9nvMUDiQlT8=;
	h=To:Subject:From:Date:From;
	b=Y0RqGBtzEtDbMikgEsoIWzRRwNlpYlMqfyrDXFxAKLv+NbxIb0N1bFsWFjrHsQeQO
	 +cXtWyL2oetqf9HAOCqEe9o04QuewQ3PZV278kFzfprm62sVo/M4DlS5Kwtm3ca1mt
	 GaFE3XqRcFo7+Thfw5TCBRD8WOO6d4BvJITQoPUe6k19NsIp3fXrQW+Oh10V8ZWLMJ
	 Lupk62jkA1p7G5dk/UqbkwS6tju25oUnHMI4Uk8FLadCc4IsfXetQFYqAcnELTDTLq
	 XrwNmhtm9/mTtPP7rj2EmCr1O1wZ2YsxbgOkBVtBoWcEhuTDtoev1oc3LPeIfvaWvz
	 Yomt2rN4zdGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE52C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458411375.32415.4833557162763725586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd6fbc1bda10dfb01b3b183cbe4166af8af3292fe7a04af84bd30bd739b81b7
Date: Mon, 20 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784584113
