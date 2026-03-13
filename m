Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCA32FDC53
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773362694; cv=none; b=uM+plJiwuJFkutYF2ozGW0bgrJ6qaxw0Z2Qo4Wjx8AlO2sUx87ETlEXVMg2Goe1CMaWu10RWwV7CsRgpjrOWy6Ej3UJemHZ7duyN2UyEtUl1vxHKr9BcLHOr5h+CILnUJUemxvw5CQaIFPK8TZvLYmxAokbcU6JckoH2NH2ZKDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773362694; c=relaxed/simple;
	bh=9qVPqPJplZbhsCpUiKlUSFq8FbCfmV2cgnvmMc8AnAg=;
	h=To:Subject:From:Message-Id:Date; b=Yw/sSGq3eNvKeybIh+g1jm4WlY7tV3tAmzc+A0GxXBDbedyn3qyuAjeWos9bVdZ/lkuMQf4gMEttWNsBRahBXM7rAQNaIdRKdYcFMyz0CFOpB4+d1R/Mce/8cRLHf8yMCN5SbBvaXve+fIFbZTgMcp5+wPD5pOK75epIiUZVVOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JK76tFcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JK76tFcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFFEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773362693;
	bh=9qVPqPJplZbhsCpUiKlUSFq8FbCfmV2cgnvmMc8AnAg=;
	h=To:Subject:From:Date:From;
	b=JK76tFcWzJILETl8kYYOweMVIyXiQ0DZr42sKka6l5oAWYMPQu0IxmgvPoFCuScOW
	 csgeWSQwdRq0jAOtE8DokSuvUKrMDue0kI+9pwLPCqme4ms+4w3OzORdu+Eej2cGhE
	 wfJPNgYSXNRnfwpOd+MsQvFtu2cBvKiGJip9mcVMdHAJhKnGKQLzVIupmLnmkdzQRZ
	 ScDxMtrTYu2ICm1w/ryL6jrYfK6coWaPBEYe96GO6y2FhgDLe9oWlnLzGkg64AjMR2
	 SDncJlD7w9duZxTN+VH4GT1QDiKYF+uxZg7S9oLjX0s/K5KGlTB4L4SnwMFjS8FDWg
	 KmE4l6tI1aRvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B37106FD62
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336269358.30732.14618835678650152761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f096978a988767d36f41f7bdbf6af371d08cb5e44a99558de27a9db7e2252180
Date: Fri, 13 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773362693
