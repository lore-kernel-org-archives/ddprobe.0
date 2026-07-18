Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABFE221540
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784336314; cv=none; b=kliKeTQ5ZKvlLr2+Thuehi+yzjmOqLfxXqCoo9qKWLviwvzAbbdpcG49CY521uej44RI2wwJWO9CnFx8sc+eSJ1+7J7nbV0NANxVEBVJDakW9cHPtA3DAmXdw2tIDa4H0jINxefosUMJHpqBkcuE0WSqsqJ5Rqdc6RhQAmNCzS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784336314; c=relaxed/simple;
	bh=X3mP/4atvDvPHqgOUdIYpNInD/jt/r+w+LnGSsBKIVg=;
	h=To:Subject:From:Message-Id:Date; b=JLe7TYR5rCsucUlypMYLiZVJT8HIbZlMHeFtBdbJwzLj9MDtZSWEAn9nedXxYoGBNa0NxZu3uHkG0oSYleIT8QfXvKwAVIPJtlrMhrjk0Z1eqYbzVAw+lnEKcRA/fGIUxK5m8PoEm55ExPNWjdpBKzwmHMtXlQlMSIpVO9r+140=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KT25VkZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KT25VkZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DC6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784336313;
	bh=X3mP/4atvDvPHqgOUdIYpNInD/jt/r+w+LnGSsBKIVg=;
	h=To:Subject:From:Date:From;
	b=KT25VkZm/sjZQF2G8VSeuVN4ZkKGJpaYFgYCm/jh6uRIaEOzNrgTo9P1o2Hbp0KrA
	 IjMUgYYMDemCCFvAYT9bg9Mhst5Tl5ngHoHGvAXKXTHSzOatTsIbYVn7XYS+7VPx/8
	 1Q3dNVR5WkR/NYDj5xY7oE+ZsA4XO2GXtm1VZpCq50jD+TsstR2gm+CjFAMlAjenh0
	 hiY9UaNaZ0tlDCGp9PP2PRZqTbJjAMOX2TY1GNCaSPz2helw4BMaXYcM9a4GTLjool
	 RmPnlKOgu+7gE9yLs8n3uDFin0zEFWejtBJ73njTCxxWYBxQ5euoYR6XwjHzy1FqKo
	 O5lj9+xuKfpcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B21C4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433631369.21669.3994419850705741468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc58b5432b7b76d8f7b4d406650fca7bb40c59f95cda58269d97f5ee7b92297
Date: Sat, 18 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784336313
