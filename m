Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BE0225788
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788054634; cv=none; b=bj9UO2YOiLXa5ho/gGygfqzb4GyXQElS5ov5nhVPZDc4brp29DUJSh3qrQcGWMc8swAWPRIUKqKqpYGz+QwSq3RGA8yEdhuDRjy5+BzOhWll8jzAMJa7VnUyvv+b2ncFp30DxHCnMd6P1EDQb5wAoTmdJ9F9R7gieN3yQAz5DX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788054634; c=relaxed/simple;
	bh=fxhXkMZud9yjx+oHbaklvRJi5ztIlJTzcjqMJRzP1GU=;
	h=To:Subject:From:Message-Id:Date; b=eeelc1x9x9VJAx3rQ9yacAqp+g1LGRPujqI5wgxxQDvxWfSp4cQfm3I6mG2DF30QL9+i18G30Z3pj0MNT37v2k33xk7r5XVkTQ6/G4/K3rZeYOVRifc2pajqXscU/WqdK8YXUaLyFiQWSlQHxjF9ZlZc42zNjeWlh/QFbspqIKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5o0ZTAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5o0ZTAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C741DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788054633;
	bh=fxhXkMZud9yjx+oHbaklvRJi5ztIlJTzcjqMJRzP1GU=;
	h=To:Subject:From:Date:From;
	b=X5o0ZTABpFJIUrXQK5Bb00p68AVRWxuBdzmr0F7cCrfZEJfkbw5kiH248K4PgU/cq
	 /Z/U1Z7PrkghhpGGbunf/CyIY4+Y8oc999e5gshmou5TacJVjVN5C0Fjtp11rP3C5p
	 E0OHhcWyOxR++OzIZsno+qpnz9yHFsU9cNpI90JrOu37s/qnQGQ9o4q36nUHsEe9Qx
	 zgcXAZMSl94CZmUA9Radc9N43YLnlWnNd08mPWlM2oGKPt3z4i70qs3O2PqY/nrhHO
	 z5AmvG04RDFV7xrYN55C0B869Lza4VMts/OPnKwecM2fh+2wv18TtFrDYDPD1dFu6e
	 wp2EjVeWZzTnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B146CC61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805463369.25411.12834876581077284835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d443951ce4a6172c3970e7880ccb0a2c59ec224b826956b6151a8feb4c6290
Date: Sun, 30 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788054633
