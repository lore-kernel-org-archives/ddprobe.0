Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FEC45C0B
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767159234; cv=none; b=WnSkVu2G2OF0O9rWFkHER7ziJtR67dzs/DRcka9x00TpvkFk67zGYVd64claexCjXopvfJYrwZ7JsGaCZfbnBFw3tOFMTgqT503VKw87TtvWG5f1Yehi9kns/Z/IdqsNcD19sijTRUskTwPwZRkJ2cj8EHU6F5LIEmtbwk6U86I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767159234; c=relaxed/simple;
	bh=IV5u7RAWUs0wK4zrDqrVLm311Q8ssfGy9i43pPhiugU=;
	h=To:Subject:From:Message-Id:Date; b=Fj/uVPffIRGOH2ceEXYN7/jcLz7DdRwY3dLNPM2h9ghGjt/Rqq0kEu1UvfoMWjmDC3I57ZBcrASekIjENC++V+riSNz6qBDSC7ObrmsL+9qtWgCvjyxUqMXoRN81/XYuxep9gammx2JLrdtR5e+wFsVLbTmyCWtiJQEVbEs26uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH5JhnL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH5JhnL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7159C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767159233;
	bh=IV5u7RAWUs0wK4zrDqrVLm311Q8ssfGy9i43pPhiugU=;
	h=To:Subject:From:Date:From;
	b=YH5JhnL2btUSekDB4FsH6yEct6FahwXK5ZkWUu1gorBbPF/iZKGWz2WnAIrk78r1Z
	 WJK1bOc8v3Uo2GX1MYlfdxgyqugAbDM/rHIkCyy1TM22CvSdaqBS8jp8ZGQPUlVrx9
	 ssqa3qVFdjveYcH9DIVswkfl7SB5XHe23g19dk8cnLUy5CH24bjavysh4UGHtbfUYQ
	 fwerNIawYGQPDh5XJGl12QuBd6Tu1gud2XTrXMY7v7PIaTcrNj/FZ1+K9jzDdS19c8
	 WVGuGug75TYRPmCe7oWyD+XlGzN9f8GizuFS8pvjVdMYHaq11Cjgxc4WpMJdXYhT0C
	 pRPltHogJDDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95690EE57D3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715923358.9452.7316945627340199588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488ea24b8fa2f550436d88598e82a6b8766e2faaf45d1b2100e4fda331500811
Date: Wed, 31 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767159233
