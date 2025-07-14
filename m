Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEC925A34B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752511194; cv=none; b=FVYLlCQ77+/nizZQDFFzFb8lbKhe6lBNqiarSN7V+JxRSTZkooIaNV85Wz1j8W6Hu75Xw65wDqdCdahuFDi4RT1QXcUdzIcT7OeUDD7WS0zelLnoBUiPKEnK3HNzi3dEUd0k8ulr9WhEjX6R5qYorrd7SYz224BKCN3BZ8/jLyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752511194; c=relaxed/simple;
	bh=wN3nMeUTVlOMiApWBJX+M7Igl9pKWojpPxubPkSitno=;
	h=To:Subject:From:Message-Id:Date; b=pAbbfxZWrxIUXJesBhevwxZ/7FlilTmHVZqXkgA4kYsvG83xYgVC6FxLogB5qUHnMsRD+AUmj3mipZX9YMKc/hKIgOqLFeJOLvavvU22KyUMnQP37OO3BplzGR723UvzvY8EXYCAWZS52sI7wj2Q2zGR6uM/M+XCgQAwO5Jehkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0H+EMci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0H+EMci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F2C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752511193;
	bh=wN3nMeUTVlOMiApWBJX+M7Igl9pKWojpPxubPkSitno=;
	h=To:Subject:From:Date:From;
	b=j0H+EMciK5x9kG8M69Cep4mMaoGkP8LffiSDynbHOX8EC6ZK/znJjXpRxz+Cep35e
	 OPjMmIUw1CIlts/2FYA1HuxIPGbJkuuoZbx3tMbi+0O/AJZuRFoTKvZLZExoRuetxu
	 8Gm0jf6KW0PNyBV2htEAKCHL4WMy59dGb5jaoRZQJTf008hP8F9NtIsTQZyf8lQ417
	 YD13VcVyPMwSkBmYh4MbqnKnz7hjgAXAoAWrUJrYupbxmbhyi6cnZIdJCXe9Nj+eMF
	 b5qTl+bKzAjhp1YqUwtyR8uYEGytis51+JwEsfABzuRIl3HQs9u6znp3gr8v0SQj50
	 PgeXPhJNjKvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90262C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251119358.24468.17139489321473673126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3841f724a716a154e40c9a862cdec8ad0416aa5eae176b130f568dd3ecd426b
Date: Mon, 14 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752511193
