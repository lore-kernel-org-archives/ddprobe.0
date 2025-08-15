Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA7027FB1E
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755285594; cv=none; b=T+yqObVCpk9lopE15JHSg8Pu6OYbbifwi5Oh66T7M896Dz5QIMJD1gZPlsRh3Bdhze8YaoLjzGl51DKrkNKC5c95WZnT7NBRBE0ImEN9H2h2Znwo4NEHTlU/fS0EaeJkiARgbF2TSnHxHFC+H8lZ+ObGnQ1MKtVlDxEAI20jeeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755285594; c=relaxed/simple;
	bh=V/t73sGpMlPWqUp5avXiL8VOP1sxBuJH5bnpUJzhc6g=;
	h=To:Subject:From:Message-Id:Date; b=LXQ4CL/7RPFWYmnan25VbpZIbpJ65X7nXopVtFyndNQ4c7KMZTL0dL7uprlHz6WJFX8iWviEywJMPxzVO9z9/8TOJ3ceHy8IEEPKfExWqEiLqvWrdqxgyG1XxswVlAeICRZJQBdqq8kxS/jrtRzo4fjFOSLQ/9aZJv35ntEoofk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpIQv23o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpIQv23o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E141C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755285593;
	bh=V/t73sGpMlPWqUp5avXiL8VOP1sxBuJH5bnpUJzhc6g=;
	h=To:Subject:From:Date:From;
	b=SpIQv23oM5KMY/NL/RdUFzzMKDHZ3jazyX+lmo42eXYCVcPHB3hrbImyEpmXSs8MJ
	 orN+k3NBZ3B7uw3B153EPSSf0vqedWCv8PkoSgdfnMW/xCvrFN527sehwe0LEFHeVI
	 hf5P4wtS0b3kxlc9zFwc2mtEld86BfRyu9OKyc1HSsgNqc+o4zs9nKfBnihyvzR4Uf
	 QCfMWqiExt4kd3/4v3afa55ZOmoqQCe+3fDTeJi4arzYaDfHRg4+eJPy6hZPuBGp8C
	 nJL0mt4TAVqdha53J9s7Hem7ub7khwoJdfAkv4graht1G7TazY+fzU/1pq7Lnx2j0n
	 o7mEKcxG78QZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDE9CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528559357.25103.2324124910334575998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ada6dcb16a14076a284d5384f00c2c8878a00b64c4336b492d85dc7afb78ee1
Date: Fri, 15 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755285593
