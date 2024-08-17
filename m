Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338B810F7
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723853754; cv=none; b=R7s8qe1MgXZfvbQjIDRFpCTIS5oSI8NCyh3ZjmyyLx/B41ka/AbSr1q+9v5RvtCTwODzDG4Em7ZX5Lb+appLckJ2LMaOLZzbmbNTSXHprcq/88zlQdlFCgGN/jL4LxiJfT8nGhBgJ7cCZGnRD+99XOxxQbbyOfLEMT3EPGgwcHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723853754; c=relaxed/simple;
	bh=l0CIpIVf/Khl1su0zw0TYP9mKrNN9l08k8K+4J4t5Nk=;
	h=To:Subject:From:Message-Id:Date; b=MIvQ61hnBLJ0M85sHULj9u3sJVhsCX4/MIiRChlGzITjkdMWS9oMsEEC7kRqr1T5ZH+u4cGNhrURlln/w7SH+8/0FOG2qEwM8HPYGOGJI0fNS0VgOMcPR5S/QsualDZDGFErCw8PKkpx7GYdXI4JRVlv2Fm0ydtm5/jiJ4goCvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roRZXCsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roRZXCsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41AEC32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723853753;
	bh=l0CIpIVf/Khl1su0zw0TYP9mKrNN9l08k8K+4J4t5Nk=;
	h=To:Subject:From:Date:From;
	b=roRZXCszhHeeecXl9fVliI3pfTHYtBIf20k2HhwM+Zg1J24emZ0yS1Z+ecLww49sx
	 JOLRMnNh7zJwt6+q5ZQdZ9VO7dqnNNG6uzhaEBR9/8zT6CPMbL0JrDq1TvB1aWZ5Za
	 br9hqmyniMVSpL6mjXwo5Jaj+/m+n7uZoizDe+HeeVR9MqkKihJn0wevybi8PTRYCj
	 Q8KkfHhxFQEixcmnHEKt7UG7XBFQYZ/pfQGZidRKFTU9yxEDPV97fcBECpp58iwL1K
	 PHSLZb38E3edryYgFJnjyK9sVXiRet0zwCi1PGZbag8ba22CcIKmu5/MkzwVd6HLny
	 CQVfrBzlL7dKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A413CC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172385375361.16451.13096999541063339456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add147fcdb8e8f0b62f50a724a1573b36cddb4c3e9fb23e023fb152b9bb13356
Date: Sat, 17 Aug 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723853753
