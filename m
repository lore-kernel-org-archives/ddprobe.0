Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB2614A8E
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750055994; cv=none; b=pe6p/Jop/Nq2xg5Ni/xEJO/bLG2TmIHClHxzof+vhySBHQWPHnxXjj4+nPTayhTTeEnko6PV1GSIBWaxGROsQ04HlZnYuG8KerXQzu92Txn6tBKxUhyZeJDy3y/HsTj6/ioXMiN+ZPxhVlMTnt+gZWdfyDJ5h2OQmIDuZY66aew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750055994; c=relaxed/simple;
	bh=i9HF744KL3gGwv3Rc/swlt83YSvmAM2JQCBQuHT0idA=;
	h=To:Subject:From:Message-Id:Date; b=gZi6YvRukEwx/tr7ipG4sL0thAb5IKutIjfyABOFIylUlGPXkbq82mrztGDR4uDgKSHtg+edeTKklIPS9NiI0Ugmo4ystcIXMkGkSZEhujDigb174c6dJb+h/jag6Y5zFzNGQ8HX9LpfsvNLlI9pa9IlKLx+fjiVMHIXcWT1MHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpGQUC4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpGQUC4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5ADDC4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750055993;
	bh=i9HF744KL3gGwv3Rc/swlt83YSvmAM2JQCBQuHT0idA=;
	h=To:Subject:From:Date:From;
	b=GpGQUC4ogGpiIG/m7EUD71b48iOQOFmNp6GRctyhUzUjsRV113JOHSmWG2ebUdCrg
	 eGiGNeKBVJdwmkk/KCtbnCB6MG1hMBpxDNavYlhEmUyaVaLgf6z6s3We9/Ogmt/S/r
	 /VK4riJdyHTZef4WkP6wvD40l3isMbZzTtTuCLeB7bc5V7ySdthNwljw8em7i4eb9s
	 CjmAVFBSSGf9w+QZd41XBjYWzTkesxEoyZl87bp8Vb2Qa+r0xKNvz/0jOJbibQxcqI
	 Str6s0qnfT39G4HLC3/ND6/XV1j4GIc7ddq8LjhRFhxfyw0Q4rTewmg8rTVWkqFDG+
	 w0hxQlN+iZ2zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C71DC7115A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005599360.3279.12303261872366625647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5549c9b8b478c24515c799684fc8102ae33232e024071630d437ef94fb170a26
Date: Mon, 16 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750055993
