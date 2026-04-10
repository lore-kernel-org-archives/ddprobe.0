Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0B72DC767
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775800054; cv=none; b=Ty/21a2ZfNZb36JaqAZlOJwdRWLHBa72m86Enf7sqC2XOJBL6dm70MCtgIxGg/0KwF8dJxKR68UDwawyEptf/qq49N+8RddoTLIUA37EjocKB1aO7MiWz7cNYkKAarj5A523chOfCToG3Tm7Aj7zi4woIiU+pJy7KGH4hys/gvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775800054; c=relaxed/simple;
	bh=hMlQUYtRxvDA4424PKR7BmyXXWMNg+myM3fNN5LSTe4=;
	h=To:Subject:From:Message-Id:Date; b=mcQDEBopk7afHoJvNiBoSUyjMALXDIfL5td1gUREzo89l17J0NLmXvNTEiZ3bJyd9bYk2KTx7XtFWsDa5UPI70eWsL76bc/HsboS7k8bqDd0BdcDyqIBOhLZL1tI2Y48/N0vIslHjh3Pv9lzkqJl3OKQVG1KyrCCrhbABdj/sbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehuF06g8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehuF06g8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BABC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775800053;
	bh=hMlQUYtRxvDA4424PKR7BmyXXWMNg+myM3fNN5LSTe4=;
	h=To:Subject:From:Date:From;
	b=ehuF06g8s/acmhbttbmasQvceHeZaZ/iJI6+XKT41XU2gsvGixIW0rRc1UNj50k0k
	 J+MXh830ykvyIUKsFDANVf3VNPYgX2OZ4iHNALwjAEJ8zaAGbVG3HaG86PiWinmyN/
	 o80M7L2w+iNVbzcwYfT+U8PZVDw9X4LdFM2qx2atkDfXmM16PQhXSuBuCb5dKJbJFx
	 SwIbOlTgPkBCO1wtegUDs2ovmzbwIh8MyjG8dRiWtwQpvZljg+W1sNnCUN4YHfi9oD
	 IsvEk2e7KexbzgPCAC+0W/ZBU/FxuaaB5fOMGifMOZmsnsJxJZpIbndEIjN+9oTrTd
	 RpWhrCvqoVhvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DB8F36BAC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580005369.29775.6076874389014002427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e072ba6354bd7e18c6a4c4c43c9d0df2a4de5a9e4e968f2900e977d689d893
Date: Fri, 10 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775800053
