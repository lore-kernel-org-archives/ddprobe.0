Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2CD30C343
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778439034; cv=none; b=YFJ6iyHtg8B4bF56Q+R1ICvmphPmlhx4wSLFr5sLD8kjNpfRT0/2A9+QDgzDKV7arvtK9iqYWtAuQDFDOwMf/hXXoyxGH7Z2wdy5+oGX9T/V3eaq9dL84KGWuoC35vO/BrdDno+YsQrCojjmLWzFqoxIrmFV1VK7bhSaEvDgoNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778439034; c=relaxed/simple;
	bh=9PawkNiZYCKUS4gMmItaiXM2liO76cHzKSdyQPOdiUc=;
	h=To:Subject:From:Message-Id:Date; b=D9b15KnOrCymfcvmVqDOrT6bAEkuZWXu636xmHXsIkrjGLOXDtx9rFkcvY3+drCuKWdPoZfN+l09Jzjv9W2pryqM8zWkBkHTWHQX+Wz00yNU0Asfh9ZWiHnooNd1AaRaSdMQE5LstZSIIXkaFw/ed8ExU9C3kJuWIKxFIjQv+/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjTWiLYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjTWiLYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58EBC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778439033;
	bh=9PawkNiZYCKUS4gMmItaiXM2liO76cHzKSdyQPOdiUc=;
	h=To:Subject:From:Date:From;
	b=AjTWiLYOsy4msPkcyh6e/eg8PL21g8g6w5/H3zUOFSl2V84CNkgXBE/dKlWQ2/W7R
	 DYQhwgVx8rnnaeC/o2EjC8awtTdi0/wPENAe3bfHrz/cFwM+hpNOev58M8smXAgdxg
	 UwYtp5Xn1gggu9f08CAFAGa/k3pGLKvz0559jTxhEg7UvpryKwhtxSPDmWyZNtfhVP
	 mN+dXZQzag/QtTZtjzOjyVrdFHjTVyYI/N9Qvoc/dAXjCsUQJJRfNPo0k/mY+a1dlu
	 /5UAlAkOZKHTK5RniQkGVfmvKHTUCTFP5rZ/wzacZOs0EdVR4LWcF9CAIdG0A0qvVn
	 I++mJdCTk48Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18FECD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843903369.1566.11893894461060865516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2450bce38ae46a21ede8910236664e63814b7ca0a9c3e1f8d320f2f2dc4633db
Date: Sun, 10 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778439033
