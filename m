Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BE1CA40
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720338983; cv=none; b=c+a8PMHkZFbjZn/AYUNQiD81b2YxT4w+2vCgd6B+YC63iNBn7kEIyN76TV5l0bPuzRqn/ED5PN5MPCB3Wd2v+rv4hnrurnkNqGGcavyhnAdeHav1j1gVvnyKmzuNQzVbrlkBcpE7/J8KT9tnA/GI5JOvDQyn/Vrcx/31OHcRZO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720338983; c=relaxed/simple;
	bh=nZTxYopVMLs+otRS0S/JkbUnaiw3cAz/kp7hrqRBcz4=;
	h=To:Subject:From:Message-Id:Date; b=Yu+wxkW9xEf7Ntucb18doUG06dMUUqmIvjqb0UkiMHmDRN2hmw9GRCI+DFy18lPoqyUSXIh12YflQbmlG7BOWCcad19QZXhedu/VUR536Ysn8ybTPN5QneceAMKbuzZG82BX6O25GjMUOssa/91riQJN9gnIeucv+YafyjmEteg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/xIRtus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/xIRtus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73BEC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720338982;
	bh=nZTxYopVMLs+otRS0S/JkbUnaiw3cAz/kp7hrqRBcz4=;
	h=To:Subject:From:Date:From;
	b=o/xIRtusvADDdyzc125n1KUJ0jQEA4dCGX/XwO3V8WWrJnjDg9Q28TjFMjqMshpWk
	 /mjZRddG0iEd4kgtUX/Cz43zK1WiV0yK3zLJgIqqq/rglIMcysYew9KzghvQyyijyT
	 rkI2Cfcd7HhY5oMkHwOQ8L/Dp3Pa3IWg8xfnzM8tjghcRvWBMFcoemtDq6QlmhXDaA
	 yEs66XaMJS9SeSsflqUAb6ZJOiqIqG98Dgu6sQC0BYjyvBePKWJ4hBy9h+QfAk9ee8
	 lExjoS9AahdHpDp0UJItmga34x3Pnwbjlh0NcnDOUoOEJZN8asG2ocniVln6N0smnE
	 hmSx2gVXtpDIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7A1C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033898275.4456.16220103259103626130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3580b4bf80bf6f8bc84794b673e30ba11afc79c181bd4d28206388a7c9916a3d
Date: Sun, 07 Jul 2024 07:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720338982
