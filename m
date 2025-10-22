Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC402EBDF2
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761111594; cv=none; b=Y0usKxd5UOFzotdckinWXfssmokNfLwSyTTezj+c4t5dqTwSwhz03uojLUzEyu3sz6SauqLNZmzpyc73yQnxqBsDLgdUYkQc1QAMz8/QnLgbMW0fP88M1Fyte9dYT63vkPntPxVZSLWmxJklr2AJN0a4P1XzPbDDmK5Z3S36EZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761111594; c=relaxed/simple;
	bh=AnNBBTlmuIcPeB5Rol+YSj+Gepobx74/YnpN8GSiPGE=;
	h=To:Subject:From:Message-Id:Date; b=JtSFe4RsjeIzjB8T70YHAhGk8uE79VuFFMGxFOh/2OTwN20pxiwPP2ub68qIcltn26s8Jfe70QqWxvPxZ9qokR35FkgWnLMKGilN8IasG/ByoUGN3eJNBBEbkHrBYUNCgC8wpRbFO5IK/1SjpaE5m8u4iEApG2XNk+iwK8aIAjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZROsj3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZROsj3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BFBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761111593;
	bh=AnNBBTlmuIcPeB5Rol+YSj+Gepobx74/YnpN8GSiPGE=;
	h=To:Subject:From:Date:From;
	b=fZROsj3T3meLf1qcy1bou8sV+BFCuopkCoVvKn9IRF3ki6zjTwYbNiSGM1Op3grW+
	 bsId/WFu0U5qojfV46OPvbcKn8Ldadj9/UG0eNp+9msZTiCWG0zTQugoeGXF7y8elw
	 VIfVV8DQI6ZTeml1fDIuZU2fHmxWP4u7J5p8ixfXhU6Tbk9azPA5r3r+QmWhjw876X
	 EIX7Ya9LP26At73RF3SFaNYQiQWoiL9BADMK2KuTqVD5wYkuX8DpqZOjogYiTEvEwn
	 cQ8VzD9nYQWIMlqfPARkLf9JExm6sCIHbW+FW0zyOFpUV8a9hxCuzWt+DCdrEvZDC2
	 SG/YBEuxKF05A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96090CCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111159359.17693.16203203283366197203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d7a54839fb54b38462ffa7fcc6c7f72719d1e0eda72251f354634a6d4d63c7
Date: Wed, 22 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761111593
