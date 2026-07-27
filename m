Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4784E175A94
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785138634; cv=none; b=JGwIdUJpubMC0kO7Gxp6BXgfQ33k3xmlGKt95PGqL16loem/XXOcROJn7tzuwnFO3y+0e4k51IMwrq+3cXchf4eJEbZWuODObBm9VCj8waijqzK+ZVtuiOwO2rt+sjhAkr8bXMJK5fKVFBmwmHGhDzb0/M3iT4t533UHKLf36Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785138634; c=relaxed/simple;
	bh=9LOnRrQ+yjGd1/ChE9q6+yf90xN849l8mMVo1G1TkMQ=;
	h=To:Subject:From:Message-Id:Date; b=rkGEftXePISiLmQzyZcyRrz9jjE9y/UnT0rrtQN4kIpV/I87cKn2tQv6kdFFfHCmhTdXbUrnO9M1SgMBuO2a/q9Pf1h7TuF1TkTipy2hWtMrJ90+uBvaAEyRAxZhh7YTgTJiRZzvtxyPEP50jZ7odbeaEoWOL+ACUFATEviTczw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWH2D1YA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWH2D1YA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF84C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785138633;
	bh=9LOnRrQ+yjGd1/ChE9q6+yf90xN849l8mMVo1G1TkMQ=;
	h=To:Subject:From:Date:From;
	b=QWH2D1YAaQ2Y+fatWM/yeSVND1jF/+u0/0PABY3+aUta8x1s1qEPW8CL0HDnG3rfq
	 MJomdxpnvzUNYpkXYhQ+06ZzEQ1EfQsF4ig2QhB162Fqz3sUDulXq0RaX1gTLohkOd
	 iX9sxM7jv+nO7rB8Vr5umslarfa0HlV62nl+NF3pO4Og7AXizl4vfjPgsDoG0UJ5ID
	 QistbXC9Jmly9dvCbIrcBbFFtLcm8s+SnBhvwiTXlELObA3+uBxU60W1AOT70FlF7J
	 9TGzwv0a4tFZ9SeuX4Hi4790/YaZL0F0mhubnTbtqO51LmDLZwpUpNXGGp+gNmS3/S
	 NkwzjdgJtSXuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBC3C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513863369.10538.5569018851619863294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e44ba2850c416b19974a5bda35809cc8cdba7c48ea2024883173f5ba6ffc0a
Date: Mon, 27 Jul 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785138633
