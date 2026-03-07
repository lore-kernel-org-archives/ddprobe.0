Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B161E51E0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772915694; cv=none; b=M8O89VUEzRTv6auB7k7RoRRnXmKSIxD81ZlkAbOWaB0e0cNbLdKIPNXz3PH6I8Lk62W0uNwgqXiMFqz728M9JkTLkqJqcFXgRo3j4bsQpc+7VGvYK+V8R6JVV5kO4hKpdRc6NvZK1LKOajTUFo5V3JK1GExnKe9OFk70xy5jJP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772915694; c=relaxed/simple;
	bh=d+tncNkFAgPIe+ziogD7eHkIyWyULRz12mjpJJSDLJ4=;
	h=To:Subject:From:Message-Id:Date; b=uJH25gNMFVBpQvF4htUp3WbjWLskZu04CIElQHtrOQjn4fjoql6he8tGmeybdx+TLO2qahf2bRKp7omJjxjGVvL1gyeSYNXKBMuZBpUhYn7tqLagLVE6N9TeINVhxQckYyK1+cZT0Lc5EYbFoNly0XEhAhF0cf1NP3nS5qk99cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chnj7Qdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chnj7Qdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F09AC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772915693;
	bh=d+tncNkFAgPIe+ziogD7eHkIyWyULRz12mjpJJSDLJ4=;
	h=To:Subject:From:Date:From;
	b=chnj7QdgUFB2UchFHov9PzT70VF4vHDoqjCk00iZHwbqGrI+OXmHdUTsGK4X4iDNc
	 doOA82ZK6KH3lK0KroWowNTai/wMMTsCFv6FeOi0cNzfXkmux6buWT3Ea+wCtcQSCD
	 9g4zt7nz2PPUKoPElkMVyIqiU4UeVqxuVQk+gDPsZqhwmO2sFVNSgaMPpqb0b2/t/W
	 gmu/Yjiny96NXpWsGHUxmblhJP7i1NCEB4iMlAcY6jKPja8hCV7lWN+Q0l0FvcZML4
	 cY+Nm1O638l9TYJwjhMdmDa7L5soO+5NKV0MNAgLICnz9CA1ln648P0y4iscrLexW8
	 F2AOoUln4rBsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E1F55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291569357.29060.5170066376019004511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 880e9658b129bb2f6bddce7eb7d0a16c78c2aceb6dd0484e43a65747b77fde90
Date: Sat, 07 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772915693
