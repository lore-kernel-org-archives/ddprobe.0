Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2323E48BD27
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778081254; cv=none; b=SWeJVWwaJhUT9Iyck/88HpVngzif4LNI1QPH9YcuelZZGsG9W1g++DxL8jTNiQOQ/u9UXFaRrMkbsGrADC8wugjPAKurJ+FKTHVFKJwUeItqQ/fOEZEl1LezRLWY97kNcXad3RVCWpNz/ivXWE0HHoSo5Sdcl5idFz4oUFth0nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778081254; c=relaxed/simple;
	bh=W3Nfs8sqVXnig36ElZN65OkqNgV4FhSerscKhPoWWbU=;
	h=To:Subject:From:Message-Id:Date; b=Xg3tHCZjORUgue6h0yjwv63YCI12tgjlt4gESreZvvEqNrz1t4enVelkCpsU7HRGSaYsXyuZNPwKLg3QGSQfjWZhlyd/YRhYuJCaRDAUQDQjqGK5d7yV3e6Q0zwmOrfl9q41M6PlvahR7CroiUQKTaIo+tttbGvI4x9yYfIOrMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTki72rq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTki72rq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9700C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778081253;
	bh=W3Nfs8sqVXnig36ElZN65OkqNgV4FhSerscKhPoWWbU=;
	h=To:Subject:From:Date:From;
	b=FTki72rqSM9kwm5zvLJwtajFtxqlGeqDwQbb6C9pVRGv2BVwJ9HLXMk0LWJERf3Ei
	 BlzXZwQv2sf08UGOzIYe+pjOSJBZwhOI+XhYbGdleG9razE1byJFIztA4DuHknFWzs
	 E7LdB1YNq0bAseWc4L4Zkp6tiUoWmqYV7OJm6X++Or/8AN6sFn9z8mZ4BpLoBIEQNh
	 lKPDK3GzlCyrIBm2Kn8Wo23MRFWSbcycCmG1JijCEDCuR9bhMAhlyW5hbCIXOC37KS
	 Dx57/mU2S4NsJ+sIhPf4CUqtYOZWJeO8REE65rX2Vwb4o1FLe9EeafP3foi5Kk3IlD
	 0EMMRFNTy53Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB876CD343B
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808125369.1103.17279536606791095271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d04595e1f8f621176c38df75a05067f844733780f41544b3c58c77746162322
Date: Wed, 06 May 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778081253
