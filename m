Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA231FBEB0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776256654; cv=none; b=q8GyWGV763xII/iJhRUHlJeEZsSb/Ngive4Rv+IAs2vhDMtVmCnJ+DyPZqkElotEqvIisKjF3Z2zIfTqU13HsKhZhTOK8tscyJSAI6a30PpKVCRoKhI336WBMBx+Q1LKWV8SPmvzsRI3E84GuJY7df3FHp6YevHMXnPzyjFuxWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776256654; c=relaxed/simple;
	bh=ugqShN6rUJb9SI/LGQh2XtnGj8/tU4Sgak+UAjroTi8=;
	h=To:Subject:From:Message-Id:Date; b=k6qNZyJpPhTCUnXeoQ1K+NzdEnWlQgKNE66s2ITLnNaWuGOPHsjtmD1tQm7IEEHDOk8W/w84zNVqN9cwgMZbRXIMM8Ru/qBvYT4IpPwgsrin38yhx/eW82U22YP0JQhEgS9AuIO4KOZVLp+P/GLYWSnOhlqwdC9UkdL21LpBgaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUZdA0+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUZdA0+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92C1C2BCB6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776256653;
	bh=ugqShN6rUJb9SI/LGQh2XtnGj8/tU4Sgak+UAjroTi8=;
	h=To:Subject:From:Date:From;
	b=KUZdA0+Lkg8LHV5qcsG2Vi5/6CaKSkDeIKWvnvySEj710O0rA/dmXezqmK3XMiSTR
	 oYMOy/BSC9u3md7/8k6tEt4MEiQoEzuXr6ZPdXddicKQJLVUT759+vRdy9A8jXe9LB
	 b2UgJu9PnmQer+8g4FYNDVQ9i8s40RTa1KPndCQYPvGGn/9hKS7zg3FxEFoEh8swiX
	 9Kn+/xIGv1Lx/oowt7K88zOhxSuBh/vvFCQdvKrmitwnOqRinZGV5rrQ3VIyRovv5J
	 yiiPBumYRpRglqpwTrtdmPmpaOPRopcpNR3Ljq2PO18ahrY2+piruKPUItT3DDpOXY
	 c8q2IkEGURc3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE5FF4199E
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177625665369.916.9801291146646382107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b569c405790686832114c44362d3a4d1fe1000100de689ef67095403a88cb1fd
Date: Wed, 15 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776256653
