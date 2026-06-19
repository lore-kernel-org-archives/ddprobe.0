Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351D72AD03
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781882794; cv=none; b=eWZtPr9/kX6GVxGj3ipf2BroveEBONmUbzHOXW1qwdxfYSl4S0vq6/cjUuNBd3fu836z11aWse0s5fNPeci82ef+luG2oPPdaC9YiRjMpLzc2Y+NI+Dk5Wjr9yL9kCIhWiqJpw7sI6qbaHdyiHmleCkN025CNMYZEXvM4DM+dgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781882794; c=relaxed/simple;
	bh=Mm4geRnkwmCU0syU+qXbZ4ZJZO+Ach/udxjiM3QMeI4=;
	h=To:Subject:From:Message-Id:Date; b=eM8udyid0IPzGVamYaPlRQ9FmTZEZtmtVW5W3NaeGzOQEZgC6PR86Lg1GZxG/g4PlXkj3mv3ExlpVMDLohBkmKKHAvR008Ua4pQnb9SQbWwFgYtvgRBFZbnYcVgQDHXss2QnPZpvEl++pRdQp6VkM8smdTAmcC+09YWRWZ+UQ30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fp4/GShf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fp4/GShf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C8C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781882793;
	bh=Mm4geRnkwmCU0syU+qXbZ4ZJZO+Ach/udxjiM3QMeI4=;
	h=To:Subject:From:Date:From;
	b=fp4/GShfjIo0csEQlxK3VzWP+r3eIyXIzd09PT6F77Cn0teNx5BGo5hc2nIvkiluX
	 /kjnN2lKhuaaz3OewhFHIZwg0Fphp2bDOdhmArZUdJgy7B7/h/1iSfXh0ENYF1/lVl
	 3DrojpOxEmrRZDKHImSm0MJnWKzkfE3uJCxSWrzVVEbjZ13eflnIyT8YqybTnTndOo
	 CCLWZTdi4n34vhYif2+VlY6Ny1Beb9zexKz2Jtc4g7w5+WDu2L8heC8J5RJJJ8/4+v
	 pWOAntjPHBeBgF0kln+7NzP788SizdStl9Ww+OZM6g1YTUJjEFDtXrR3Ye4r2Z+/Ce
	 +ntFokyzkfCoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF90CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188279370.1769.10541752858343750692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b945f6ef15fecc1d72b9281a1253b89ce0d81cbda9230647834b2aa09cbe6ca1
Date: Fri, 19 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781882793
