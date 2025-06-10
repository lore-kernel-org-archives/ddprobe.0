Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B315289E2C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749592794; cv=none; b=LVLn5uULmFNxL809dwXgmBYj1a4SEhJHMJsEkz2+fuJQEC2rnmkTKI0uEwICP/uKcbOuwJGvTZCCvAf7QjEXFWKQeeEMm9AST5Xt4xoIP+LHes/qLZap3O/pTEoONu/vcZnJSrwbM+Dn84oTdzSaPB12Glp9e46XQVrg0mrp1Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749592794; c=relaxed/simple;
	bh=XIiQZtDNADOlbdKm6Wn8Jehxp3A+Bcc/smkWJJ7GXgQ=;
	h=To:Subject:From:Message-Id:Date; b=pjH/It+I5TWaHaqoFJnXigQLfTPHNFUseAZMnXjISGa45tocnIqnb9CG5vkgliuC5yRUfnAj8qmu88ylON04l6hfeCYjb8BHlktj77gjeUNHIxk9FtzMvjIO0kbyoBFTgUDOZt/ERAYXVJAh/RJ8gQ/JJAyZWcsBCVoYVJIg8wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lXrsHUj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lXrsHUj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4181C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749592793;
	bh=XIiQZtDNADOlbdKm6Wn8Jehxp3A+Bcc/smkWJJ7GXgQ=;
	h=To:Subject:From:Date:From;
	b=lXrsHUj511FE9RqKP4dWhPzCgjvnLvF4wCnlJBONefPDqUmpp6HHpfawHQQbJxpXr
	 cTKjq/O27FBYlaiSYv40mQLiEBcG+29+LtAJCKPQVCBUZkHa0Cq51M0L2XBeCvJTuX
	 g+qSKcJe/lgJbJ3FXR548MWcjHMxRylZwIHZMD/q/+StYDKkVmmHRaKQQqkDwIjUOV
	 fA0mvk1PApUZ4C7jhMqJUMTehc3L19+yt6pFTL8BjsEwuCWWguhtwUhu/mnAydDkG5
	 aonr8TXp8dmQiweFvtGSZvT4RxktMSMtpJFuqULNBztjZksVzY25c0zjpHdBfbiSC9
	 8ajslu9FsYZCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F272C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959279357.1403.489105791008297713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c2e604d316069e23275d5524a14952993fdd9825c06f940f7de7c03be5d60d
Date: Tue, 10 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749592793
