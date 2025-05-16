Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C33225A34
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747386594; cv=none; b=dHSXiv5XNvyPqx2uPIUnxHMJ/o4nhZB4Z1aICSRxNPdPbv8Cf9jb5KC+oSO340OwLqOgWu1oQD/vrbpBOla6uZNYtFnX1Rdtc15VSrQHLyEK8IwWHkGcvFom+e2s8YQguWKTFmbjqzQZnxShtL/vMVq/vI5Y9yEsBICxSDSfRKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747386594; c=relaxed/simple;
	bh=rd8dKVDfwC0Dgm+0Q+3QVHYVZzdFmy4AJr1idO3XQZM=;
	h=To:Subject:From:Message-Id:Date; b=n0nZFrLsROGiWLRjN0nAPdq0Ggv6z7aHcjCW8iIhWp4EhkPOsN2FbgR/RCEx3L2Mk50rxIU+xPI9NceGBxF5ZIqggQspuvoJPDBGxkxUrwa3qbhKpdFQ64E7MJxhr6kh2Zxr6tYLi2tWr5RdW/an8nF4ZHpaDoML4h+ATCGM4BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHkwwQSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHkwwQSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747386593;
	bh=rd8dKVDfwC0Dgm+0Q+3QVHYVZzdFmy4AJr1idO3XQZM=;
	h=To:Subject:From:Date:From;
	b=CHkwwQSXPX2IdHfhU3QuOUjRnblEt8SuH02oZATVlzj39Iwb0c0CS6aQ4BAk8q4ak
	 0XIVWLWA0N6GVi+qtkEnd23rNsuruzEoGtMlOqmdLQ9xmM+8nBz3NkfJMTOaLa/fx7
	 6WOWpPyi5nDlF6sXXaeJTx0dXrwfTBjDRgoH0dmtXUIluEL7wHwavlwKS+OkVYCdNV
	 32UW/+/dORB+39y2EHJSpxoqpMOz/LKtK4yke6fq6YrNtGnwjrkUc6N9s9Z2QSy7yd
	 WCrWhgYQAHZdPKdWnyIu9KNPlUJRoxSk4MrklyTUrscwhsbWGWzI5DXTVYAIEN11FP
	 tUD+Ja/9uVcKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DDC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738659357.2885.14294606622100920150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb72d446ee80b65b01e632d45d1a542f049cff1830f56334408c03486c0d1ef6
Date: Fri, 16 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747386593
