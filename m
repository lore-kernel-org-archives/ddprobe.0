Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E39E32AAC6
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773684294; cv=none; b=icDkLd7uVP9L1xN60jK/pfxvYlJkTiIdrTsVnydOsAtetf0SEGqcCHoPD3IDOJEajiZEyiGLbFVUxdZ0qNQ00qjfoRAcVi4vsUxeM4p+d6PoCN03nI6d3fWxP2ZS2bt/kLVc/rIwvWlZrkd7g4l66HZtIxJ33wbCJxxOeGV2/4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773684294; c=relaxed/simple;
	bh=ttivZAZEYUpt+tVo6ERXCLEUKuiYS3wgpRSgjqfAVak=;
	h=To:Subject:From:Message-Id:Date; b=mu4u7drCyfGrDCK6s0fzGiXB3KjBZeT3gddLezhTdCX21g35cAgSJM2hGomCKLk131fhYjm7XkULfFy/SqfQ0C69t0hbPf209lyUdPPpJq4qvnWUpKBxnPHXN2BO42MfSA8wQBwYloZQKmFKRzvW+60331GSnxmGlhyOvXNzQ3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JcimZ8kk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JcimZ8kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF49C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773684293;
	bh=ttivZAZEYUpt+tVo6ERXCLEUKuiYS3wgpRSgjqfAVak=;
	h=To:Subject:From:Date:From;
	b=JcimZ8kkhiqzcn50kJrMbWgJrPM7cRWzMB65CUz84i0rBOrtvVGkBbKZqC07CUHW3
	 aXqXJeaLZOB58KfEl4TZGcd32o4T+gFeBEQN9wOpfuA+qRL8v4lNzXPryN5KGOy56c
	 sKLA1CvIRIHIgiiw+ki1zL7nbDf3TC5CcWY4SynZVYMmXM4/Z1X1DXNYXR2BUoxk1U
	 HPZJ0CxiA5Uwi7PAgR+v9c7f09tgrXXGyj2FD3xdba8ufPpiWTlq1t1A5OCux6i63+
	 nkWnFcW4Q3gOlSxFchgN3euPkxk6yJ7Xe8mP89m8HrytE3peBUCu1jY/zEd/XLOOAl
	 8BBKOdUDMEIPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012DF53D7E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368429358.13146.7931847747612153140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0226e05c5c686ae01c4fbf0076271bad8293e14d2f7b0cc3d86dad88bb10cd19
Date: Mon, 16 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773684293
