Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640FB17C74
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713028163; cv=none; b=LVQuaxGRuHFcRTWd1/gMxpJ6qdSoFGa1uj78io7EtwVQzQ5yMh925mwtxEfvc4S4GvgRqSCZZDOL2WsjZQZY6uLMZEb/LGrFJ+OzEEQhZRAn3fuJTNYguf2aZ8/4tKQfx36hOTZ1usyuX/VQ5A0GqLKhHDcuptv0U3nuokpk9j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713028163; c=relaxed/simple;
	bh=8KSYnLdD3dkebSrGpIZHHPoLYAPyXCOMFKlFriDPWiU=;
	h=To:Subject:From:Message-Id:Date; b=AJSOmfdkMI4/92iIdlSthxKfLBc1C1pvtASkvEbfYJ8cg8EFgUywtED/tgAf4pU1vglpHDilNqCbY4yJU8avIybtysBja8QUUAoZs/7BoVDMbNz0tETw9wVlFXJNkbiFGuo7/TqRasbVAPBwGzJ7rhk7mJguEujvNuOAe77R7gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1lD5ykw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1lD5ykw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5E8C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713028162;
	bh=8KSYnLdD3dkebSrGpIZHHPoLYAPyXCOMFKlFriDPWiU=;
	h=To:Subject:From:Date:From;
	b=B1lD5ykwjs4JIjxRCe3tmRF6bcUF5ZIYgR/Kv7qUhG8kJk/KRs9RpcTxGsrbVzXRX
	 76Yc9MqiOBs1vU7qN5hOFl8G3/8qsjTF2lcneWxcGvDqO5P55Cv49xXb7EWRtKX/JS
	 HosTcsk0Zqvp8HEslUs1DcuvjEs4oT78YhEUIeuU51jhyplm2D5vXf1BJoSQ8EeyZd
	 /cQF+s60Zk1gQcYjonQbmmq4ir4d9LicmpRQU3RZ0IOOxUCLgwI3KCTUDpslJwKKr9
	 7xq/HHgvesAv4VIqd6pC80qfX8TcmaIDI4ZiaeyVIGCH6ddTQhL2A1osOk5qE4HON6
	 nWCPUXYl7VO5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C65BBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302816279.27278.13670743728248622654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8554b03f48c31b253d25d3dc860cff3df8ab1ae2341525a96db654c3009eb7fa
Date: Sat, 13 Apr 2024 17:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713028162
