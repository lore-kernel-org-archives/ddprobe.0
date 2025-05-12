Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9C019F11B
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747044593; cv=none; b=QFoUgF7VMW9/s1pSFqyM1j9gSAMziWAKUOusFHjSiZ+y57rD/FqkY3c4yWcrbzxIxWfGF4B+wp0uAQ4f1xwFdCSBnfvAhJBM3WL+Xxd0JzR1ASt5hbbbbFF6qRYd+nDaWHuDkT7TLqAAywBReEEEB7UhVueZ15P1ZCN3KWkW2bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747044593; c=relaxed/simple;
	bh=T9OhVlIov7640GJDaS2tXPOYo5hQ6YnSAhWFOXoWkwQ=;
	h=To:Subject:From:Message-Id:Date; b=erIda6fGswQzMD8sbCznd36GeF2Kh0uiOFairR7QjDDOeOFVh2KgXGADR22pmiqCxB2r1mQcdEcr6xrKwXequWFai03fSdf0f8Y4MDyXaTiRx9Ya3Tvz3yKjQg1RLJGYhpBBxV535Dddl8B1odo+qnBk20Uq88Ok4ZuKeXu+Gog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yr1ojQcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yr1ojQcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDD6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747044593;
	bh=T9OhVlIov7640GJDaS2tXPOYo5hQ6YnSAhWFOXoWkwQ=;
	h=To:Subject:From:Date:From;
	b=Yr1ojQcyuu4OUzQ72KsZ57JMHqvWZXwiAUBvE3uc0WhXBUM0l6/aeHDWPsaTSyMMr
	 AjN8XU42OJFrgZAPmVavU72hxWBkz/W5pWwjSQ0mGnfPLd4Lhr6gzDM4TNRlxdG3HQ
	 rEBJqoV6JhDxdanimi+ts17SfIfrA45Ld6FkVUb+/UkhQIPnbD6q7ZaYXyEewNrchN
	 YPkC20I+umQhYDuE22jb/CXhLXfx+RxLA+6UoWjNwd+TkTS1UN2UUADAzmeFZL/tLB
	 kfJAnw4X3IrbsBA+K+6G0hIGDng1RQv/4CKw2Haule0LFt5HjvJbn4dRaEJ5pl63Zm
	 sS94I3KKnKeNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE73C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704459357.1126.4842559004063593583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9f4d64981ef051a2877c74f193e7362cb5330ca7a497dc11728439b328d0af
Date: Mon, 12 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747044593
