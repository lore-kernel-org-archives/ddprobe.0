Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03114366560
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779480754; cv=none; b=GSdGDP/K/6tf8xhX8nElUCO1gJQGEUvmMjp5DHuEyV1JDYlpc9EXvEdC79iTcMbro4wDQWvjbs+9syT0Vl69bvlHHOidVN/xYf5k740XygfBgKyZLlDYCnDF/qIK3n2cw7tMe5jwnIs+AGSz1mXytfj9Z+yHwgyf4oLvoVZcJsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779480754; c=relaxed/simple;
	bh=Svdy7gcxc2gKyrBeGoQY6w8rSFKnlVDx16UKnQb3+nE=;
	h=To:Subject:From:Message-Id:Date; b=F+y4YnOUJr/bchK22BX6zkxD1NLeFBG2guJDZa9r8pyyAVCpkWU98cj5r2e+QIFFRc8vmsX77hPhhLqI+5IMN7KX59zthdqFLxR3wDJiqfAjYeP3zu5vFRwyYrm8N+a/CEghssnoGSjZReLWvdMIBByhAcJ9orgQPHWXb8OtWG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQ14Fxfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQ14Fxfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DB4C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779480753;
	bh=Svdy7gcxc2gKyrBeGoQY6w8rSFKnlVDx16UKnQb3+nE=;
	h=To:Subject:From:Date:From;
	b=UQ14FxfiN/Q9Og/mDyMlj5lJQVNkXbw18f4+aPfJjVcuqhGtS8BimWgKozR9cd1rK
	 CtkMrRQ6BmQ3N3peGnarFUFUQqPIOPZcoHuBY6IansBekemADHGgJs7hFuFwj64cB1
	 3KPyFij34XnuyjKIQvrrBb+Bqy4y2XehduhqmpDEp4nglooiazr6E0ihuEoUhY8XwM
	 j0CDCo1sRnTrBkE7jwmeXXssNzpEdwtrrXf8stGgCFZ5wz8EHP42JWCsAnvQ3TQD/Q
	 1p/1TvD8vouHNaXgEoEBVcxEDZqI7uq1QTj3ygWIYOYMBTyc+CNbFT5vcSpgQRvOFG
	 2y1nRNtLwyjrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDFECD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948075371.26735.6342358850165429213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1523d0215a5032ead835ac40cc17b120590c385febb9ab3839efccfac3508480
Date: Fri, 22 May 2026 20:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779480753
