Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6DF1A0BF1
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786242634; cv=none; b=uihWLRf3eF5PxdIZmsFVPoKo0KfpJxZm+klnUIgqYw8zK0nmycZZV5BAH8PkXyexlPhV8o6PiCbErxJ63B9J6+G9oHNi6fxvxy+wwfJLbjcKz0rm4hwX+9qAyJGM8MMajJp5s9OqNCACb+vxfBascW404WUt0L4JEyQsAN0hmrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786242634; c=relaxed/simple;
	bh=NFk6u1ZgVZeGL1MtMsEy7xQlQeDl04lvfdJm2zEbonM=;
	h=To:Subject:From:Message-Id:Date; b=dGCh5mP+cxv0+ItyVHpqec2onuX5BSljKLoZI4iAR1da9D9yNtntF2Yln07HOTniq2iJdTAPx9EGwYZZoSWKRfqsKCbDouoa4F+C4Gjgk8T2Gm9tIBJIBXfAh1ZFQEgKbjBiNijRTLeAeJtodZ/pN6YJKyDa+ir1SRzgPhfyRp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6+c8rwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6+c8rwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB92AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786242633;
	bh=NFk6u1ZgVZeGL1MtMsEy7xQlQeDl04lvfdJm2zEbonM=;
	h=To:Subject:From:Date:From;
	b=r6+c8rwRAjBZlBYeqqZlAU4jybt3iMno2dO2Klbw0d9mIjHhJBkE+IVTQWztuyguc
	 u3bUohp6+NyYOToWHKai6B1C1kcqzvIZLevt/CHGwE2HKhQi/NvQeBs//Y3zzC2moM
	 58BroQ9Vl842qMYG10VxOuLljQZlx1rzgu/BJBAGxGGX7vAqf2UcsrJIa14l4yxoYV
	 xD/x2VOrMQ4lQLbFX57dlxvQ9rvUsn9VQZBvLdmAv2D/2iN9dhYRQjeDpsFlktRlly
	 jBA7pk1uWXlVTnAUtODYPErQKs7g9mc2IMXXDdZnSKpyeUxzi+lOHf2m5V/0BEGEl6
	 hWx5jm+tFav9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B3CC5AC67
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624263368.15155.17323152423477308358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b106bb120872830ff239a39482155e6884865a31e68ff6487b002b1c34d73eb3
Date: Sun, 09 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786242633
