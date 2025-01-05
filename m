Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6E242A93
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736087154; cv=none; b=gxEYEYSbOmQ+oy7yAj3KanuUG+3y1DSkYlDZWi222e+B2L3lISw4C8n1Xqlq6iE5SIqYMOFLkQFZRt4SYsTOpQgpTpI7UerTdiiVc/Bj2BNoCLQ1rfKupC7/av1/vSbQ7thYe95DqVA4U9pjYMfqg42yyq7/YcsZOrhWne7nFj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736087154; c=relaxed/simple;
	bh=s1VyAOuHwjOttMKaBMCAEtffRNuwkjxN4AZZ4xziZko=;
	h=To:Subject:From:Message-Id:Date; b=PPlrPQc4zs9AWSLNEWy/SDCy4IIs+GxhbTVm7ShSWbuUChqQ3DUefJ7W6h+0y1O63mjkeWTZuVOFV4u3TN47/ASeczyvc98ndC+aKlSUBrx0CNsn9P7s++W7uefK9hlY5/1z50ufKfOaFA/PrzRGYedYvdI4+ilSxAP4HyW1s1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXRF8bBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXRF8bBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27DDC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736087153;
	bh=s1VyAOuHwjOttMKaBMCAEtffRNuwkjxN4AZZ4xziZko=;
	h=To:Subject:From:Date:From;
	b=mXRF8bBIYzYPhCo7xLXSGVsqqEh/zItX/DNpv8L0yqh9Nxbg6hkYa1/zUF9fzElSm
	 bj9fR6AJSW7lpROq4vt4rY1xbIwGr/uP2iKgL1IKZrqnDBNY//TcXMy47BQcVsoWYX
	 iAi1DN9KeBsgG8Yv7BtdLG6nqmiu0c2dKIvYLm4AbtfaJH77SLk4RvA7PBvoBRf+oP
	 Ox+cv8/3+PQa2FwuexX8yq0vEl42iFew3gE1p5QNNYeL3LKGuQdLqIc04fhZoQjalx
	 FXmcIXoL3xYiAvw0sp+dd2D8iSMZJV5Q7ZVsg0vuUbQ4qk/bZQkv1pluE3YEe0rrKL
	 GWRJy9tgOpfrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97947E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608715358.24090.12830141595927725683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e30961aeba888c780c96d07a6a4402cdb423cb4a3460ae3e1f6e910dfeea073
Date: Sun, 05 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736087153
