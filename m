Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2482B32BF44
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766399034; cv=none; b=oyIt6OumTYeNLNKRJaMA6ED4gvzgXKVmxqZpyG53Njwppco/o1ossotg0oRUoWOOoE4YBUIAIdstwPwKn6jx9j/QAiGVyE32gYLnhmOw7mo0IJZUOjDhtHacNT5GS2vwYhkQuxcD0FEkyaEp62A2kc4f7EyPlqsgkxXlFjikdVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766399034; c=relaxed/simple;
	bh=A2YJpoldOVj/LpVv1Kf9xvyMJ22Q6KLA04pKtQgYwO4=;
	h=To:Subject:From:Message-Id:Date; b=jV0UaXi33uU3xExByTfT+WOmXRGIMx1wKzg+0DBbiiOieHiZjzRI8tGB6ZZ2Y2m2lRBRF8bELXQ1yGfKhTCQKMDdISGwMfDE/lj0VrlNnR+7/LmW7hUuBMsAsbNIF2x3UDT0hFl/bhwRwID6jyALug4E8G7CGpAYM5QX9Kzpu0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjL2VCn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjL2VCn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEA2C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766399033;
	bh=A2YJpoldOVj/LpVv1Kf9xvyMJ22Q6KLA04pKtQgYwO4=;
	h=To:Subject:From:Date:From;
	b=kjL2VCn4mBvh6rYJeGwYr4eexrKvT/5mG0847Vs2k5vmOcp6zSR+ORFWsw4Uu5N/H
	 kPboQ3vcZVcf4ZlWM4qdiyeN6x2MZWSCmP/w7ntUvcpMNSyzvNBxkIvcwv2dC5KHot
	 kKQm8FkWjauquCRo1ZmHTeRbeVPUgjLmm23rHciwiS8yriSFN1a1c1tVT/Ij47yJsH
	 8B0dynmeLe4HT8JlXUIQoxKY0oSTp2VvAfHiotViWeaq145VArPTfrGZ05BaObGtyb
	 a0+OBnUCil4j/1UA1xBS0uy4NzEf+WFFww93m2B7VqQKaEDs1Rd80nvyCKPKHSXXI0
	 t1jna7dI5fT1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B3E6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639903357.25007.14602417153621418171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36acdd9f0ff7c0695ee5401b973b8f1f04b23ab7f49ef0584e4572981dd59eab
Date: Mon, 22 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766399033
