Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E5E2FD1DA
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779210034; cv=none; b=Wsqe2R7gsdcHWtdsUAKH1oTo0yXtXuCOQ6whCGV94hfjjbAIo8ykuUPYesBWlWz0R5rpLYTO2x8T8Cs1O9nES0KNL4ZVkgLzUfxqHn8LVcx4u+K9zf/XAPp9HdvNfkN7NDQxZWddJybVKFMUArOfQ9Otks+1oTmdmyzaChF4FGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779210034; c=relaxed/simple;
	bh=BGpjy7nIzL4qVnwfkiyq+grCmpFvokrUi/vFGx6fIiM=;
	h=To:Subject:From:Message-Id:Date; b=LMpSdu9eUmWt7svO/GyFpObvm/43O1vSGKYwxZJeYKChnALLtL6hAuAVHolZ9qTcs1+OMMrCCNqeebitnPzJZdtaGw2pbgWUc61mvy0dAAo2xDtF0mopGvCwst7OqFfX9ICAmO5GAvAZg7SPeeff7+Th2OkXMeotjUPlwLCHPEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkUDbaaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkUDbaaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73D8C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779210033;
	bh=BGpjy7nIzL4qVnwfkiyq+grCmpFvokrUi/vFGx6fIiM=;
	h=To:Subject:From:Date:From;
	b=SkUDbaajHzAosodJVUhHyeRWIakpy9iINAhzHGynWItQ5NfzwxHcP3UpW1gdj2FV+
	 sfLhYZqiy7dwURKYpirnPiMNn85h/PuUSZYl0TdnFCymUpJESFtRriUAO4A1u7L+c5
	 TyyeOafhM4C89uIGysmkB5oagmBh4RP+EGFomZS7gA/1McRv5rjvRmP1mMH+by2tqt
	 Ngg/dscMHeC+TsSGQUFwOhZKi0bfMEy/IG4OhLYGeqanepkaCJd/G6e1V/kHazS3OT
	 3musdQPRZn639jzkOSeGw4wlv6jnvlMWQp+4dfRZANXydolcJ+N9NUSISmdn5cSdi6
	 9OWz15s7ai78Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2719CD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921003372.7914.5595892282065486358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6818b12487d0ebbdfd33e205ceeeebccefc850f88235c4b87f869244ccda828
Date: Tue, 19 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779210033
