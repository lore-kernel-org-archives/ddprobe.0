Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2451494CC
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758442194; cv=none; b=PwqXxyw3eTSTNb+ipg718c0RQ1xdNJJtOTVbWoazgbiA0qjWZqAyU32vf/TAcqE1yjc73bizRLkX9dZ+x1gX2xfPIsivEe0YEQzEZ1h1WlDStSwTnKOca5LlxR78u2jnSU/yLxHEK0y5q4v90UIpnjLZ7kO3PhkqPnSv6ipBQLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758442194; c=relaxed/simple;
	bh=ZU70Ea7hT35Bx2jg4vwaEf2lO8bo4StLJzFBD6oGMh0=;
	h=To:Subject:From:Message-Id:Date; b=G7jN/j6Sam3YP31BF0ooQk57nOO6aW/j5DaM4Fmr3QFVtN6e/F7sqoyqyQSQiOP7QWQRr4CkSXGJDhzyzHpamXEd21eQ0Te8li3RIDyUr11Qu2dClQZITJSfF2xeHrp/qN4Qaw2gnYveLAA5G74yF6LHpbTmQfYgV7kWznATP2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4FzV1Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4FzV1Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1A2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758442193;
	bh=ZU70Ea7hT35Bx2jg4vwaEf2lO8bo4StLJzFBD6oGMh0=;
	h=To:Subject:From:Date:From;
	b=V4FzV1BbvFgZg2Vu9Ql0RFs1CuCe4HpMqFk/oiPbXC47z6zEjZa0pqqKLBMWaTdMp
	 eONhwJDea8lGyxWoLJiz39NeGk4BdxrKKKDm5RJ5mKzcF8N3SogBeOdNX8fQ/82v6j
	 tuqVHc4koT9zsjUK2cy77/XNYTtF4f9sjV/ArxLWg3V+XRIQ6PKh4oV1eNclV2rTDO
	 3cY+UU0j3a1W9j3J4brCGozS5lWSnZI2H6f8qeJC4PnWuohHSokatJDJYtSdp25D3n
	 NLAUW+kR2oKFOZQUgz8wR4L/kRDYY/rwnz49AbuwFHvHTrFDPSaVzDkKFjKlCeAm4q
	 Hb53Xidit1/Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96042CAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175844219358.22212.14024516965035776289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439be2ca24ea4fd3540f7cd573e37c38ec84507b874ecc5cb0d57af6c5126a22
Date: Sun, 21 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758442193
