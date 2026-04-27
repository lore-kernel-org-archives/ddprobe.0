Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2634726A08A
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777322854; cv=none; b=HVsH/Tjnbym8JxGL96tIWD638Z2GkP6Bm+GeKEGGex2WoHXrsd4UMs9kj0QDJ78Pemhlvzzf2MRb27KqRiJ6DZjpm+3U5WIepJzWf6mb7DLb2GQc7n16jABKw67Opd9IZJdCvQezDpjP1hXyS8tPoUOSxKhj7iQ0Amp2Ha1M8sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777322854; c=relaxed/simple;
	bh=y+zfovRQxuyAdXTDiN/yIDeRaF3XLhdSQoNJh9M42iA=;
	h=To:Subject:From:Message-Id:Date; b=AujBpv+s3GL7loCZPG9b+AbiIF3f5dUfHGnd0vICJYaA1Pei1MOff51ZQvjb/4bLXQFQiCcCU+MDtaJxXQneWHN2qhD+3Av/i+VGwiVvnkbRa6iYARDWov5lIXmdDYQ8etkWRQSXbmlcugd+nHIDLNeAIXZtRNiVLsKwiQjM+wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ssc0i6L0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ssc0i6L0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DF1C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777322853;
	bh=y+zfovRQxuyAdXTDiN/yIDeRaF3XLhdSQoNJh9M42iA=;
	h=To:Subject:From:Date:From;
	b=Ssc0i6L0voHk/k/JuQuBw8pZ+vjb+HA4ozcldUucyWt06gVy18RNKsXPpG86wPXQV
	 YkiEEtMg86eGlWgDN/T0msFMkEimkjGN0oW5l4BVyKiGngOaFN+yA2AkUqn/FYzQlC
	 JqTOALmQuigjev6vWAKymjVhqI/BHqRen3t2nwzgrgtqiwsAWnYPkff44sm3GJxE8l
	 Mu9sRH10OljUjwxOS7idsfny2s8BQP06MII1+P9Q6iVZwtsg9qBsGxFfLi3QCxjbHG
	 5gt+cP8qNdR9rAfheJklx5MvtMbiYTP7dHBDeqvfyHw1vnVhjo3YvV1ciO0FVqBT6L
	 Jt/9ArirITeww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99C6FF8868
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732285368.6552.4538734433609528571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ec5465c4f13f132e787ea96c7ab30710c095c8849820b0fa73fc6c0d3c41db
Date: Mon, 27 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777322853
