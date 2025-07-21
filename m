Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEC4218593
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753085994; cv=none; b=BdfonvlqlYQOSjexXCRQ1aq2JL9nzqy9PdqCGpFWNZz7rIng0H/AAKiV2PjfcAFRDI/ZWz5rV0dd1qTPvDqRzjwEpFrW6xbXZYlOiYRQ2BONygS9Zf30bbcoVN6VWHN4foQkYjxh3616UGMDxqEM6f53axPw4zP/TCRzrv9GmkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753085994; c=relaxed/simple;
	bh=Hht0GIk0BnhR2Zj/dNjZyCX/JVW3UrC4Hlk6C+QdB8U=;
	h=To:Subject:From:Message-Id:Date; b=DLnDnaPAN9vLRl+DsFsEWapwoYinj3H3FXRueQpteJJvqXtW9EeDDXsGFG7662c/mk7rfk5fK2nbXr6oDqzZN6Sd1zt9G6z02B+D+4lrZNtGtmtsUize8WSaU6oeie2NhaQiXHnzI200YT4jT09/jgjpkVXRPDyqgO+ewiSByGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKg9d5pl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKg9d5pl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3201C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753085993;
	bh=Hht0GIk0BnhR2Zj/dNjZyCX/JVW3UrC4Hlk6C+QdB8U=;
	h=To:Subject:From:Date:From;
	b=SKg9d5pla/hq7o9+cEFqr4bL/+eP96CbUifQ/2nYfTorQFfcHgI//JJa4GdvqdtC0
	 6++a8NHZBu9XuzPdWvNlpcziiUngofnE1BpUkySuS6B3Ua+zYm6jgjg865Ilw+0Uqq
	 8p8vrfzSJOTw3+O646QOBGbtU0tVk2q6It8lGy7vTjGnsQv/XXDn2LWLodgxoBaYgG
	 J+4FQ2UOZIEPATKCvD7EeH3TPpLXVUjahQA1mUuVeZcFQCo4htJq9YR1WJwGN9njv2
	 WJDzvRKrywzQDG1opho4Tw6segcBaAfIRGOuRMDBabEVqzo8FMGb3/y7/RQLvYQku/
	 b8SK8xMMgMpCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92662C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308599359.26113.5453096024765661140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e96ba836aa7d303fbcd7563bbbc21d7bdbab2ac2d477a363363a489f09f7048
Date: Mon, 21 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753085993
