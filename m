Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C291CAA1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721811354; cv=none; b=AnLpE3IXOrzxmKcoECpKJa+INeHQd5lQwsYR0S7LRMBwP9MstbGEEv8etHxZLlr1UCHHq2gABLiRd0hXKhCXNRbNBHb0O/Dm8bLqBtEaXEKYascWnjq0aOvdTRa96S3ykJ5CKNeleYAK91ssG5mjCPwkIygFOjre5QZCTPN0d28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721811354; c=relaxed/simple;
	bh=WbHAqoATHFh9sAK8vVA7P+gr/ufIPjXmXb9C0BnZJ/A=;
	h=To:Subject:From:Message-Id:Date; b=maWaz3EJ1UWKg/d7aFMDtTidL3qyncUJLszuwwzWMhUdwQmKT1rTNiCJargGd4wlnqNbyH7RSBmGvu3RsHJom2OB8Ub/SzlSFx0C6Snpznv4BwsjhtA+d/x2xlFKhV4Vm7i0EEWP5JCTUTaGq71WwhlY9Mgdr/HBQ2RFn+Hfc0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6EhyT/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6EhyT/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41C8C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721811353;
	bh=WbHAqoATHFh9sAK8vVA7P+gr/ufIPjXmXb9C0BnZJ/A=;
	h=To:Subject:From:Date:From;
	b=Q6EhyT/xV9Apl8QSKG5izvJ+z1s0+FnpiyBuEOO3bHW62n9/lyCNTf0GwT8E4LNE0
	 yXOIoPyvh53ZR/LRPK81yAAGEYTpcjbOMwA1Z7s54oFLiqSdyYYqo9KEsq9NafzJS2
	 eiYyWM7rKEqDAUoC+eHgqi2JR0sscNZSSQowlfmMpXv3/LTXeV6VNOS+Zo3NpEd4Q2
	 zyjzRnOTWZSaRdrjktVqOYJ4coPo0w5GGlJEdBuLoF+Pg0fQI6YkdETnZTwtXFv3lW
	 EUEeG4EO6JKyzvIYvOhjux0bb4RY4gX3FqmMrWnEUhX/13GqFRXM+yypfzPzJNKimO
	 i1P+Bk7XGWORA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F087C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181135361.8990.6520016473732553370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26628673554fb539d4b692e2d7928b6463f258b25f45cff30c70673d4634c74f
Date: Wed, 24 Jul 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721811353
