Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA601EFFA1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786410634; cv=none; b=eFO7mVevx1js9bjjq266gcDrylPpFTdJaI6DCc7A0jqgkbHaSi4qkgnos+oLQmrhm5vHqmqiW7iUnASynVly2+k7lgyTYYpm8gTETbCD3N3BGAb1dFW3bqc3VFb4iQiTlAJiRNz53C/muXIkAhf1RMYG/QWh8+3fJuzt2aN4KJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786410634; c=relaxed/simple;
	bh=QflrJbDA9P8leSOG3Z1KsEKcCsf4XePR31qZrm1lAck=;
	h=To:Subject:From:Message-Id:Date; b=vBUQElxLitGmiPTz8rlDYeBBp1+Kff1fVrbrHCuoaKKEL3jo0jdkfoUn4Yl4H7HSodDSxuGMYQQ0Mu/ZvksVv5jC5wKM4EjAouDjw9eDHJmbpvhHgyWDdDSm9GDJiLVbCJhvcvH7UfunYRRjRpuZZjvThjfu4O77PGs7J+dOzqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL3VSuZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL3VSuZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA780C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786410633;
	bh=QflrJbDA9P8leSOG3Z1KsEKcCsf4XePR31qZrm1lAck=;
	h=To:Subject:From:Date:From;
	b=oL3VSuZ3GMAye4r0QxPrqYccINxEIDGvljiHDFGfUsACTmcB5pDzIBK2bevSnLxpo
	 gXcE6EBWxcaKXTiWCq/K7UYW6YyEkU/FSjsB+FApHhsuNLkbYxVDgHamcbhL0IVdFi
	 GqPxlQnzsjI1iqjrHjlXCAwjNA9O0mDLVpkTS7+pogH8P/7khkFpvoTHqvni+O6E1x
	 ETLJTy/YfMyUfjuJfhZ1dOw9HysR6Yjw4WZM4is9Wk8Vx8xiNBs99HPCg6K1chqTQ6
	 QTIlVtmgxfLIfbwWacxuTzlOnvh/SDdLmlQl9AYeSFLSyMO+Rdt4cIMt2JPlkWu1tz
	 3AurgOqHYMrxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8996C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641063368.12573.11577967584307058767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6e8dc49a1639bf34c4c3b2349ac17f039f271fd3a0a89ab9fe408450cf0b32
Date: Tue, 11 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786410633
