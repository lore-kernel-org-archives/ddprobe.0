Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C935A36CDEB
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774941893; cv=none; b=gmq2u39V4GPl9VL7fAklDS4xHWC/3NwSekZYG52+EruKfIRds/X35bRfzjlk8F5EXFUQKz8MsN1MLOW2Vhn03JemWuxtSZVL8jPGyadlXI1VfWWTwq57pBH4jzk/thatd4fUlp6qMRNTKU1rcShCCk09lB+TYR9gkiyEnec36ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774941893; c=relaxed/simple;
	bh=4drkmiaqiCLelFGwnJ33H2eXywRjW/2tNaJqmNQu9i0=;
	h=To:Subject:From:Message-Id:Date; b=lakvH6/xrnGwjMkawRQ0UEQAvoRxM/apVMkBzMJ201WlJX9HAVJ4noeKEphI6WIZTSYH6VWoLt55XgjAcra6/nmsCEyMVfE870MLO8z2+IhdgmJ0kyPou2tp+Yj5Wd1pvSOzMX7+prreXd+sWLFy+tILajGmVIGNpjjY/vsGDgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOhU1sMa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOhU1sMa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD21AC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774941893;
	bh=4drkmiaqiCLelFGwnJ33H2eXywRjW/2tNaJqmNQu9i0=;
	h=To:Subject:From:Date:From;
	b=jOhU1sMa8Z6iCnFduyPQG66lplGJvFF2g+EUtasaeBsdlQKi6GGk6+EE+vmUk8PTB
	 OflFAjvvmDxhnWdCmAdZOFs2ynaPicK/JiuJ0KejH3ZM3jnb0/87G776YxSOeHU9mX
	 iZFU87vjZc9+4Ebj+uec3m5ufHpc3cU1QJy1L8oi4xxUW9MtYRrnaNi6Myk8+Qq2SF
	 QUFwGuRepUnWImZaCfdPIWriGTLjxfnaUkSytd0Q5BzwFzJRua5HlQMeMOp7qSMfzQ
	 CRk7+KCu4VYfvIE1+jegJ2oxZmAWGkluWmXUaKGW+8rKWhomcYkriTOb4Ex223YY6+
	 tSkIawa0HP+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C108FF60CF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494189363.13348.679113008698510889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55faded86bb05bb92f66e9efcaf625c948a7bcb72306f9e0e42bfec515d455f2
Date: Tue, 31 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774941893
