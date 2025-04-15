Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4281923535B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744743594; cv=none; b=KrqjeyUpSM+nrjqgCA52wkeN1m1ONd7fltKhQxVN4i25cA+n5oO6/y0rhQOmARpbJMX5K066IMdqr70cuwXhiQ0SaBkveUGUEyUcS2Kal319JJEgJ3wFANu4DzgxxTMzODwuV5Zmt4SmiuGoTXXqqDPJeluB5s6+Ll2aEo+azeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744743594; c=relaxed/simple;
	bh=Cq6KofJlrFehUtUKjG1zWv63EpVrhosB2wUFgrWmYxA=;
	h=To:Subject:From:Message-Id:Date; b=HEiUEUHerMBOZuwyZ72/gx7YmXn15kD/0U7jxW3BRDyur7X6n//1m6zZ2cpDxVtfATBvMAfL9c7EnIeMK9n9zpd0mKxlJJ3e6wuvdMubgCM8e9LzZmo2GfRwdbxM8sF9WtoQsJ0IUKoIhWeRJJTVAonLgX1W4x4EmaUyBKQfous=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pM4BeWM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pM4BeWM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A677DC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744743593;
	bh=Cq6KofJlrFehUtUKjG1zWv63EpVrhosB2wUFgrWmYxA=;
	h=To:Subject:From:Date:From;
	b=pM4BeWM4Ych+3o3ACr8Efor5xRZdgXCZOUy/WixqpVF1/XNfm59RzDUO+fl6lz3ZX
	 xT7/nvosm076rQojqY7rIFbcHF48xsJbMi8xRxagsPgLKYvvc5NPh7dvN2a03gX9lg
	 B6sqrqrvV4Ife1U/l3J2X/Fd6+MNngkKmhJPsSemiD3HVmAaJBdrIaVTelX6OnBP6s
	 8jlStpLR5kET1IOlTy1sV1vXbxYT5ORtpOdGpfWeiSqXs7pbhlUt+7hJXNfNV6ieRg
	 kuS7mOhtASzEiu8obaMX5UWQ6LMlC7q1iuy8zyJIdrM8bCYhffeDLVIsdRp8QktB4k
	 RxlQlpiPV3kKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90100C369BA
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474359358.31220.2132941494094357343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49585e2d7bb989e70429aecbde2f80374648cd8c309276f723f41f911b19c36
Date: Tue, 15 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744743593
