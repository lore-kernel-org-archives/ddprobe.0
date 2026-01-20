Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268F33D669C
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768901634; cv=none; b=B5SKzebR2yEWjy7hhgi9LKthlO2FTsW2A0QP+py4eHlKooDyqPUGDnVG9y7U7CwNuytgifAhUan4w3+6gULxuVUpuNHtGJKYa5GpBLC48ME25Gt3tHpsqOH5yMus46LXN/fA7Aequ/NERtajb/b+NEgoae1CrWh/2Rz1Euph+5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768901634; c=relaxed/simple;
	bh=0KKLlwx0VljK9wjE0k4uwVFah78iv9n+wV/qVz7QHQ8=;
	h=To:Subject:From:Message-Id:Date; b=pnLTxXH4t6NLQIKVbT4JpSM388IP3OrFsaeIKfdjnIju50UpWna435VRsFfaRGThzlWgaDq/0ZXI/ulVRUJKSI9libyghQxDYyhByyMY/UM1JShkx7xDCyIfsLRURgpmO2eLA/d/eU3G+RU7o9rFXIrfEGx8IevNaGkD/Ejiyek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tezos4GM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tezos4GM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA108C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768901633;
	bh=0KKLlwx0VljK9wjE0k4uwVFah78iv9n+wV/qVz7QHQ8=;
	h=To:Subject:From:Date:From;
	b=tezos4GMSNJq9File/kxbQAXR2EKIY1jFyfiztH6vxBDo5ntNC+hStKxmXsN6k5eQ
	 5pe5aS2jirbNvrRI2JVo+95YwWeiVh89d4afYZSn5/oDl70XT9PTc1Gm8IaW5haYwC
	 vaDeeAzGsGR2FitKkbHHyVwE4XI8KBxVdbuES/KTlaj+bj9OcOfrF89PmPWwphzIms
	 KQPpH7K3JY8jaOEjtmDG/8xCkeY2lcem9NUAbmg4xE9UcD82w1EeIxVFlRk4O69s4N
	 efIwvqy9EVIk9WQFM/cO74SRdewQMyWAE3gfq6AaER2YIbO6i/4WfU5CObIlrGXzCD
	 wd9QLY+KCs4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E5D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890163369.17565.1788735775718291338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1479dbde249adb7779e582105fb50dbc7f92863579eb5b5adae9aa5eaa2ef03f
Date: Tue, 20 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768901633
