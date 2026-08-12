Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D073351C0B
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786553434; cv=none; b=ZGn8cE8oEruDRico/6Ii1RUyGfxugsfjUSFISUnpMkD9FiNc8UvAocqxUoIxM/un18+gsz3nhH5gsdpgK1tBXETQR6gXiI4gxoytwyzpW7q0MoOgjf5Pt17XsSPU8KPTXbb3hXePJ6DC9Ec4PNTUNIE5OCcxmPY7spFW/ivjlVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786553434; c=relaxed/simple;
	bh=MFSbw7piBKAp9Bmorn0AmCZj9sb0KIzHkmmlF2cIdGI=;
	h=To:Subject:From:Message-Id:Date; b=MDyybujf9stg8lYQbg4q09wbQIaY4S4u3oi/1fq3agNFuvSwJnaEntk9jf7mDi9kNPFOyrEDnPs1r+zQUMK1M/el+Eaoq1nQVdwmmWNfE+pixZ5PePSZFON5IEr2AtLSS4OcB6J0+wiASeNZHsV/mug1/tIupbvVlRXx75+xEfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJsKJJG+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJsKJJG+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA65C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786553433;
	bh=MFSbw7piBKAp9Bmorn0AmCZj9sb0KIzHkmmlF2cIdGI=;
	h=To:Subject:From:Date:From;
	b=IJsKJJG+OfqTNVbbKVdQ49nVRdWd5TNWRWyfL9Z0RwXGhPaaPCaGommqqmgSoABsK
	 e3WWjSBbIHAL6vYqbH5SIAjk7S77LxWc2it6dI7N7NpmyRTFEqUg9j8ZFrXNVJcCe9
	 gV32o5ECrBIt0f08Hg/bnlqijvVS5lAfKkgUVslopCSFjveu1ALkeSY25pTICkGkUJ
	 JQgm0xwt6BU9QGxCGGt3NDmJaXwfGllll84+5n2st4MVKHlnOzFC0GmYI0zxaIIHDe
	 ffCQgwOzjrdHG/XhzIHqXETCbnJvgYhkHevKzhBWR/Nt14PwMjpjobSNm/TS1uSfdg
	 0TuO5fdfQwKhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA21FC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655343368.11570.15090284507435113767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4df22ea2667946c00129dd825e799dd11adad7b5da417a9576cc4777676ce60
Date: Wed, 12 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786553433
