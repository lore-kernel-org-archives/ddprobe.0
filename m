Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F348F45
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717508783; cv=none; b=rSWOSBwkRMwdhS6nbMmv5qWGRZ1NwmI+OBeSm5gvix6BKiNKGspzb7jdBD/WKPV8Y+Mzj1ws10CLhE4ZnrFDTZ7S7DPwKSABHRdYYaDMtRzjCubgKphS/9jguIzRHTLWA9i4+Dqta/CrseydMxf4z3j4buedH3fnj4B9JX2MbJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717508783; c=relaxed/simple;
	bh=k8yNWihoikT3EZnpVE+k7Xp5Ju7luQj/6GO0122FntM=;
	h=To:Subject:From:Message-Id:Date; b=jDOCjV9lwIJN37Cnx9bWj44IKdnnPbJC4c1p9drUsk9rp0vfFAsCKz6vNrQWQk06guyY3RasOcPKFh2CTEAcUuRtxaD1H+QAzIJ8F+yq0CW159PWRMh5PYTA+KqrYhcwar/KSPrkkooXPDvGGdqFJhAL250IdFOvspoXRM1/N+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNLf0mlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNLf0mlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F3BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717508782;
	bh=k8yNWihoikT3EZnpVE+k7Xp5Ju7luQj/6GO0122FntM=;
	h=To:Subject:From:Date:From;
	b=MNLf0mluHRRhv4bd2CQVm8cJNvKa29lskoh2z6Xi/JtEe92Bmf5zkAl+1C3YZCeE1
	 oUgZw4epq968kDiXpb4xH1ynKKqoTOYVWRe8/6F5mSsohtM7ImZI4M1Rq0qZ160O/Y
	 4oGrTE4meJW7NVq+vtuCRPgVyXER2kxhKBV9PwIk+miemfzeyh11gFUDgmSNNEUrQN
	 lhXQMy4wIbPsNpVQRystDiOTIMpEQ4eIHtpj031wCc06yjaEor85NBnY86wuV9I/Y/
	 na7OXUwtFoYceM0E/tto8UVO8zIoWmrpKGiQlQVpLIEED7rdrq4cGdwm4d8yExGpQ3
	 Ol2MpaKukGaTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF5A3C27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750878283.12993.5156973172121489233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac7ac4987de1192da09477fa11084476b1ecef831d11edf46f63a68775e62e5e
Date: Tue, 04 Jun 2024 13:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717508782
