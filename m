Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219A81459F6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767193434; cv=none; b=RanxW35Tua3MV2NSFJ21gtdxQLcS+EJxYU2pSLESSu7cyH/S6A1wbkKWDV8vJrkC0rmIUXOS7A08BQfj4FHuvfO5+pjpkaj4oWos1z3Zopnn4CIWkTn/ILSJr9d/n7h1Y6hA58TaKXZFtDgFWsRSoB9d2buqsMZ2f/MWGJZ6Z9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767193434; c=relaxed/simple;
	bh=BGqSi0NBnpJO7R0u2G/orKJTUB9U4ia7QE5j6euzG2Q=;
	h=To:Subject:From:Message-Id:Date; b=CgeEX9OxSFlRJWpm0BUMFKIHKdtRN7+2J+6GhLMQrGgPndTtqWaHyGUfcdvTT/NN5SqUnV8OudMWZeVUqHa+x1+TThpAQ62uYfExYQiSh3YI31ati+v4qhoqwKT6MD33Vk4siYFx72TIWmqEwceB5pHrxHggMUOFjRVMLsuIFQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFjFQyuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFjFQyuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04BBC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767193433;
	bh=BGqSi0NBnpJO7R0u2G/orKJTUB9U4ia7QE5j6euzG2Q=;
	h=To:Subject:From:Date:From;
	b=fFjFQyuM0VQ03Y3hMgbD8H3AvLx+vNUx1cH50CIBZ6gUwByVC59XdXtAlAQwtKWv0
	 ahK859S5vpNGPt8FnmT9q92B2RWoHX+qxKudivTrtFrxQAHeECysiptTcuOz+CO74R
	 2r6iKcTZDTLfw6jY4xbXOVQTeWyWnBfwRUtK9jDYTQRYxZbt4lpv732OgI18mKjgjL
	 iWwl6Omiud7tnvpBsV4sxbRMHp6fUMoRwp64w9TSok8M4AKy55DL9gb1jPoo5kyCOK
	 niVWZL4634kRINp/+wG/WqQmV482uddlTpQAwmRKnZsqmoFBxiOx1oeLnMpJbxL9Ak
	 F3cmMOgqyWyvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19DEE6428
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719343357.3026.13433835954147176894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc79b2c3d321da97b128bb669d6d3a4266405a70d84a15369d580ab26621d48
Date: Wed, 31 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767193433
