Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373BA1773A
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726379754; cv=none; b=uhBBFhtp48GJMqrbvDGBppLWf9+ElY8vw89GmZmKDRT62x1px4UT9KWekyIMFjwZWbpyCdAcqUQ4M9GeAV1kMSRIlxydQ14R8cQ8AKa8hXq6NiDQKV83BFoXe8MS1PPWY2gbBxm1cA0VQG2TSX2lSh7/CDvHjC3L5SU3r9m3uTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726379754; c=relaxed/simple;
	bh=RcJY4EMpGRAzKMcNEyQ1qgEcUQ5rkKdOzUrTQwhw4m8=;
	h=To:Subject:From:Message-Id:Date; b=Ycqmpjb/ctsVDa/nRF5I2FEVksHEQt5s3HiaB4JkPJ915jCXKUZhqfMtjgWGN5e40VCy+eqJk6yDtaQ2bZTQfcpbo10fQToBz8Q6kztWMoOXpFhLKflSEhOHLl2U4EpcsAZDQ5UQBotHA0w1oj1y0FAZ8BEqdF1KW4PMGoT/jV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLifeZpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLifeZpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDF2C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726379753;
	bh=RcJY4EMpGRAzKMcNEyQ1qgEcUQ5rkKdOzUrTQwhw4m8=;
	h=To:Subject:From:Date:From;
	b=qLifeZpGH6y004zOsBAz5l/vcWWJgW0ZR25zzcaCQ2wAmCjvunzOIMHtQOIzm5g6M
	 0ernogW9HoDxYYqevNVIh1WBQxe2EjMOAKMKIniUG525xL3OzSE8gYQgvF/rOOuDDB
	 yeY/j2KhpkNIx9+Er0LtiZ2wxhQgxGeWs7wqhhjgVK1X8195aQoKSPE3RK73fJn4sv
	 HkNLUza0dg/c/KypeRmxTFC8w+L2etW1MPAL1e95IhyKIZ/eu1JRzq4m9axcFr/9LI
	 fXple7viHeiEv/IXssxi0C9gP2N6kr1WF+r6ZL58LbflWw0LqDm3wlADYIplGz9kxQ
	 5Dzhxa09osj/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953ACC35FE5
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172637975358.642.9065949899626665564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580422858e68528041788ac6d435b6943f248fbffbe45af820acbd3d3e8d0ccb
Date: Sun, 15 Sep 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726379753
