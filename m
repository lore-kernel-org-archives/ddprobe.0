Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F82258ED4
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771441494; cv=none; b=HotPFbOwQCrjgUR8/JS3hdSWE/q9MfZZqOrhye7bUyPtJyhILb968FCm8CStA68y+zdXr8tfvMexVSrbDbcU3/sgjtO/6JURih7RV/XU6tnDmNTemskqUctF+KDptIxABhJ3ngIPEXEvNxx/r1njXAZ0M7AkuzZ9jHmbgvYQvfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771441494; c=relaxed/simple;
	bh=LgjLIUqzZ2yLAi+9E0bWYddZCHhGhfREEerv7ZRXzms=;
	h=To:Subject:From:Message-Id:Date; b=WRdM49fqR7runch5s0ZsnysHUYrRkAWEqrYzQJOwfTqT2KP7gi42SrvQQXx9af+yz2thi7Vx/4jIte92oYZ5qfQu72+q3FMVCra6VQpu84F9n1hpYAYptQ+ADQb6fg1ne+EsnWcLTDraz4z3H/AlwBKzIYLAsgfRq58B56pxQZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5KhvpZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5KhvpZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A2DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771441493;
	bh=LgjLIUqzZ2yLAi+9E0bWYddZCHhGhfREEerv7ZRXzms=;
	h=To:Subject:From:Date:From;
	b=X5KhvpZxjf9kpZL1BEcwQAJCjBY7M/H5YxChvcXQhpTl7JyFbz87tjG/ui6wiCjL0
	 A/5coWurfT8CkuJuRtKg9vDk5LuhVELWVtpGZU+xZkibSm96vJH1kRHaGtjS5OD6/G
	 uJd+GJsxFQXOFPF2FsU+M9pvW3oz3gCkHB7mhyAXodzh7JNnWOMOuOaKJR9EkaFO+F
	 qARZ+peosxkZ2ZLyS283n3Av6vPUYTpLDOOJ0Xw00QyWshhLyjrj687vDS1Hk6vV4O
	 NX+oTMoE5C+1pK7FEgRxVWENXqV1cj/wJYFyTcB5ZWI92ddN54aJkofvOIbI2GkD6X
	 Cz9VJyVtFHDjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE7DE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144149362.30139.10782227452666155196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9dc16f8745b048554d8b7c25e9980926e0e764185cde66bc95affa3944456d
Date: Wed, 18 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771441493
