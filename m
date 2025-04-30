Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DCD213E7D
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746000594; cv=none; b=BtTPI4XZUhwx64xBmgv59k+6wpsDJ+ZalHxYhWosha2gtyim21qYbyPuT1w4WIiRTIsI2JVS+qPAdfG5A2nntpc8e/UsOFBZGz6TK1PwNZRbcln1B1ypUcLHlkhd8WgvvnK5aMxYGaL/VAV93hjmcNAOJEIfW+WKFzSkOh/v7gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746000594; c=relaxed/simple;
	bh=hcvvu1/N2Q61pfKTHjT90YHV+wHIXM6nrq+vPFVa/bI=;
	h=To:Subject:From:Message-Id:Date; b=GIvrX2+S/1FCo8KVA3hDTrI9VfliEWgzFbREFuWM/v8/S8zLignB/ae03TvDMBQRfTvtjLT8BP9KMIOR37z9dGrDEt/42/ygnMTAyaP4uM6JoKxkBpPdZzBSLQ9Fs5rlZzyMhZNZVq002h3YpuXqkoo+dJcMW5ITFAAuOarkbns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSMUGvnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSMUGvnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DED9C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746000593;
	bh=hcvvu1/N2Q61pfKTHjT90YHV+wHIXM6nrq+vPFVa/bI=;
	h=To:Subject:From:Date:From;
	b=LSMUGvnr2m0pR6Oko9MAqYjJOsAaGHA1FReArfYRtatflY1G/sO5WVBDBbSOpSA5Z
	 skw6HdSORt/nI12B7h8euke3whC1Jd+Slo+JYwYDT7oRYp1wXXAEvn8pSKSWsYz+p3
	 LgKaQWWA5rsJU+aY5ek2luyvo71NP7qYg/Hv+j6glAdU4YYDRvCOM+0bzewmcG/64s
	 t6hc+roXlpAdBx7tsjffaSWpTca/4xOgJ7R4DZHtEA2uHvghQBrX/Sbv1pt/nmaOud
	 n5KsuXK4uJsMMI9eqXuJsyvnQbz+JRBwZm+wzdvth+1busFNnoScJtWtbNNLV/X6K0
	 k5kw7+Tww942A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E593C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600059357.6493.7388183867013317811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c267a44d7ac7367dd4306f918abe0ad35d62106fd9e16a933b7850c5515cf0c2
Date: Wed, 30 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746000593
