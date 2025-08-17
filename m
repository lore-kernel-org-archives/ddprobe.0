Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6103EF9D6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755400794; cv=none; b=RdlTz/pTsWyon+mF6YmS3bSZqY1uNyVV8+lKFaGjD8REv3rYoF5rSYBEipq3nHh8Afqfhlf7P7QktgAGqjcyewughK4ziQHhPz8KTA3YLkPfSMAWfxnbqfxVf4RRFB+6GLxjB5tTq74jWrh65Yq8e6E67zNFYhhtC1p5Gdpjmiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755400794; c=relaxed/simple;
	bh=c+UgEyHkP1LpVomCKB/vHOJdq48ZEQH5QpWEf37igz4=;
	h=To:Subject:From:Message-Id:Date; b=V8uVN40u39Ze2ytl6hyX8RZvJuG2Puw8Jze0G3k5Bn3Ggu1dWy+qjYBG6WX31jWR2CnoYXMAJwvziA4QgAoew1ryCekujX1F+oxKmTB+j6uTBlOdr0hk+sUVPFaESLVkh/4fUYWiHbtadbJLTPZxq+CIIskFrQxFotsT/Rkxy/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y27GscpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y27GscpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFDAC113CF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755400793;
	bh=c+UgEyHkP1LpVomCKB/vHOJdq48ZEQH5QpWEf37igz4=;
	h=To:Subject:From:Date:From;
	b=Y27GscpIuRjIrg+xUFEMYxbnKJVidGLKnGkHsiwOWVdbdNoDg6YaxZOqbrB/Y+gvP
	 0KgGgSZ8pJNuToe+3jfB8iK0XmXHQnyv3up73g6PyhglTfLMVZfR0by+yARPbMnhxN
	 FB/GN/UuKV+8pkwT/ww0vV836WNSKttp9iuBZWM1geFOyErARykREPSIgD5ZtvJ5Tg
	 nzEXT4ATtVLH8mNBHF6H8XaEbtjUci8c7KiD86GgL5hAte8IOgj/GHqf+SBlRLurVI
	 ypyrpeNdK4BRjctI+lzHYZS44jEiSpEpr3rgpGHUqhCh88zglJo+MxC7j0w4f1+tzx
	 OoicbbqgS0gZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA59CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540079357.27542.13665454989909607267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bc04374b1d41e1ba70f32a1dafd0923dfa04d2e663caac01df0a9846d992f9
Date: Sun, 17 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755400793
