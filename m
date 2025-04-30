Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3796E347C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746028794; cv=none; b=HDeo5eYIISd2/UGKiTNgV6y8H+OZXeCTqygsSenXAgwWkj3C7RxIgYt9YrHpNF3V2qklwmuedQWJO/6H9qqMIvR/7gOJOG+9jYMcEmCd2+vpY3GrATObDvYS6yWhQ/ugQdr1bmydBcYLIFDbZR8o4dFPlT/bkVGHgs1u2j1eZdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746028794; c=relaxed/simple;
	bh=oeTkiUT2AJLtmMvpyDC0NqES53nSud+lf7hWI+LKzGU=;
	h=To:Subject:From:Message-Id:Date; b=WKz1VBH4C9qJbKGlKHxWp0u52xMEXxBzzFOh3z4QeQ5fbsVDAjuQ2Hbps6yMmOEepsEEsq2jibhQSsONfSFmidxVG84LIkZzqp43ygfIyLpTVFfCFjnEO9g8jknBtkVCeQ8TiXxlGzajypNL+fBcxdHTwfXRqjqv+B111tOECcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boBvNeT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boBvNeT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E725C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746028793;
	bh=oeTkiUT2AJLtmMvpyDC0NqES53nSud+lf7hWI+LKzGU=;
	h=To:Subject:From:Date:From;
	b=boBvNeT73kkpfeXUSxCSPDC1k4B2+ko1biTBR7lUM0eBkpZqRtbNn4zfrZNNhak4F
	 XqVInjJJ+jG+05FIKRc4Ni00CGx5hyXjRiqOJfVWrN9l3hlsFmMeJ8ve0FgN7DZKKA
	 UUQWD/60dnazqklNnwYAHPTWJ/GU9IZEq6LbeYQ+NhkhaiqrhD6R3HS3+Nok5WvEMD
	 9Wi02olxCHGzUkdJoaxrH3qiQuMPKpEkxH58BwL7AyM6AA2ASdYNUmTQGJWYKRwAss
	 y/FzI6fdWbQ2KLZ+srkKabxOXQtl8SvslBk/F3Bzw9vHzO2eK09wKNLpS86YW8PJoP
	 9XTf94UfLxjUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E382C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602879357.13436.6036265771940163174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85916d53ddaff335541553073393ef09a192b91461b2519016b5b450750b8d31
Date: Wed, 30 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746028793
