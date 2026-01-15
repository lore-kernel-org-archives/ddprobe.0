Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0571435F8B1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768482834; cv=none; b=Xg09zglxCHezs5MPhjqa1bLzugjBZVMc1EOyt5lrDsEMajWxYKih418+R3cr4FOHUcN0/VfgElsMQ787jRTPcZKQi9o8scXUewxcfSbT1RtEvqs7CmJPkDaFiMIDRLuUkCMuwiJKLxor5Jvy/3jXgGxIhBNE3y3sGYT942Pjkxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768482834; c=relaxed/simple;
	bh=4wVf0CulYCgh1FSGx7KCP3YIM6OW6OjtY/QckcNOJgI=;
	h=To:Subject:From:Message-Id:Date; b=OUmHh9FQHJqskGhdUdnhuxpkoFQDIPYeEYcWVxE8cYgdRxZczIa8/gtrcm9aGybFt4UeYieg6Kb6DQ3UgBF8xEK1l+z/YBeei4gvHhHd/YPPPn5o3F0SWfVA7rrVrFFxOz6Urng+vLqIGEjZII9FRsrR3F8Y24ZXu3oRu7oWuw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCW1VGa0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCW1VGa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E28DC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768482833;
	bh=4wVf0CulYCgh1FSGx7KCP3YIM6OW6OjtY/QckcNOJgI=;
	h=To:Subject:From:Date:From;
	b=rCW1VGa0G05UJLGNdiF1v/H9NkmlWDquNivLDbubpzKA1YkWDmcED23l0XoLRaBOm
	 yNktwLpM+lJ5aWtTWFn1qpq1QFr/z3zUwoaH6qfSSItnRy+YlHy0Kgrhs9FM/knhqO
	 RAmU/flviYODNirnX3UFybvRoqW95SVQBu3h7Jy7PnQhWnaaCWbTPxTumqZbx6lgOr
	 7eVToIhD1UpyPO+DMwOHa7nBTswSY2SaHZKPXj9Oo7sZzmIiYy3rxJheCbbIK8qPo7
	 oZgLtFflyXejKk2SzdFs0lvZDusVBoVWhqTsk/SyH12we556zxJqjkpLuQQwn88CQZ
	 EFePtdkoxUAuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90468D44C46
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848283358.28143.1993228035256950563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8e7a0f0e7d8457998c56673b7712c8b19781ff208a3bc4e2dba1f1e956a6de
Date: Thu, 15 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768482833
