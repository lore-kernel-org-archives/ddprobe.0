Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B62122094
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720621583; cv=none; b=I8T8NZLY9rSj9N7URQNNJ4vnCINWP3JxAMun85fIG9iX2yjmdb4Xs+ye/ChrcRYwhrubn1qysgwzpyuDbl9sR7uGUcaWvX4KPP/xnpk/b3FKFzWKbWTVsd0pxgV8dqsHL0ZMtAoO14oQHiwdKUO7bZ7UvBujJ1/5Fxx2VSYWYs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720621583; c=relaxed/simple;
	bh=HY1+ujHylZJYLV97D9Rx9BlJ2webv2qlKJ89BxRf5TA=;
	h=To:Subject:From:Message-Id:Date; b=AflPYNL0s9cvsNnXkohakGhIdZT/TjdxcHrVHBU9wd/UD2ajXkQTk+B1qQxFZTlennNOe0bZ+SB/iY3QdJNNEdvcicZOFilZ9n5k8B8Tppj+xEaLs/AopR80SjRL1xEZzwQzDtBCUuwcF0xJWkQN90ol2DHzKCt6hCZP8d0UirM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1haXegw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1haXegw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB80FC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720621582;
	bh=HY1+ujHylZJYLV97D9Rx9BlJ2webv2qlKJ89BxRf5TA=;
	h=To:Subject:From:Date:From;
	b=D1haXegwjSinm55wZ5AeAQ2Gl8a/InH2us2AH+Pv6HR3XLoRWWifR1rwn9z1Wn/E7
	 NEgN8wSWQJ5PbPcq4YaCSX8fS0QIlSAveXguMcNvYMp4/09BJcUGjqfINcaoWsf9Bi
	 LmjlY28lZsliRUx4T7O2I0BimM8IxXou64u5cu1XoFCh3TwMwbPDE1OaRmt3peO8Pm
	 MSjQ4dQyJ4yQ6NTtTZhSNijcSB8m9/K9P+aa6cL2uNjizNhKcn4sx03AR9UM0KzTKA
	 ThcsqTG5GnGqeJZl4zmL4zEh+yyjL9rzEH0AEPZEMBYTWvGQT5D9PhnZsqhZ40hCH0
	 m+paGFBIdzH8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3443C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 14:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172062158279.12140.6469162566082069095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5db795ad8d5df5d0aa89e3100209574927a810fef1652b052acdb1e5e4b369d
Date: Wed, 10 Jul 2024 14:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720621582
