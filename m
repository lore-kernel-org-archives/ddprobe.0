Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCB48BF7
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715049143; cv=none; b=VtXzlYyDlkLYN2ofuL5JVsttfA+zLFp/sriyhE6rVJ//VyvGZmOaFgeFHcnYwCpF3EzC0jzPf/7KvgLmHz5weEK8qDCwj05kB8+gzR0Cz8IuuFPdpVhv7jigzrYox3RU3GRope9H8/2KhyfdM1iCrVA0Ac6TJguheeYiS8epAo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715049143; c=relaxed/simple;
	bh=XvMV4oKJznLBgj1UImLRv8ntwCxb+HeCNgJo8xOqROA=;
	h=To:Subject:From:Message-Id:Date; b=SbkYjHj7Ol8Sx/FZIrHpG+/9D75+7GFixKv83VX5Xr18w9gUWGeC+mxhIhAa8qX5t8aw83/8fRjgqUnZaxu8ySK6gSsY66HDlLWXXMCAbt17fMyP/itmuXoXoPKLetxuUwYz3tvwdETv7jYDOhn6UUQQdVU9mE8mLoW5vPBUz44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4opQgIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4opQgIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8490C116B1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715049142;
	bh=XvMV4oKJznLBgj1UImLRv8ntwCxb+HeCNgJo8xOqROA=;
	h=To:Subject:From:Date:From;
	b=M4opQgIyzvT2RAK0lR9rVswbFPxj964kmkQECHyaAjAIkden9IP26EZpbx2GbjDxW
	 BOrrbM6Pg0hx8Whwq063HkJz6KXcYA8APzosGUlaL+rLgacIUsyVan6/syBXxJuVp0
	 yRN3rc7ry+3FxD8ovzrPGGwdqMzJKAUG56hpvKA2EkbVL+UUtF9Q9ZhC4vqqrCQ0sa
	 9dUYeJPMI99KdZegtAPXfV8IGzEEM+AIkDIQkqZHYRPKFOnvwTh2Y3SQPHyU+H/aMV
	 38LFitBr3mexsA1TLNKtaqvKAKJItL/XHQH3QWzGfh6PWqNhiMQjC6/5IvcaO+IW1s
	 vkWPoO2XvuyEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CC5C25B10
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504914275.31258.1170024611813866293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e272ea9c1ae3b32424764b6a3649cf3c9a21fc1b592e40d8fbef104d7e9a61
Date: Tue, 07 May 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715049142
