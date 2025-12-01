Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BF22F616B
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764606774; cv=none; b=RqB/9RM45eGn1EwZ0TR6LITHxpojHWmAIMFI0XlUWiq45CPRUYoUXKwKsFxrTQUUPVYGxu18ObX4CMLIKVMZUnaMi0oTV7R1GgzcjIF2GxpXejdmFHa9bm4kKiBp3zqK+Oay3qkhz7JQDguxIMuS42MJsrRuZ2eOUpHvvy4VIEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764606774; c=relaxed/simple;
	bh=1srNkLKgNBq/0E73A9pE1cAhOn2QcgTfJzCGlrK/Sos=;
	h=To:Subject:From:Message-Id:Date; b=oTQm3dewYUIt9+4BcA3PhxP7QrdK3e+KGKdenlIoG0hpL5p/hr8GVvjqxpQ+ZFF791X5zpOOoPJH2N2qXqUixgvuJZGasjTu8+u9JiVaKefGa/abEi9I2EmE3DaGBeYzR0hTz7BZFo8Qc9p+jMmmrJmESrFcJcaewe+ckjC6+gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV0hfhN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV0hfhN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8490C116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764606773;
	bh=1srNkLKgNBq/0E73A9pE1cAhOn2QcgTfJzCGlrK/Sos=;
	h=To:Subject:From:Date:From;
	b=MV0hfhN75wnF+WTROO9V+JFInTNvJXNCUyr+bX8/m+wG+B4oaGuo4PeVw91iBggiV
	 eFxqkgpJbhttL4otfwjILcU+RcMNEeDzg+CUs0IotxB/JR2fUlhxnhk0LyR9PzcrE9
	 B990HXMs8FehkNSxWDl04EYtxAjYtUz2XahKpdRNl68YvhwbynYoxJZ+2gKax6gEjU
	 wOvvoCB9eA/C5nPewcM6XJ/+iyjto3Zu+8NNhISsQEkW83qaxoHx6oMgqqCR1AdBys
	 MJzgrkfQElOWGIANpNMbZy4XdiAZmFiAP0GMYmwASMxBHqdzuxq4PSgSR7OT8olZTC
	 wC6N0TiiK7/dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93485D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460677359.2411.6328792475869554096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5748dd2f863217fff396081517bdf8f11d0828cc575b6eb9ac0608ce76ea95ba
Date: Mon, 01 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764606773
