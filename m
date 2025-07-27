Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C2B2A1D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753632594; cv=none; b=YGoP++rSzQEAU1JwGnYx0Wpfaie4obkSQauX+lNXfrhYaBVwHNY8s9R8AdnybQE1ESU/oN1skObEQ+beUL/aXmysLtua1840Dx1GA6/pGh69sketBZO89OUJqvhYeyG575eWlE1Q/ww1Cx0eCdITiV6XSoHt9lHQlypjMTVet4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753632594; c=relaxed/simple;
	bh=amFdRX0aLOUJ/UgMJjmEJcRW0z+I9lXwaBlehPdyTts=;
	h=To:Subject:From:Message-Id:Date; b=tv8P7a3wpdm8yfTKOOA0fB99DmCshzSsKTCYeaVgrAHpgS0eVBUjnLdgh8DGwu2rZg4rmX0RTHSpSgM7PU/67ASsNvgV3lpZXdCMRD7O22wt+q2ulchxoyZtMzh8JG/5OhHvrrW4w27/aF35wJlB1wDV/EqM4LNR9cctcogXZd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkyhDS+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkyhDS+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF88C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753632593;
	bh=amFdRX0aLOUJ/UgMJjmEJcRW0z+I9lXwaBlehPdyTts=;
	h=To:Subject:From:Date:From;
	b=NkyhDS+IBNaO38kQuVRx7f1dkaPOmG/gwcAr/SeBbKhspm/vF9BVsFs/Zck+vYb02
	 R5p0fBD8cfqXGe8F5ZE05u0IFcQzj3VI0EAW2yah1608I3v6TIR1c1DfNRbfoA4a1N
	 AScSe8imKeoQilAEgKVx/C5HccftK7SFnAISmLd46aHgpC6xXdsBD1pjBScqZhXhP1
	 8oE/aKZ4xVKM8B7JQIG5KlRLqOomwfbH3vcnB62nuD+kik5sSgqE2Y2P5OmGHoX8QY
	 HXewLq7LI4a/DJyCoKGqHm7nzyD9UQIgyw4mq7WI3OolbCR3cylVBNwjUr/hvOHk8s
	 c7YQ4L6p/KDoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E74BC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363259357.30744.10612287124669397176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a485909f03b332cdf1670705f1eb122a54a02fbebda0dcd752a444b0b3815259
Date: Sun, 27 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753632593
