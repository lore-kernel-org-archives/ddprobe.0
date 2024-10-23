Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD2936B
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729645554; cv=none; b=tU1B9SkkR+eur3oKdaFeu68NS4v1NYstdpyzLeOtFqngXNB2xBv4TgdLZumCdHmjR+sQ1CwqHqI424LZwdOSxtGpZdfLCbuXUxxb/FXWLtYFB/VaQANLEP2xttzmWtjfnLmbrXa4N0kBOPZCZRCaH8zLgJyLRg0mnoC8z7UNh2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729645554; c=relaxed/simple;
	bh=kP/GhE7uPKuOnmYHR52fjjeZyCYJBFRPa0ufwJUGHy8=;
	h=To:Subject:From:Message-Id:Date; b=J87U/5gjAynv0z7EH857v+rdB7H/lwflOfD/Q70CkMjv10ky0ZwU+p/Ns005dLeBclTMKaxlSbnU04JJLww/gy45p2WqOLc/vIrZYEHkGrFa1PL7hl1R6sS1r+UTCnuPMvZ2CNOhunSbKsjITO6Kf6gaB+J1jQgf67BDMYobcQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5rrzic3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5rrzic3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A562FC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729645553;
	bh=kP/GhE7uPKuOnmYHR52fjjeZyCYJBFRPa0ufwJUGHy8=;
	h=To:Subject:From:Date:From;
	b=r5rrzic3p9QfdU6YR85TCbZ0YUxPEMPfRw5CxnOGdV3m4UciDePK//mKBzh1RIn6X
	 ZB60xwlpCl/IsUEar5JrIkdyfG9hdLEmxto9Z7xs5ENuhcs3w7BAAs0c7fSj2nrLQm
	 58DPQBxPXTZBF/jLV0qxxDgap6C0ABCFx++TeeZs+s2na++2FE16RoAF32Trcnb9hy
	 ebpJGuwDbOCoY9tID7iJx0vit5w6MYQ/ZvxAm5lWi306GLvLz/di9WaQ9Ww4ulB3WX
	 3GXjYJE4Ny2evbgxqUFgRFHFhpZMPnprqgEC6XRxABCY9tgV7mKGlSh0TJi5iXaxJU
	 WzftoX5MPAQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9234AD2E008
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172964555359.26314.17752908549047098165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23606d203f699fd7c4629219190c72e604f9e1f6992efbf4e75316058ec2a1e8
Date: Wed, 23 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729645553
