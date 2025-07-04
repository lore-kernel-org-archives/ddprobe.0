Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C60156237
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751673594; cv=none; b=o4JmtYUrJoLv2i6vOHdJXjRtHZO1kzASlem/FLj8W/rizurEzsauoB/JeysFL7DX6zH4K6mrEK/E+8jT4ORMdG85puFIdxHZbzyi7/QrcRJXyfLb5RggMkJ28vHV1MFBN4YNLE71rUiV4aNJuhTfuf93N5KFt0OzBngoARYvSNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751673594; c=relaxed/simple;
	bh=F4IlGYphQNU6Tntd3Oepn5gqGUfshSpGWq8n0GChEbM=;
	h=To:Subject:From:Message-Id:Date; b=spiwb0T1CfD6VPYuLh2DYEdu1mBsKkVQMuj/bR4eRQtWDNdxxsfvgeqDS9WFm6DBAKaJiH1/efYporSjTfYdKgtxEFzC6wGN1pZp1vj0Tg2UvnM+zvwWxftOy+wgPixDRsAvcdu+CpeHuiQ/HsXUi2HbYtKWoAY01UnA3EhjDgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZxG6Qhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZxG6Qhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29D9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751673593;
	bh=F4IlGYphQNU6Tntd3Oepn5gqGUfshSpGWq8n0GChEbM=;
	h=To:Subject:From:Date:From;
	b=uZxG6QhwM3hLJ0iJs98kbEQCafOsk4/YOL/5iBRdVZtOB+LAM7JSpnpYhV76jVH9H
	 qdzs922X6wHXg2o+oiXnwaZNHEEC7wE8tHC3fOCP/7zcgDp1ayUjLNc6TLyZfwV08G
	 hE0e68vSTDCe/kJU1FmqFLh5zItv8rS9PldMXKzPs1bnBio0YJdeHun2Isg4F8nU+Q
	 lI1PdxmRDiCkDk7YnToUFAjsXdQ3HFxNvPfCbkto/t0hqkOJNcDg3hwIe0jLu+D7Fm
	 Xx94kbNz0WDRFlW0XVknBMsKwa6Ru/LHqsXLZuLKS4mPowfgXeua+mwpnT76vJcT6/
	 gh2ydvIVkAGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C7EC83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175167359357.12082.11700595196437324912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee13f04a51dfe33e2d75676a55e007078ee7529e72ca21a2d5f3b22e0005a61
Date: Fri, 04 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751673593
