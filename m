Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6018B26AE7
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716831863; cv=none; b=QLSuvGX4qVsRjBtvHelXxwzzpVzuSYdm304mvc/7jvCamUJ1P/gXkv74TIyMX/2nfGZu052QH7NS4TlthQF9ghjuddiF4zEusFDjTyVcJYbViLWXeqlxbjtwKsXJl2SjeYxsor+0EpRaYrgLbOScWkmU0VNgbTGE4G+zOHQG5ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716831863; c=relaxed/simple;
	bh=/aCLpKKiHBBWZZ/e/wRvfSrLuppz3jTSeO3h2feaCkI=;
	h=To:Subject:From:Message-Id:Date; b=S9b5X2dojwHIU1hfMKckxt5T2CQTKCbu5H3q7sOoXHoDzvana8iN/o2Y9Gfa0JhWh60oN/zTYbTV8PIzoPtjveBmzlon9oVv96hkws4by6yscSQ6kGApUupgTPuenFrvpftpMphM8QQGg2dkgLwXiM38JYNLAXuSSYCFrIHXxDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pML76WUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pML76WUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D542AC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716831862;
	bh=/aCLpKKiHBBWZZ/e/wRvfSrLuppz3jTSeO3h2feaCkI=;
	h=To:Subject:From:Date:From;
	b=pML76WUxAO2LVolePOuZtBpAoVQx97EvGkwHJWGxZYztY4sUkTUDLzHp4xYAHmdHa
	 N+KS6taqVgbKHdhpi2It0KxEkEAv+ndsWf3HIvYmO//dxcUqMFf4VQ4KXGGlVz1hi1
	 e7E3/MWY1ulPALfBJfBAK/nzqjeSstXtx6BGJkvNbcV7H2LzjpILFUWV9HTPkBmfxa
	 +skbw04RitoGqXrUSe6k2JI+D49NBixIf7q0CLvJxDCRVUGzfqlojpYp3T+GhyZONI
	 5q9H+AOqR+kjwXjjkC5aNVrndn0G5Az82IQUKlaDAlcIRJj6hPY9j+DeuhobU42kvC
	 Y2neWH4+HYKAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F04C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171683186278.27313.1661828978779920117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c2517f40d19240727ad7d5debf6f50fca74c0e60c0f4cb8c11b041d9de8265
Date: Mon, 27 May 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716831862
