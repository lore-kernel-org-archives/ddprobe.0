Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2EB280037
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752117594; cv=none; b=XxJYD3fy0cfNbN2h/KazVH1zQEiYe+MO7bwtpZMdQA6rseZJwGTnjhT++LUcFnvfZveZ4zZw827V56goU9xRlDyhXqZZNlZa4QfAa6/j3TJTM3VaiqtBJx9wyB85QVSEo343IPKhWc5mVobpEdp05xJVF39yMehzLXjXhcMKecY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752117594; c=relaxed/simple;
	bh=s3g/iYi0gERkiUq6zu+lKkr6X+awDwPW13spf2fEiG0=;
	h=To:Subject:From:Message-Id:Date; b=GL7tGIad7YJtFK4HiJQgcqI98qEK5gUdkb3cDwuIIGoRW7r1ak/4UlQ5eKZ9hzfc1VDP5j9aqEgoU+TRiJ+CN5xM5OzmhfcW9QdKUkLPsYoVzo1B3/RkQQPlSyR6UHrAgCM31qOd+dFbRjZkYFYIFcQ8ARwV9F6ste98KNwIGbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMsIv/xH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMsIv/xH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16B7C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752117593;
	bh=s3g/iYi0gERkiUq6zu+lKkr6X+awDwPW13spf2fEiG0=;
	h=To:Subject:From:Date:From;
	b=hMsIv/xH19UgBGFdxa1wb7QqOYSM+WENlM482MBg1uA6AS6DSf/ookCwzUoX4UcCr
	 0m7T2m0ODn0X8NCzttXV3gIgAebX/fv1/rzS8eBSZ2lwVFCAMGRg0xiRp0sWAam8vp
	 zZrORa1LjblShvO0In1PWmvLRNpXNTUeDuZP08RCneNSE9D/e+QEAWrqJMwUmwK254
	 P3GgUABtCdSjNplpFXJ4+Ez207G08vX7cbeTIsUv1K5qszvAeQofAO1o9y39XnmJCP
	 0eV9WxA3hs+9JKmPZvEezDLnmNZvtXFiK96dWzCw0XGoNCeMItQiL+E8zhBBp10Lvz
	 UWekdYYT/kpWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141EC83F0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211759357.11149.4378730819552803121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9191a06c760063187144363c3f56aab2d6b3d39757674a965f2d883e0f91efbe
Date: Thu, 10 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752117593
