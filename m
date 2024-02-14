Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3478F40
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707878297; cv=none; b=HnrfQxNYStK/6VZTBcO4ZkmRPGSFcNeJcZOJnAC3ir+YvKyjFp4YwLwDsCACqooSBx+dAn7kHL/22xB5e595AfTHqMGCgTR85T+Hwu5Dytv0cUDAlz3jX3rk4uzB+Ad9FQdBOU3ohmhNwFzQ8lbvHvjyQ7V0dS2X3PFI5PDZBa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707878297; c=relaxed/simple;
	bh=FmfYqGpcx2wBD2wu7VncYj2aTwB6CX8uxS2lG2cz1+E=;
	h=To:Subject:From:Message-Id:Date; b=YA64MkrD98baxIbtP2rXTsmEjaghqK2Fw2H4DER+8NR1EoizkYPQ0NNYf4ftB5hjJ2iN4E6rW2K8+ypBzFftyVmFwoFamBXB185et5/6qyaGT9LpBHEumDPCce0nbE0Bbw2s3GSdIS/a4ZR+Gy1tbpjaLW4x2LS49hHL2SVoh80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjcLSc+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjcLSc+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C37CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707878296;
	bh=FmfYqGpcx2wBD2wu7VncYj2aTwB6CX8uxS2lG2cz1+E=;
	h=To:Subject:From:Date:From;
	b=DjcLSc+65GB3VFQVBdKUJI8uDG3vd4A/tZKMwbw8AqGI05Vh2c6cSKib9mFvcKIxa
	 EOSOsBF9CghNLQmtycvCIwzkyxYiD1shxN7TWlg9EmlxLb3+iatQjdTLWxg3YZSwPU
	 Skf7vZdDPgt8NkdYlyYGAir0Ust2w09R2g6bwx2AFGOOymwDFHzPjTS7VWG53pqBnn
	 a6uvGcuVBZtBUhkarObAlUNdqeouG/x0wU1n5Wv0OEcrxWHzfuydCtZfhnrhDR3px4
	 bkmR0eVivmu3j644A7kLNkziQ/37Y8PRzyelThwuJmZuS9BAvWtkkg/rxkmZEvT91L
	 jbD8CswIVQ76Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61BF7C4829A
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170787829638.3256.14837870884538966810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710f0b666c1fe8057a5025cf45199d0ed4c770a4c1e7b0d97cb662e081cda5bc
Date: Wed, 14 Feb 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707878296
