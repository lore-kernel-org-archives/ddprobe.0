Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A00920314
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715748143; cv=none; b=hvjKo0Ncc1KVS4gjSzTdPnc51KjkOxTtxftYSeXI29E7UaxovmfDQcaFbT7Kf+09phKu2gIDAvYmxKowAtn8vr/FLcu27Cyl4szJ4VFY3rwnLOJ/5EYffRD5uMGNI/VaBsHDZWc9O4f02/DPlMNoicj9+LVrc+uKp0OZIRPl2JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715748143; c=relaxed/simple;
	bh=hR0BM9PaCPJX4A7C58GzYjYGO/1ZVywAPljVYhTC35E=;
	h=To:Subject:From:Message-Id:Date; b=IWrmuQZM7mqgSTHs9InLZfuTOghxEHhDu6gL+0WuE2uegA2I8B5W5bOaajLg5weDziI0Kun45Lrdfpi1IzfYDvEhiI1HcNI6JwCY9zpYdoSIvVQ8A2fcwdvpb8Bu5Y8UlThHvuQXDHQUjVOtSBHbtYR6B+7IP3PsfZfCNPRSsX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9gjTGx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9gjTGx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D209BC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715748142;
	bh=hR0BM9PaCPJX4A7C58GzYjYGO/1ZVywAPljVYhTC35E=;
	h=To:Subject:From:Date:From;
	b=D9gjTGx7mNPuOCTcJniDAJg1lpnFQJCCKOWAY2KWP8f+HsfZLSRP8xnN8Xb8cvS/1
	 ihQPxEEWljvsJ0EzmszWVd57zFO4voWCfmpTU91bW6yMYl/ROLJKqkH1C03ayD103t
	 x173vu3VijLI5PAEREGbFQZUGgZNuWrJk7KSiu8VVHP3IF/vRrwgQ9m1FIFnPSAymk
	 Wh8+Hljq8WrecTQlmnjC8429uRLxNID40EfGwJlhHvgCKo+1XqYkf0JPqqWqkJzIPc
	 6/kPRDxZCzibcrwvTL5sBGDkLfymPdu5ES9opKnCzDAhdXx3ku2FAX84ulch89G0sg
	 ZhDyKeXv04Vww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0819C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574814277.21085.17799144991659281186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7464357e7b3b13c2c568ae9b756470648cd351c596b4cfa00eab41b515ee4ab3
Date: Wed, 15 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715748142
