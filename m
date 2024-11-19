Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2293812B93
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732022154; cv=none; b=b3tqPr64VRDmCQ1gh/zhN5cj9uimYpOC+CMepNq/2bJQD6CARAlFXCyioAXdstx0EIjSBohvCJbMEhMuxO2LBZGX4ppVdQKCe7MwSGZ3B5zzubTPzZADCZNtstQ7S2sNYsnE+QQWf0HPIM+KjCCswGQlRCoFqq4CJ1b0+P7lMBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732022154; c=relaxed/simple;
	bh=s+JRuEP8ts33caNZk4AWyhfi7xbTC88By6AY4nnidZM=;
	h=To:Subject:From:Message-Id:Date; b=YLN8/Xuf9tu+EB1RtJx2+nJ3qbyvkZcSqhs2T4OZPGCrytgoGlFXSTp6cCmAscAQjiKrZG55tmK33iuPfEdy2sYVns/mVaJAPBvLCWnSUqRd+3V8b1RE6FUE/er//2xwsP7UTGpzbGJZh237f0UWRxKkXMdIohqThYEkub+/ty8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+01eB/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+01eB/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55FFC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732022153;
	bh=s+JRuEP8ts33caNZk4AWyhfi7xbTC88By6AY4nnidZM=;
	h=To:Subject:From:Date:From;
	b=I+01eB/1fZkD7nA7GzKYPa1TKQFn7Zdp4SXTpU/Q4Cfc5MZr3zzrKeZhvhpHvHrDn
	 AW9fCURky4wQEJ/W4u5Q9chyG5wEV9/ai5M5aZOBjKdU7jKTDuXEC6RH9IWTPTS2sJ
	 /TS/ZWT6EKswHp78a6QK0yyI0z8uF2qiQeBKoX2ug7wo0oC5lUfyo6wWvoqqPjnGrh
	 K1p7wKGCbpwgA5LuJv7pvuKAzacsg/M6O19LobLprqONmO95ay+PwQlGzSwhUR6SIQ
	 wKYn3g1U0IJMXWbPmU/KrdBdJ83DqofKEY9odIiJTCVP3aeKu1bsTn+EkjZWO2NoyM
	 dWujgTUqFfSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9086CD44157
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202215358.11744.14612582570241656557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dec185af99257ef916c987bea019fa2d83fae3b266bcde01702538f428d254
Date: Tue, 19 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732022153
