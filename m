Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AB81FE44A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779021034; cv=none; b=gV9CtlWfSpLLHc5Vht7200KMMj0J4cIs+IKNewYYEy0OPr+ky4TrCtrRIHfti1polfVhfnZxLUXfcOYuCht4a64TRC05GK1qVt8ZRV7Pr2Pmi9Uwnp2KpqQJ+J7bm9Wpo/9Vs8IiOe1KMt2SCAmVBanchl9kraPeMoVOgprreVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779021034; c=relaxed/simple;
	bh=5Mhz86pTdjeDevzyIZOh2Ij39gW7l67ArAJMn7QV16I=;
	h=To:Subject:From:Message-Id:Date; b=eDirtO8uKACc5tgKrtE7GyyOritZgbK57hEe7CfzWEsVFIu0qLd9aueyeoWyuSCtMcAvKP9g6nyYJ9PesDPViGTNqP0+Ub4HmgQ9NNzWRNihPz9fanNZ3Z1ZWyn92Y71XSqOOi4cjrQ0GhjPa7dITe+6F1y1G4e5XaTVE/ZPsIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHJJ4IAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHJJ4IAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BBCC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779021033;
	bh=5Mhz86pTdjeDevzyIZOh2Ij39gW7l67ArAJMn7QV16I=;
	h=To:Subject:From:Date:From;
	b=DHJJ4IAyzYIfTXlH5qTo0Q8wKJcUoO9kWDsgS4TJ+DQyIMjfwb+eIhvP0N50VhULM
	 z8YkMcrf54P71xlGl8ZwkH9Z3MPosduHWcYOsJHrrQAw9pgJbpNi/e1VvEwz+g3Fku
	 5kdVwYDL2SVhcWeLi9DiQg3dqMio8jVXRJaKpOrpzSwDFvR/3W/KOqa5Q91QfvGy6z
	 zAm4c27KclZH8trKGPMYh806L4igdqQFq1jK9FthKusfF9F8YYHdDrfivxpE/VtruT
	 oU0y1U/TCCZVO1P6YqL5Jf5M4X/Vz3R0EMuguESkkbNzopCBVvG788vWrPvYLJCwBt
	 h8mIbLhIOYlIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3542CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177902103372.30710.7944122600115366030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6017ad3015779fa0b8e979423e9b7aa345687a6816c702e374857f5bdb91cf92
Date: Sun, 17 May 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779021033
