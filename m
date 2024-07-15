Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D43EDDAD
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721063123; cv=none; b=FK0xlq21G8rm56OgeKZmJd9tOwdyhLlUMz6QR7S6AaULIni+nTNZFXim/cy9KtJLCiykZYqap4vEXlPjiZpWywlE6pI15PkyYZRolwfmH5AhviXQjXtQRtOIeX6r7Ch31TroWCQF6M14S8uaOImllBHk1NHokxx1xOGpcF79cXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721063123; c=relaxed/simple;
	bh=hmhxAp52AMGaEGBfi805DQwMy/tfAL5mWv18A0MoeJo=;
	h=To:Subject:From:Message-Id:Date; b=Koj6rjIvOSZjofQmoznmT0AIA2i9h3IScjShi3zT/F1Go2lZomZ6UbchpxvRjaaO6CO67+HLA9FnvGSh/Oneo6Zlzjy5HPfPPgDoJtkTI2nWNPkVWRHFQMOrcDwD9nGtQACYq1zi4e/gq+WKLBgwBNCLmrUaosw5r8+QbAGeQbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvFcrKy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvFcrKy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E11C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721063122;
	bh=hmhxAp52AMGaEGBfi805DQwMy/tfAL5mWv18A0MoeJo=;
	h=To:Subject:From:Date:From;
	b=LvFcrKy4AaPMGG0Lk9rq1aLBHXFnTqXqmMDHgdsmAkrVK3HDbYSNJEM5v6pq9ilg5
	 NoPRxWcBn3cykjPltXQxLwW5EBX1iRyNTMaG6lQ6uCZJzt0bEQ4h2yJcWJ2shsVUcR
	 xkRYc5BOlXOQ5Fe3cLzqaOLH8MPJdvDKHGlJrmlQfeDz/rIYA7hwgSErSYWvrprntu
	 OFx+yiZO1RiOCphSSKC4Adwr7ZEncayjxV/RlCk5yNYgxmd7U0+LsLUKwsetSrN3eI
	 7BF5aSnodAQtqK9zbM6xyLZOsJ4FILPUtz7TU3emTUu+U8Uq6eg0kSxWXXUhrGD6/g
	 7Lh5FE52breoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4451C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106312279.28023.8404466232654304502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d579be3db19e7b09744d3ccf4f13b383df91b34edff90d10edda5fd9f8aee4
Date: Mon, 15 Jul 2024 17:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721063122
