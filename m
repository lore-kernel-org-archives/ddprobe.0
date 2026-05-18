Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CC73B6BFD
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779084034; cv=none; b=VhqiOUaXzvrfx1JJbP929sQxF67Yzk1/HjfH2KUN3N56GneFACbGAkkjpBFO5z2qC7YQTIDgw3DTIPJ9/lvMkKKSCKhpVdJ/oBhgskphjsyWScirPK8mmvGUA2KkLhKVXjzo3UIG4rusenmnrdWHHxJewwJzbtSkdkof/s1ccrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779084034; c=relaxed/simple;
	bh=Dxn39jlqWwa9EMzsuNzdniQwvGMHKpG7uIabh1ZFVFA=;
	h=To:Subject:From:Message-Id:Date; b=EZiSkrxla+VVyo8P5COB5Ho6aIMt9b8iWLZ867kc9+iwJ5CWik2ZUdyThnKcdBXviVy3ZPk6YNMZagpzYdCh290Nv89tvsC98830cOtMxsCuD/ldoAPVt8tMQ8QvrheOjU8f2VEOdFyhxYebQvUw+k4tdFRaBPuHXMkU1n48m6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfXK0tog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfXK0tog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7205C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779084033;
	bh=Dxn39jlqWwa9EMzsuNzdniQwvGMHKpG7uIabh1ZFVFA=;
	h=To:Subject:From:Date:From;
	b=XfXK0togiTG8THTzdoBx/SAer8CwaXRid6P1s4uzgoP3h5M7caF7iCQ9IK9TxMPiJ
	 avj2s5rUe34+wGERAq+x8zQSHuDRazCapgNMt3r+PcxlSM6+uli1PNImK3/C1yDQwa
	 ufVLnDBETOCiewzOjC0Fn9rygPQFVW4RMPf5SJR+odhhPNNcknMU0WJHc/oVCPf+44
	 /WZnmOEeQgATeFIXI5qZZFpdHuL38HMhxAnjDOW7VFQ+T8B9knD0JZa1dfO3SoVTbT
	 vBIS+M4BDfi0Anl0I95O85bsFPEElJf7Z5Ofg1Zsk7746elAFShw32XbrzUlSKbk7S
	 8UAC2nzgAVlow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE4ACD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908403369.23014.7723992497850794813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2153f934567ee093d189ea7a2b0e1ab04467ff85637c9eed4f0c335eb48c11
Date: Mon, 18 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779084033
