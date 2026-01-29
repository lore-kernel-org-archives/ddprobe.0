Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE52378D9E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769674434; cv=none; b=PnYCMxPGbZeMxH/3VmBO9QbfRQIG0akFzkhIR1MZZZ0q3KVYvJEXp26pY7KzXcKbapyMcEszBI/o8yXvQKVLJ96BHxBwUv7suHvYYrvVwqkrLxb8cWQEr/pkbUMzGbcpeYtpQhIDVcfdkOrrO6AP9QK4HOCYAiT4CiOvruZB9sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769674434; c=relaxed/simple;
	bh=ln9gctozGm5wBdbSquDm0laCvaiUUGpLvEy2Be6J18o=;
	h=To:Subject:From:Message-Id:Date; b=us28U9Wr7i8kbj8ugxmBLzQ+7ZjZ6E/pifJa5NSX+LToi3GzM0MrVvCj5KVlmOXbLHScO93A998cqeGIt5vOuCCxsJoubOTr80wZ2HivK84R11qVm1EqTqX7gScXNe3wISrwEP5Kk6VafvIaxQmWwTqpEtNHi0to/b/bOnLLl3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYJVG4cM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYJVG4cM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A211AC116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769674433;
	bh=ln9gctozGm5wBdbSquDm0laCvaiUUGpLvEy2Be6J18o=;
	h=To:Subject:From:Date:From;
	b=cYJVG4cMQd7XVUQ55woc8DBXdZIIsr3KBvPsf15PJUdskSdXnSwvOdAYUu6kNfQX9
	 xGDZjdAbq4PM0bMebVbPLDK2MnI096NsjkikXvdgQxzc+YORpOjXXw1lyBihpxtcMx
	 PdviORFgyT9lxseafZb6BRRu+/0xtmgQCsuDi96Fcw912CGFUHWzFO2dkM0EpgXDCe
	 6+FaEKqVeXgzvvx97TcCVkGgIFDq3ls9X27BToSlcEjIFwMI+heeaNDTgGEa7DgPK0
	 yUSJp4UpdnOBmygrnw3izKYg8xbO0+7npdAFnUWjnwuM6GIeU4MJucOiHvzTw5wdQf
	 FfSwS2HVOu/3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D3D358D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967443358.3676.1324451751534087124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724f9100d222cbe2e15d12d6b02a9815754b7a0a319a660b067d2b4f0cd10bac
Date: Thu, 29 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769674433
