Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4178D2749DC
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782383254; cv=none; b=s7h3Q+LmGh/jIZ+l5Et5Dfab+Hot28+skDQHTTBTVcOHdOi/KFczXvVTexws7lmsD5n9MMFc2HsRr7mI3Y9lboUlTAlPacunNFa6yqaP47uZOONxwjAGvSljBjxGYiQNl/m/UyfXVjElqk3reDWlpRPIDlsCIcWshhnZcluo188=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782383254; c=relaxed/simple;
	bh=yUGfwd+sx8J0eg2s9Z+EEan+cKLmV5yJPhCEx4kebp0=;
	h=To:Subject:From:Message-Id:Date; b=b2wOL0rXKPMreVpr1sOgxE/xhtvHrN4uDJzhof+jxgAJeLvz7qOY4lNX2iiz82uWK7whK9Nz/OBeaEuAR+fsSSu52349PDC2F1DOlbwk7dHiIs/x2zT/OHPj6bQhxrMMx2W5Tq7YGZYhb+Hm0n8HzOj65zN8UK4yAjdntuVvZCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEt6kpVY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEt6kpVY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04B2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782383253;
	bh=yUGfwd+sx8J0eg2s9Z+EEan+cKLmV5yJPhCEx4kebp0=;
	h=To:Subject:From:Date:From;
	b=MEt6kpVYhFdV41Lp7CVhOnLbsDDMh3jakAJEomGB8VGNNuvJjHIVh27NDBaF+j9U1
	 y3uSdJM+zUbQlpZAEKvrbp5/nsHG0CHLPRBTEUfcBr6JrqX3g5ey+ksiiw0/SRuD4E
	 4L3doqYxQoe24qvGtm1DJk+mOWzmHJGZo66VqkjDKtJBxHA3x+itWVu1Pljb1gBzly
	 l1j6crOfPUoNtYel5iSnPX6KFA+C7LvpmEl2fzxV94L5GmDXGQeti4TXitcdxuPmVl
	 XJaJso+NpKA2OduArJoIQ1F3M5niCCJLKZTmkqFlw6Cb07WXm9od0wKK929yJSOEE4
	 qALW5Oj+DpE+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F8ECDE008
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178238325372.15704.966533846683896036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0158afd1f01655c5e23c7947b3612337243837b8d6f47ef999a7427a4b8d0a7
Date: Thu, 25 Jun 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782383253
