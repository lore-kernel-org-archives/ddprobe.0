Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EAF75809
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769998434; cv=none; b=pmwcdNQ9Vw98uT0BWFCw+nXHFntiipZSHjBGKhr5RFo0CKiOr6SgdWhn2CgwvMKBxScggcVlO+ICV8uKL0d5SQ73QLsGmp1nn9W9dA8cGZcsgLAlkeY+jcrTTj8VBtpXFgWCyOKTS/VFOHMgxWLHL49J+b4En/c3Nq4DUwtLAKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769998434; c=relaxed/simple;
	bh=zKTem3ILEJl7XIK+PpSPx16PnNIMjmMYODZuNJdWNU4=;
	h=To:Subject:From:Message-Id:Date; b=kl4s/eY9aYZEmGZaEt85MluNspYfW8Nnp2ig+SfuIDbWPP6xnWy2iSiMjrI030NUeHViqsbzif/GtVHrCmTLorcXjOp0EOtgX+ks7xb5YGu8Y+LS/P6E+dApjX26F4Nu14m1i+52v+T9ERdclvMZ3PAYGktFkau4czlr6uLIQP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ca4SJ6/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ca4SJ6/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1600C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769998433;
	bh=zKTem3ILEJl7XIK+PpSPx16PnNIMjmMYODZuNJdWNU4=;
	h=To:Subject:From:Date:From;
	b=ca4SJ6/KnGNXqTIYSv8JGk587J5TFv9J3XkSw9duFH7+HKk0hgk+tRfdKQQ9Kmhjc
	 9fex42OFUsnGdUwOLT6d5AoonzN1QWVfhFCmjikG/iImx2WVRXbWCssVKcjd4eONSg
	 sF0PPFHJpOeA4CUU+txiJNGk64Uok3da2IGG+O/ren3RDQOHYWDLTOxtlg6ORkd+SB
	 1V29dML02X1jyVvjhxzigV0uqpj4a8UYK9vyeJ9o4hyNAXFJ81hBdV/loshNna8hhG
	 2qKMOraQPiHWqKBENK3MLNC6/gyouFYCe1TmaVAaNZ4z2Ip213SiJc0RpI0uoS2z10
	 vNZhV9htfJlBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF91D172A0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999843359.23781.4159717110716045013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27cd0ca6f9431ff45f5749f030bf8ad930183d518a654883cd1c8877b2acdd7e
Date: Mon, 02 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769998433
