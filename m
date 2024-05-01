Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC383D968
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714538543; cv=none; b=PO9Ivoh3M0h/lGevKNkDtNJ6YGdpJAFSLSltDHJ0SjUrt0pjOECCuH7GjsEFZlyGZ55rDLI5hbxbeIuVVJSFFzyRA+HtIxCsqzcHgkuKdtVbJEeQmHiUIarMm1nO827ju3g50pS4TVbVtI98sh3VQzSeI3xl/weFwF5eUatoO1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714538543; c=relaxed/simple;
	bh=EYBW7nrnHXiZBJP0xu7VnkOCwvSdOkROQPyiq6sGZGk=;
	h=To:Subject:From:Message-Id:Date; b=Zq8I09DKMmQY2wfZ8j4WFUuYnR3Pn4pdwsc3caEFjGshUzpQLOKiG3sn8srFTLFDyECC+aVZVP7XFkXPhA2PWDmoyDqoe7U/lG1H41V0iHhm0TJmHsiRC/hDxS9AwFFyJxzu9IfeGyD6ZuMF9S+gwqXNwQ5lVc8FvQDXx9VGhfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJ5YOP1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJ5YOP1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD574C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714538542;
	bh=EYBW7nrnHXiZBJP0xu7VnkOCwvSdOkROQPyiq6sGZGk=;
	h=To:Subject:From:Date:From;
	b=TJ5YOP1NR8cKbiLa3/nZfYHSMj0/tQ4l207X/9NUtkt+3GA+/yNv/2RjcjAVEKr5M
	 wwF+IuRQRZa2mYzyUtoiAzifEERzdpTed652gbXhhlgo2hZCkRSzB8vLwfdi07eEhf
	 dEJ67j+eUnHzjstOvsGU6WtrYmW1q8PfsPvRVZizTjiiVQMcs/mRyZB893UAs3Ohfj
	 w4T6EGzfeK1YlfRUHVjttd93vEh56ZopOR44dUvs/ZeVX9TErAMyntKnNOAU6+3U6J
	 CqXfIhanZnSU0ocdgzO4uvVYJPtDB5XEfmuP9qIF/CL0RUf20rkymkhtQm3ZgcXeFj
	 jchv09Bq5qNLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F39C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453854275.20128.10075827061624629892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06b901620dfefb444e0b55b99d22b4bd8ef6b9d7d4036a30959861413ebf7c26
Date: Wed, 01 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714538542
