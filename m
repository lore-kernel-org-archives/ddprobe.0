Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC23C8E2
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709355497; cv=none; b=nyZ2/KGCzla2VySYBD7dqspSZ+xTrxYI+XM36Vk2evdX26hDwWHj9fyU5eB1hy2/nVKDcB5ASt/xvKLn7JTgcYfid422l29kBnI1HEUwm+2punyzTd0mHxgbtStU1L4nxfzYEln+nHhTH/0erCHu6JcSdWzVfjzZSa016jswHrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709355497; c=relaxed/simple;
	bh=ZwI6Qtoqjcvu5WTWw/FmGVi67FXygD7pdNQy3JMfHVo=;
	h=To:Subject:From:Message-Id:Date; b=G6ILQS0mSR9cngj3EGu4Uk9U4BVWpV+gCdhDqfjZqndYd7uJLZPcSj9fFKo/Xk+A/JnaLjq7MsWkHrkgBu35MjR3KYFmfutL4fobMeF4b5fu9PYyP9RvAkviid2uaosvZpZBm6vwzD0Hy0+iKz/rWot5RL50olt8262A+AoT560=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXKGPHpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXKGPHpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84881C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709355496;
	bh=ZwI6Qtoqjcvu5WTWw/FmGVi67FXygD7pdNQy3JMfHVo=;
	h=To:Subject:From:Date:From;
	b=VXKGPHpjpb0NPA+0Do7hHOd4+6QoseSvKryk/67bz8XzDPMMLL4CcOFkZKQebor3l
	 bK3UoY7oRoIwwT3Eq3poPvEnJCJ8Sgmx4hjhZRLp+93CNC+cEnKihK3VhTi9kx0rUQ
	 8yoRTj8yuyNqOYOkTfw9O4XcpIWWSNTg39utCp5ngzocz4QZsinYGt7NQHH9gZQNPQ
	 Vy+7aA1sAlSta87NCrjCql2DhERI4u98H3iyjozZli/0pKRZ2Kp5c192JZtA4uSmKC
	 VOMmvH1zW4YK8KtF4frm7AhaL0nh6BjADhEk3bSU7gLfm7wY4z4M80b5kojHhe9t7R
	 opdNnIDn800KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 687D7C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170935549639.2480.14814044594048244806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f4933815e49935a2d7b0a1abffcf2c56dabc515984be431631340e84b1a01c
Date: Sat, 02 Mar 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709355496
