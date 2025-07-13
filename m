Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274B61367
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752400194; cv=none; b=nOr4cvXFMQ9/d0A5PfALuzjPBR5Wm7Sk+B2ITmTQgy26Fl90HfD749urpO/p9nv5tFSmz/8tc5piicPCVtBUW9gNWZ20hqTct0MSkc4PE3NPO2rSLX1gzV4dtwPDmJ5QPNVZBeTqRmK1dMP0fZSyFI0TqoiFsn7gCveIRTRyk6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752400194; c=relaxed/simple;
	bh=NC1FNDI6Ht2jVg0qN5YV68t0ChDQ6TWvN590gUMWuvY=;
	h=To:Subject:From:Message-Id:Date; b=UU7pti3kF5BUbyf0TiDJxqClCdVSkudWIvEDiJiCjjsMZfgraaEeuF7Hz6e466Q3gQYwa9DxDBW0XL5Uv+xWGLVcP0ADYfui8h2lsDJ6rZwmlcmczhgpf9JoRUdFuSdvDBLGjJ7hpsZZSbMn7ppLmovnW2IaV8Txaw8tWaYCb3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZ85/Y+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZ85/Y+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752400193;
	bh=NC1FNDI6Ht2jVg0qN5YV68t0ChDQ6TWvN590gUMWuvY=;
	h=To:Subject:From:Date:From;
	b=bZ85/Y+ZFMGX9KpYe2flgKa1pd0KMbtDSPFjHajnqomwm4PrR63yhiyQtI05w4xo7
	 SElKxDC9Sf7ixZa+5H3VT5tRATcXPFUnO4ptibeUm5kpmuEi8BMwjMC0iT6orBamsX
	 JHHdZCOO2Uv+G+/9xDftQUlDLq7G160f7dpaaQA7tFgGwznDny4tTfiejKEAhYlko6
	 kPGPAGmNDqvASdu7PPeqNwz1bVoiYvcjsB67SPwED5qZ02q7i3CjHIZEBoitsw2Kqu
	 keyAYcyVe7fLqUuFI+ODjHL4UOl+hDYPdzpJ7Py4UMBZ3Fu8emZdsoRAgy58uwFjRy
	 7tZ8PhHurJ5xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91418C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240019358.14521.9021553067288822937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04206d5a4966abb3381840a75c57cb97716f10b71bd018cb3dd5019568f1eb4
Date: Sun, 13 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752400193
