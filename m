Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3BD3D413C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784539714; cv=none; b=q2DUSCVIXxCE6ceyqwfyhlKwBxpfjb0qT27WEfWgtd0DD6WJ+q2dvQS/eWdj+iy9U7GxJlTE+SWaihZqiZFhBgQnD+9p8GR9xbDQzCP6iKBW4rMQxiDy3Afp29nKbHuXK3Decb9n8+wMO5HQbbWMDw6UdsMA9kl5uy8wswZkg18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784539714; c=relaxed/simple;
	bh=wVHWR6WF9Zm0sp978ZjuGQs7L1GxqEbpm8MECqG2e6A=;
	h=To:Subject:From:Message-Id:Date; b=mSk5jmwTZRoT0SPdj7vTfzixKd9rLlOx7kyix3Ql+uy1WUy8AMJfqHmL3dSd/TTu1LoLKqXPtHv/9HDsnKdEWZw0r3oHPVPWDqJnrjBrn59v31dXJoStFFF/MmVaon1mf7G29ro9OVE5ni9D9Ml1FxxTBSFGaqMC2/nFwjkWnYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+io3b3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+io3b3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D729AC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784539713;
	bh=wVHWR6WF9Zm0sp978ZjuGQs7L1GxqEbpm8MECqG2e6A=;
	h=To:Subject:From:Date:From;
	b=D+io3b3ROi3v8Lms3k9vcxjRR6Q22wRVDEXh/M2iSVWn6R9w2tLXIzueINfcpGGZs
	 iMiDu9u+3PV4lGg7rlhDjy0j0h1DahoDEOe1Ov9mQ5G5sQV9UEul8ryj9Hm+lRlpFV
	 NDlWblZRc6h+ZgGrHRn8XXEh5c8y1AEK/rHVe4IQKlbLP0tX7VR8mp31wg7fsmUcF6
	 Ob7TMMsyt/i15BBTNpeSXxaIKMt/aULogVd54V+4CcS1bnZ037gPkIHM5gueYrsfNW
	 wVhy/pOvJmmaGyHRSXqmxTTZokBD+g6ge66B/jVBLC+WwV+lNyvntEjz0Ri7zUhx8b
	 38TDrDFkqR1kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D68C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453971373.25387.12095366502071237140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac1e244f0a253a7f1854211fa4b1c9b30146073f4105b8f5088edb04b27aeb4f
Date: Mon, 20 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784539713
