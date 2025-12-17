Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FAE8328606
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765968234; cv=none; b=LjgLDQZHuJMNthlwCFc8SgShF3MnfQCAWbhWY5XEX8FIl8N3YQG7Uvpi+7hJWsjB+FhBriWzeAwhJKKBQy8ELqOa0nwYOaOiz4y71NLOSTDtG3h1jnadbsDhUJAQZ2rXSOXdf4FVx3e8Lx/AvpCQ19IMvAFax+8ZZlzV7IjE6MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765968234; c=relaxed/simple;
	bh=wmFL2Cmiv6X04srmv1P3JBTgaex6ny/d6KBDEUiIW4k=;
	h=To:Subject:From:Message-Id:Date; b=LUj/Gto7Evc+nyAfy2luIw2jQIwZLbiiX4kPqXduNGY4eH6ATDRGA/8qDaSoSMcDNri8z7SMyMYoJFfuVymtS+d6Hhm0a7skfe1L9jQhbLK9zXx7QLloGkdRiozvaDnTW11RkEjy/JHkHjnxRPcmoNVLbw/uuhjxs6PRrmksQHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0ZtRFLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0ZtRFLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F9FC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765968233;
	bh=wmFL2Cmiv6X04srmv1P3JBTgaex6ny/d6KBDEUiIW4k=;
	h=To:Subject:From:Date:From;
	b=a0ZtRFLjeHoZWi4SZ9zZYVwUNRiCv9mbHsx4/lHb9oKM3BKFlqJTxhiC0vg/35Q4g
	 94an4Ce3m1aTQ6rn9YRlAROBYq4OQPY9yV1eIwIp+JthwZ5c3eSBckK3lJD0ofBvDV
	 mX/3L/IbUpOQJY+lKNwfIqhMOel6dQYq0yiBDxVlKSnEikHP9Eeunwx55Pc4Hhb43r
	 rBdaSjcaUpPFuo6YpLTkNdmlo9/QERb+yl8Hozi/4br9Rg6zm1Qfnfyh4fss6URUEy
	 Ue46dWVlGrt9V+L0pM5sSP5DmqjNE10Hv9PbwLZQpimsbpUG8hb1MPwaOA2vN1+QJs
	 HsvhncCLw0fbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94586D65549
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596823358.6617.17509039952313177952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07442fedcb9fdaa96d2dc6cc6a99b6447239624737300f01aae954b44fc7a064
Date: Wed, 17 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765968233
