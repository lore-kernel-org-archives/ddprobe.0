Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675E9331A53
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790038234; cv=none; b=EU15FMDKrO6MVoJ0n0tHy1E41L6fCssyYj+ZFIOxcOA+bIlvnL9C8KaanDnmkQtvwxLiTV007rUspXbgY/gIcU66CGypjMlUi7INHRbWkge9yAK37ol6oYcsmvVNj8SJ+bPwVF9e7W9z0gzP9X68svU+OKaB3cjl5P/qxjTBeBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790038234; c=relaxed/simple;
	bh=Izd96ehz0oadXc/fhDWWt8Fw10QFMrl39oYc88B8rlE=;
	h=To:Subject:From:Message-Id:Date; b=gL6T49i+SELIxmaOAsAjbt8NEGQdht5iC0u5bf5ShHucbtOZEkrjx0WL8bUoqh8ZKd4ighex1aGnTBhP0vjfnI6P6DN+hhQmz202Ep47N7vmlmqSiRf/1yH+C0crkmJh4CzVGBOfcjoL+syatEnv1/t5pEpqgheH2L0KUUgOEvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUt5+c0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUt5+c0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE8D9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790038234;
	bh=Izd96ehz0oadXc/fhDWWt8Fw10QFMrl39oYc88B8rlE=;
	h=To:Subject:From:Date:From;
	b=SUt5+c0i5hcv+7vOjgNCwWwLHJ963QdPhohJfgxG47GfmjOp7wYthPWxcFyeVAORL
	 znXVvzwNcE437A/RXC8Ms9rOXW62cfFZxdys7RpuRiLgr0lfjimtztsdjw5tbAjmwM
	 b6PO7EnAhzdrpkhrVBKRGapxCbOcMzIhzqvO0T1hJZjK6K8u4hwKT86AOvz5HG804F
	 tTufK+qPtuSR3j4yRiMbY2UPWfncJ+G0Ze8aKeSP9m7DClHmajH/yY8p8k9lGZMtRy
	 cgU1Evdda/U7z2SDaASz9O+HEXSatoqMj2pawM9dP3IUVpANAFo6WR/lswQB3GJqP5
	 QGzvXT/l6B7FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75F7C982ED
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003823380.21023.2795914663194125533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86950d8f2c8c0c91f8c0598a7e276281efc722b65f92d55a82e8572ac3b6681e
Date: Tue, 22 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790038233
