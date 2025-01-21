Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9831E9B10
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737453354; cv=none; b=HXzEXdvjV+6S997bdaYWWrXJn8lhli0Jih+CHcTDuuUqWiVEKy+/c2oZ7nE3dC9ns+I0NhdskmxOn9Hx7lhVldXFPWXwyHnnc5G9E1U1gXPBE933rfquRfFF+4jAfijo0DoeteV1iQvcae9TE9lglpjCo5CELllzNHKayZfw0dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737453354; c=relaxed/simple;
	bh=aeXCjIkgAzum2oMQHJJMAPxq30aYldYrCgf7sjul4fU=;
	h=To:Subject:From:Message-Id:Date; b=TAb4Fphc7xN3XCAtk3MgQDfd0G+mMJuyRK5y1aW06MyF7DIyAoWMldXRNEM0nOMXj4RnlBCCc1+rSlZeZYsjtMfv2ye3heTogU0NqdCMBoLJa/6GcQCUBbYjEtoESNiw0pLvOYRmqGM1uUl0zV8sCjIatCBb317AKRzeap1o1Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAeDRwam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAeDRwam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145EC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737453353;
	bh=aeXCjIkgAzum2oMQHJJMAPxq30aYldYrCgf7sjul4fU=;
	h=To:Subject:From:Date:From;
	b=UAeDRwamy6MOFHZGNE20bwhqvyXV8Dhm4wAhNLfg2qFi8lQ/WHYsWoyCvY0ugfOR1
	 h5Do6Qr9nklTDDojgDUosTvhN7MkgJeDZm+DuY7dOy1ySv9zJxaALExDp5djh/SVWx
	 R3yKQPnW9s7SrF/rn5rdBX0pXLl/drVY+nDuPVb6g6PjS2ToxDTpVj6cgGJmYlKnfr
	 ohUnPxISEOHJG8ScZcmIQ3tP4aQY6G/qAWCovu3BPedYCKCgW6kKRIAiiTza00O/gB
	 AfDPriNEBQvlYb/SX6FQRbwFG0ChIQanppAOxW8pWqtuHnZVFX/LuEOggDuwdm2o8V
	 ByFgwChEwr7QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F3DC02187
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745335358.26969.16968567536033864714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56778c99602da7ad00ed286535b87935435103b47beb402693c9c3aba97da327
Date: Tue, 21 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737453353
