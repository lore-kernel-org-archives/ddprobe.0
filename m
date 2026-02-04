Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3DE284B2F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770191033; cv=none; b=Gd75nj84/PMzDV72/LX/AyRDzk141cbNRRadaGNCQarAOe/YVZA5rmA4KH7L1YeswJXdfsDd4SG1392QC9h/+trE5z0KwnM80TokVh+noydpwZdg60D1uIQGEFOKwPyMZQselsNaPVz1ou5XSUr5KtwY7JGs2B0HKY46MJwyFVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770191033; c=relaxed/simple;
	bh=r+9uKWRjmx1hRoYlEFeyu4VS8FZVbEuHIPRbsUKprBE=;
	h=To:Subject:From:Message-Id:Date; b=tiOpRSv2OVfHeMrTp3zhWmHmG9ZlbP2M1Y+Js20djmXaK0AjTy5Fk49u7R7eyRbwUlrfHWhNGmNa7tH0BgHBapCClsrJVqDbAMjNQmBTgVUm2d3n3MBh0pSx9h994TZ7juQvDj8e2DWOv8fkAX5/AwKA8nvkP4yVI0t5Ki+XSxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RY1otzG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RY1otzG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F894C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770191033;
	bh=r+9uKWRjmx1hRoYlEFeyu4VS8FZVbEuHIPRbsUKprBE=;
	h=To:Subject:From:Date:From;
	b=RY1otzG1BrthxFckoQa0y7+u0t8+/5i1DwhaBKCwNK9/keuadcNo8SXiGTvVN2Ecr
	 feGxCmNf+pT3yHYRVK03Qgi2uowgw1TzQ1T5+1B7ZWqudZHlIx12V4bvwvt5TenHd9
	 0amxUuc9LK1qPGU2KVa/U4MLrKau/35xFs+RMZKTcm+wxu9y8moadSk4DeuBJi6tCZ
	 nbCPS4xwoUiTwIIFdc8r8dlaXaeNe3i3+LrajIP324LtpgM4njQaN0+f45FC4eVzg6
	 SXvGhWo0sXnD3zhPqDSCLPG9nizvJ9L8B3g4qXeODbEx/TQ2CnQw/8xerry5TgnZTz
	 Hv0t8qSnUiUFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074CE83EE8
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019103358.1795.14915353988489433921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab8b69a6561694ca64ebefb0159a6f69bb95ec67dfdc062909b7fefd8c0c53f
Date: Wed, 04 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770191033
