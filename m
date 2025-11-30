Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2543918FDDB
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764462174; cv=none; b=J0tVXOfuJSCB4b+8XEfhb1mfqtX/L/GLce8RxuD3AHj9pWxKJKqvjU7l62ZR7GpFvznPel5Tr1/xHADb2tb2SN4LoO2AHT5rGQpcqpLfVtYAByGUxshuK8AGmPRzpk70KkUjy+dFcGmQX+XRFpsKnN3rzyFXkL9cWVj4YFeZZxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764462174; c=relaxed/simple;
	bh=4ijVUl+iClHIbU4ESc8O799G2SJ0pqDKV7mHhXeexvI=;
	h=To:Subject:From:Message-Id:Date; b=YACAyUNZGUVZOm6VN/OeRYw9xtCQfd4cWtG/hIV0pZP9ArlHGEVK8rimS4OSlDm0OFhvkwo8CPt5d5BZ2GUwkIagpyNjJoYpTDmvZ7CCuyWRHvJxG6QttGJFQN8WERPoXom33sD+m/ZKTl+V8sD7426XBP8tw2jlyzF6DLj8uFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwe/F8SB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwe/F8SB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A539EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764462173;
	bh=4ijVUl+iClHIbU4ESc8O799G2SJ0pqDKV7mHhXeexvI=;
	h=To:Subject:From:Date:From;
	b=uwe/F8SBbo7t0m/rCL1kyJbOaxcMsp7ltUBAsZtSgn8KqKfMYHOS1by2VCXDGk/bi
	 OTr7guwQ2Yhj6cUjLMzLsbaNkIA38SiJyQ9cZxyE7WCVAuVnM5TUFUbDpz4ohBFgIJ
	 hoFflYCKl3cb5moziJgYgp98NAWwuiGYxe3FGfuDZCuUIPNF8I619/nmXaijLN33HN
	 zjp+i6D5zWyt3/Hr39HDBK7/I4yAYggs6XV0HjHH0h42M3P2jVBFhMoYs65Eu0ob1H
	 96Zbq6vGRIr7Ldp9wnQtgzHzMBtZI57xQJOzLDa46nPvKcByDpnD/EjyTmy5jkn8EB
	 051NxASuX3W6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FACFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446217358.3136.6914153357749949605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066ef33773205fb785c3ad8d59aeea2f51c61542a79d7070f49273453e7802fa
Date: Sun, 30 Nov 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764462173
