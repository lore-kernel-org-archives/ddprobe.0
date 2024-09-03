Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4220E1A4E6E
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725338754; cv=none; b=nWndpJGWlJRWwjecxV/SESZEkBWU3+CgyOLnlEr/PF17kZ37zD/8GPNcR5BgPmi4ToFvBUBmA8wuBS6mNSWsOPao2hIEmjF6IbRfy//Lz26qpSzFdDDIdZFxfVqohTysDUIwnYtI564vyhuSauSLWZAziI8D0DHDYBPFdKQ3SmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725338754; c=relaxed/simple;
	bh=VCpZfMZC/dgcgJjRJLx46Hpr40Y736+gYYuFLk2bQcg=;
	h=To:Subject:From:Message-Id:Date; b=VbugxpjsTIYcDv8KAr/NT5/ZRrQVyCBS9RJpsI2FpgIvvF7cIxBhOfFB2uiScfCGRSw+dy4fQMF4hb3XQ6OUEFLkveQD+5C8IQF+acSQzAWp7dQxVj9P1o//1mYlTpyI9MsbODBMloxoEB2rp1Eiq9XUbQQEfb5SwQhbzWqw/58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyHqa+d5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyHqa+d5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4ABEC4CEC5
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725338753;
	bh=VCpZfMZC/dgcgJjRJLx46Hpr40Y736+gYYuFLk2bQcg=;
	h=To:Subject:From:Date:From;
	b=YyHqa+d50CFHGcpJgYHCUUEy8BXlpZKZXtlV1+pkvUs+OKFOd+FeMhWA0gt4nMasL
	 wC/uD7T73CDdHszP9A3jzMadYSr2mCfz3XkRCSyjSgAZFyGL+33BPeDRUhAXhpxXvN
	 pLVpTJ7UFqDtN4B1tNwQVHLpoTDSavyV+80TWbt46JBiCNuwowyaiNmm2vv7Bu/k6L
	 xmwPZL/l8nmnIBJHoZVKBImURM4OGqHjjnV+/x05n0d2YWbbgAekYA0IqMSNMNPdI/
	 ehe4OuTKbbaGjRK7jtlN5EbfTYWIVzsBLAVW6NxgeoQVwibhBFq/wBQkS0jx/79XW0
	 YiACpYvYFz5nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F123CD342C
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172533875363.1461.13163060696513062899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000d5bdbf7bc3816bf5bc2a9c5188cd9b916cb81ccbfb0491702b7a7a89bb7cc
Date: Tue, 03 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725338753
