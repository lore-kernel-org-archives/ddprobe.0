Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136381F3FEC
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768668234; cv=none; b=jtAdwwecsRgV9vn2xvqN7yQBezUEubslz7eNgjDDIuVdaJfDG/u18JGrE8FXO+uf5febbeYe0SdckxwNPllwSbNTpYSaW/ak3kThP3zv7uC06rloxTmFf8HKMPk71GknKwgO4zehf2h6MgT7MfUgLtvx2JlvkGBP/rLecOJRYVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768668234; c=relaxed/simple;
	bh=4aCLDFzWs0igERNkrMMCmCu2MqDgO8Vu7tNb9hJzduI=;
	h=To:Subject:From:Message-Id:Date; b=JmfVPWkXQjCXAx1XuICcexyGbnUBCw8llsJpQvWT7iY9RYOI4MjhJtnAUdP6JEQAYe/g65njxfqEulWY246ZRZ7B9uIVNvRQqBdNEJq/hSo6CrZ+NDsNJSmTANfP6cTrwFYYSk1HTxyjHvvyXh/Ss5LJzS6kEYhDrv3obneSshA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTPQjZLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTPQjZLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2114C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768668233;
	bh=4aCLDFzWs0igERNkrMMCmCu2MqDgO8Vu7tNb9hJzduI=;
	h=To:Subject:From:Date:From;
	b=DTPQjZLTq5f3L53g97rX91F91bNix9FY+OQ+2K7VoIUn824//sjKp1ZnCXMHD2wZp
	 fQmOAehCDomBv5K1oOiaVNK0ai8GbYoPbEiSu1n2IEDnzf4GgS+6uRjuvip8LRLdIf
	 6NO2Yq8VIYMUW7QgldTtLEYmjYi7XzQPnkaA8OgN3kdNR8FP3+V/N6zHNASgLN6GF3
	 ohVCqy6WZwkcOoZ/EjGQPfI0snf0j6T5eZAuIeCy9qKRCEtuKvl7StpDyzn7KCL+VP
	 3jVHN8NdY/JgQf/7aHoQ/wpKFODSKj2ho39SVHJ2f5DX3huTLwXfeLbAWSTl6Kdndh
	 PgL6oZNs3EYUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D86C98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866823357.31613.10307974903123831351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c14dd8d31ed4922f5904cad2a797cf48b37a58b2bc1dbc8d2de6124a4830460
Date: Sat, 17 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768668233
