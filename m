Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1816D207A15
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736523954; cv=none; b=kmyjG7CNTpEH3WiZjFSIhQcIOxqhNPhCxrtzAELTyo9NLc5Q4IcWUGZpZbu1UjIDwXDvvdpf63MwWB4kMj/GsQgA7a92Aq2fdigk1xmXtuQE09IKbFKTPXI8ZpjO1IOUIJz+wxfBeNqDiObPJVpsuDZJgvP4+5y2RLtgwnMMBno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736523954; c=relaxed/simple;
	bh=sbDhQFDQkvY0HpAieXPnyFWE11OC+mgp8PIhjIsO1+U=;
	h=To:Subject:From:Message-Id:Date; b=JKuupa8fXiNmo00LUfbfDMks83I5RfUVp2DzaEeITyymdNWrNHAmLdb+JPP0ZCpN9fv7bfL+O9fPXKofi9O4t2QD4qwMUV6oqfgEyDvdXKIZXotqHtVFRdAH2bM1S9sD8JUun3T6vFBjKt0jKMVfHM1Me/Me3kIU2NDcZb0kNvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMpWKso/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMpWKso/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3593C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736523953;
	bh=sbDhQFDQkvY0HpAieXPnyFWE11OC+mgp8PIhjIsO1+U=;
	h=To:Subject:From:Date:From;
	b=GMpWKso/5rOEx2Gd0OGhtlapjx71wRUL5udRPDLhCwfXyI6ldXcFqDC2wzpZRpkt9
	 PUeHMwxzXf2ie7pgmr4p3OZflFiIAxk78hoQpJaaT8n2tCO4fKX1bTeo62y5C3goaC
	 b3Z5V+eIaPrfBzcL08C458wr1x57H5SMJgwxNieg5qWNTSmM8re/rjJBleR0MC667E
	 XLbcAUn2e0lLtvG8X4RwFuzzIftCImizAM6A4Skz4k9CWqqfd6optwk3SZLdBPlrD7
	 qr+EncG2vIhUT9hEFo1DBlyLUqyQikt16hiccQ7mkiQpzs1vRRAIjfvlGHYXz/MeN4
	 FKbqAx7RvCMkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92367E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173652395359.17448.2897963464982077928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f23ee27be8af9f0890ac45f35e8bc834e445cfd34db3fe72c4c96701d14cad
Date: Fri, 10 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736523953
