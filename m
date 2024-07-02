Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4192715B547
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719932123; cv=none; b=e6xfOqpvKvW/1ttmzuKMilVufNP72JBe7OtDryS+1jInEjk0xQ+DrEww/kRotQoRMKNI10axnSD3FNx0HrrkNL5i/XC0yxDRCdIswrU7sKWEVq497zyTrCoay9DBwtoem1s+XEhbLMpXRohaKDT0rIcU2Ce+6FXZvHdxkngeQho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719932123; c=relaxed/simple;
	bh=ZliVzwOZqwNCJkI9MqpyvGXPDAHtHP6K/woLpOhWglM=;
	h=To:Subject:From:Message-Id:Date; b=SOaC32sgoO7A94g+TuGHC8L2385+aZtztGeRy/flYC2KD+noRYtyaRwjlFG12o1wfsi//CPkR0/URwt5fY45oAv86JvrwncasSMcUiFCfBNHwWVSiyy/nmhv+iXnX3YxWGfyXvjfGjrw+qdf3k6GKYta5j674f6eVMOZ/b01XW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyFtLrIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyFtLrIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC62C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719932122;
	bh=ZliVzwOZqwNCJkI9MqpyvGXPDAHtHP6K/woLpOhWglM=;
	h=To:Subject:From:Date:From;
	b=JyFtLrISnDZT8prVhHcMP7nwbDe8fA3+uH6pVOh9MxxP8OqPyENadVBSF5U+mJvHo
	 Dh++eeqwZZaGsdEJrj+FN9aa8eLwmu8YFQbAJzh4IIJqgLWdVmAOuGg6wf9OFfOScU
	 Kb0vyjztPPdaafwyzb8cqMHBCYPCjUqXN+ocIQwWLFMUnRG17Fp/utfMBmE1ru8mth
	 lSgMvCMUenChH1gV/Th732OrjN/Z3dZ9ZkiRZ10M6L3QMXksrxJOKNz3QkprsDMITF
	 JHgk0aw1RhZoBoVXrfClTIaltRO1BKSOJ/VDRawv8XjJdR454K+yS0AbgcK4Eh5Imp
	 rNwFBnZhBi6gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C175AC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 14:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993212278.6444.16015547837028993867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a38ee494c83c9b289ec158050474d6ff9f308fc7f7008db1933fed845ec45fb8
Date: Tue, 02 Jul 2024 14:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719932122
