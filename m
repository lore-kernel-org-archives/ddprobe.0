Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108EE168DD
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706064497; cv=none; b=bU0ivbhyNHSDAUvQ48bDd3imU2iy00DE6LQ/RJWyUVtJJeJEEsg/7nQwsE5q2YsaZ/dtS7lZKOaxgn5+PwlpnPmO8s2T1+MJPFFNU+d+Ks39bcX2+dyngXNRCzZPvIlCfmJPxE+APB7RFxM8cuXjSFleuYWzyvYJLwGaZegfSfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706064497; c=relaxed/simple;
	bh=VzMO3auOiFm0SGKbYW3YBs4uCoFi26+IE51GrGI9UKM=;
	h=To:Subject:From:Message-Id:Date; b=aiSAVg8sSP4Nh0ZF5YxXahkK8sr4mgmVf23Aq3/yj4muNeE8CRpJDqS+rI1bpswj6uhj/ylNnSsQZ+Mqc2lT3aXHXVLm3pVnOkEj/nwgBVxqvMrRXTGmHXWLwd7WVr1ld6Qu0Y9XhOAfR1lNvRlmW8cMziFp4IYrjJfBFH80oQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cou03gda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cou03gda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79101C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706064496;
	bh=VzMO3auOiFm0SGKbYW3YBs4uCoFi26+IE51GrGI9UKM=;
	h=To:Subject:From:Date:From;
	b=cou03gdauUd++QY3HXbCY3gQzyItTqOYAsQNCs0biTLDV2nW4wkcBdPZrA+shrTJe
	 6Z6QZeRo/SVF+NH4lniD334S/bWKY0EV97umlnzGNLm1DLBAzlDCyESbwkn8QUEDox
	 iNCkX+a/dnY/eU5sVYMIk6BZCVhI1S5EN16En/4aY2bwwMILfdPb6exUz+w6frL0kl
	 ne98sS7xyyvLvlVKVbJFM4CK9DgJi+cWPUQyVrWY+oQyRpXp0jREsc6tbst4dKwfxX
	 YMHrO38eAJ0LbTV/Is1CZBXikSJenK3L1L3tOGEQlqUrfgAOdn0O3DmMRMorOm5KvQ
	 hxi16XjQOjOdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F245C47258
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170606449636.8574.16575613139268955187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1161cff89d9550b19e7fdbca021865e7222520145ec218a5f999e7042360b365
Date: Wed, 24 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706064496
