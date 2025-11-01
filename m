Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6C82566
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762037994; cv=none; b=msyNY3g/EM3BWJ3XWiHMOwrtKrMPLAE3XzZEpPYudNQl6HZ9lziQzbWT43NE0mtpTaCgzzA/S+htUtUebGnk+UFKkVG5q2Hc31l3O0gkyYS5vDQlR/UAOrLpj+tkyy6z2fu4dsd6LZvNGL5aYNeeNJSgVgG4C6K8gOwVqv+vzgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762037994; c=relaxed/simple;
	bh=mGLLvCfyHCUSp4OWa5pMFCa2w3Y2LE7brujI23nKEhM=;
	h=To:Subject:From:Message-Id:Date; b=f3gmLSG6rrjFJhLlNZP4MLapiBEd9C5R0Pwh9u6ayJW2FlZD+7bFnlbBxYFKVfbA2Yvt/ur24tH1GNsVPdT17q2/gQ6XZ2vl4caOoMfdGoi27aj9sUjJBf62SoIBdUI3fYDyEBB2PSjsgGZRqnzyz3EggMfSqNFPwRlzEWtNFXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWEM91+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWEM91+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66BCC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762037993;
	bh=mGLLvCfyHCUSp4OWa5pMFCa2w3Y2LE7brujI23nKEhM=;
	h=To:Subject:From:Date:From;
	b=ZWEM91+K3ZGs4fHvFMe2V8ln+x3zfDgCm2/Hul5Uaz94r65zo+DQJFDVuICLXwjiX
	 Pn7taOUAd2NTasuORY8+RbVvr8vx8bUqCvlIAH7I0J8t45W0xLSKevhjubsDLp2ds4
	 H4S9L/kqv95MSpCVIcxcn59zrBHn38q8ZqSEawUeMGhZ+diCm90TmA7hAH8aJksE6G
	 D78WSaTyJ4TgxkMLd5K7HVZigDSpPEk4CN/q2Qrk8L17SwOpKA8o/N63HFhrvGYftt
	 m427hWmCv4LM2+AIa8MSaj/TuhQXzZR9weeS5SzFpFD/ZsJEAiJtTgsd5FPza7/eIY
	 lfacLbaqRI4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D86CCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203799358.19315.10068051259381150527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf9f567e52d05294f21578b85d8d8f1f99d0701a89585841967c0ca616fd598
Date: Sat, 01 Nov 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762037993
