Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58FD2E63C
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771707893; cv=none; b=dc21rwY48WBjItowFWZYuvpVs81NWo1OJiw/4ICRbHarsVouMK/i4F9A/CR0wFDKZcNxaJ+bzT9V4jUQHc9Hl8eW1cNF7fmlaxrSK1wl4ZpVG2oAMKlU4nS/1eL8OkkZeMknwq1DwtTNH4orvUTggzl9jW/FOm4mpX+Ww5rVsoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771707893; c=relaxed/simple;
	bh=78NtHJ3I2WpDKaRgKqctWSDRNPGwa003mv7SRY3ttys=;
	h=To:Subject:From:Message-Id:Date; b=CVi5q0J2ZOZlKjwRrGvKIzYylyWiovmm4QthBEytsFXyB8zlAEBu3kdFWaU+kzoqjIXn0SlQwRG3l2AYTboLi5dYBhaN++R91d7rZUmNmPI88ummT5LbEJyiM48xR6WUbaU1Qt4S89QnBdU6MLUJLopqRHkMmrIsQLaa5j4/yTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrVlxN2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrVlxN2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8DFC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771707893;
	bh=78NtHJ3I2WpDKaRgKqctWSDRNPGwa003mv7SRY3ttys=;
	h=To:Subject:From:Date:From;
	b=IrVlxN2I5WtdMQOX0gGjBYQ/8BnSoDRj+2XmOs+cA7URRoPG/EpEMVk8M5L1Hs4Xo
	 9CyLZEuOUA/DBbnVhb23SRbmCVPd2ruCP4c887yoRZCYbF2r9Z4mLk4RVVOzUPdTbs
	 /vwbYUy5ayLxA4DNIRcMfhl57qmsf9ZjcxL8EpNY985Lz2Y8rate1DMhufI+BEjgCs
	 LLEr6X4cOCoiJekSaNcBjnC3HEY69KoQmQ9tGTsId3SBwqXfQxwFrSAmsMzqaSFXeb
	 qr0Ih1cM98UD6XyWJCGVQjOxBJ3CBB+bmOPjAEF2MWivOToBQ5mt4iBF1n+km59QAR
	 uxwnkIIFVushA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997D8C61DEB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170789358.5683.2815386837029299556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3370c3568b1981beb3afe8b0ee23ca100d579e268cb93c89bcc6d1f0d57c2e1c
Date: Sat, 21 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771707893
