Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E911DB125
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747792194; cv=none; b=iT7qE1nlOLNFeuzGgX/jzmGLYTDk9kpXyjcBm6SbSkd+FS0D+JoghE/mHWFirt/maYXk6vbZJwf+UgUShdlrA14z2EQOyQGDdQGzF3ekrp+bQHeChp/vxW8JbT3270RT53vJ83I2LzCsmTQt09ofFoklaH7Z/T5I1tfgb4HEnfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747792194; c=relaxed/simple;
	bh=h96pDIZw3z+Qf001RffRZCV1x/4yrjyaAR946Yhm9KU=;
	h=To:Subject:From:Message-Id:Date; b=ZYURFZA4WOVcQbo55f43rfwlDflJs4qsfEX6MoHnwM8qJl02RMNjdDAsfYvVcYRPU7g2d5NPzUMqA8XdjAIjw0tVGWh9k67Hf6MhQfCc0dWoKy1NAKM+YX+cAKXK22uY0lm/5B1YDD3991/2wCW40g+CCF9A8AYJT6xgeyKTKlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEf13yRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEf13yRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F8C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747792193;
	bh=h96pDIZw3z+Qf001RffRZCV1x/4yrjyaAR946Yhm9KU=;
	h=To:Subject:From:Date:From;
	b=jEf13yRuKB1ZB7/+Us8pwfuRweDTuW7JpYe56TdLwHTVcpPXpTF/U9DcD0bQFy6u3
	 lQ4YlQNorsTGM84JwDegMd5zOUCYQd8h5+alOKHhq0GtFfwbZfN0OErh16kuHBIVM9
	 dT9g0qPEdByp4WTcGi8JYo6COrdsja3KIEtAU0V49TY2LBSJQ0klNMYg5Q+eWG4Xed
	 3JHiUKTQPTKkzStzVH0NPk9t2o+LoGMDBc6Du48MZj3YKgZCpDMyWJb+YFbKC+I43v
	 JwmClhQ6KBCwzTxLJ1cAZnJ4z9DSruBPuGirSxBDlNEWpMHyRLyktPcnK5Vo/hQwna
	 ZhWxc3KzAdPPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90145C3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779219358.28136.17541024600213126497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace1f7670e6a8307e7bfcdc598ca14695c9dd7d23e47502b69f49d062641cc09
Date: Wed, 21 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747792193
