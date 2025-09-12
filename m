Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A8F27604B
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757659794; cv=none; b=YujJVO07F2rzdQb+esolvLdjcdhGHnMeFYe1g9c4xYTsRhB4BO5acFFdCetJ8d6YzVZ1WxBWVOHWa5hrhPT8GVZMPTZ1hKO0FByadvrjpVavMsZak1Ypwuao1FdATf9qJN0XMg75RQnfwxxKZqhAP7fY4TKU4wQ/MYdfAWItKh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757659794; c=relaxed/simple;
	bh=FSz1frySVfumDQzV2/m3DihUNVXsfBb2HICs+tdGKIE=;
	h=To:Subject:From:Message-Id:Date; b=V14MbT2RRIOy5bwGwjOWA39C5ZFWauhl31qPo6CcSSr09UQnStWwSsoQRIPSitSfX3OC/advrEqgkNuVtfzU6ARsz5sS30PuSxIIVGrZIluFzh9MDb0Xt3RHn3uRozkOgCnPqdB8XxMSOXUE+EfaegSYIfkBE8c21ZqKugkJqw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFvt5xqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFvt5xqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 980ACC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757659793;
	bh=FSz1frySVfumDQzV2/m3DihUNVXsfBb2HICs+tdGKIE=;
	h=To:Subject:From:Date:From;
	b=sFvt5xqUI8MKCbnK4RHbNUKakYAl4FyhIrQUbj3by72lFzhPfO0Znv9qAtAkCFKqb
	 fq2Q5cS4qdnFugNhkuX/8CWWVR6sV5v5GDJdlfPO7PgSz6xXRZVSiQAwNwMM9riPqD
	 rolJV5LJ22V0fQJ3vXmdymFk6UrEdKIWkjhtM7L6LdAF2hckwfdli6N/NN9mjXTXVT
	 JIFFNqX8PZefvChZRXX7wAPtkLPkkQwxStlh1fFl8w4+yPRsa73eewYlQlEgkSIBbf
	 EbIoo5eYbkE+BYKos2mfNMY6hQci07ROyw8ldbzTtE9OUIAZKFiCCOiTNqgEykHasv
	 th8WXW7DlFG8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5AECAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765979357.12102.14669626663553715388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423df6f80ed436596b1b6071741c52f9bd90c1bb9f82a664bb3c5ac7546bedb4
Date: Fri, 12 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757659793
