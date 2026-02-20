Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E8B18A93F
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771547094; cv=none; b=Wx0ZbA+bfXe4KZGI4NERRzt88V19VjcswyGn7JkGPTSLhug7aaghY6lqQH+SZRj7v3uECs4pfCnKQnlWuc4yf9TYBIT2bC1+scijbsuoJD62vvx2h66TMcPWgDJaTPg9WruqpP7ugyDX5htgvCeMFOpgcThmW+hNo5G68aj8yck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771547094; c=relaxed/simple;
	bh=ATeTkbRKXiNz0tkCS3ODzcgDk0no4jUq0r/ym0Kqb8Y=;
	h=To:Subject:From:Message-Id:Date; b=Y92hrRlQUZWxVfUO+ZD8/UOoc/XLv+1YcOQMbsgnW4cjVftVTI5hySymd2wBXs/IwJzxKRUfW8dJpqbK4+fJTQR8g3feP4Hl6qDk35VmxZ+J5j45Rf16w/FrAFKCiUkPukgZY/9x32dKlXngVRzMm5MNEKPbo+RQPQuQtaB7q5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djgA0NZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djgA0NZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71C4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771547093;
	bh=ATeTkbRKXiNz0tkCS3ODzcgDk0no4jUq0r/ym0Kqb8Y=;
	h=To:Subject:From:Date:From;
	b=djgA0NZsyiiCQQY7wtQthZgsg1FYIop1VYgBZ/UE0gVQ2+KhKTHKNVex3rvm8wZhb
	 zuaR6x8z9wr/ActpW1bwqXPO/UIPve8k6FNVEgc6gB19DeaLXIsMlCNqarN55FGHMR
	 lbsxboNTGQlrh3BEWkFoUB6CpvIonb/+GWRPHrm7tmFsmwmS5xBO8Bq30NhqdbiyvL
	 pCfPWZYeY3Cvda2gEYnjLj//sURQ8rybdDhrJDwj55PCHzhhEdQ2Dy2NiCg++Xu9ey
	 5dcltOk+N7Enu27lhtQL/H1K6TOtGTiZ9AS0uud288SEMqX/Ddn8nkj+egwnUqG3+3
	 w4uMCHJuXD5JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93869C531F3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154709359.22668.12675127365078320944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba8e08b490f3f7fae420f9ed6192598a6d8bdc98f9eb6976a476425fb61688f
Date: Fri, 20 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771547093
