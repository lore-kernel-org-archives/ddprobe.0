Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF8E3E5575
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776167254; cv=none; b=ad6NFyFcU0abvf9YB7pcD3rOmJBOFtZQkk+4YruuWkHdvYpWSwZ0rYVSQdLoFQoCdXtDXP8Aej1vo+lhnnFvMtadezo+Sn/feTVF7fiXIeT6WppAsATcMmyBifPB5Twotpz/k21UXy+mPpaOMh8E+bFX/7h6kbTelIspbogWUkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776167254; c=relaxed/simple;
	bh=UpZmZuzPDbPkc8HG0ea1upLC5b1u6e2j460EOzoIx0E=;
	h=To:Subject:From:Message-Id:Date; b=lZP07MzVEfa3U7olQpzIDho2Vk9e+klbAhT7+c8xyxOMucVfwhmrJFs5Qrw9K54k8GxtBwUw4QDlBfRo20AM6NuWoIXC8IrtDxqQDhSDul/PPlMEf+6fSlsogs7HM9mamuI7rMSBSNNehy6VoIsYzuRjX0gKw87StxBHcDLpSoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5ewEejN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5ewEejN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96F0C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776167253;
	bh=UpZmZuzPDbPkc8HG0ea1upLC5b1u6e2j460EOzoIx0E=;
	h=To:Subject:From:Date:From;
	b=Q5ewEejNmf/itBd2DlOXlRvLwTLYdeQZYWXyO9J74CSuVZFXKNviA0UzpSPJWZ3Kk
	 7oY4n8ZCRqvuXE+xfYYX1fWBlCiwdpxLh7ggNeiPwgFEfbpUvriZPqpR/esrsJsc0o
	 Mao4Wo6UvkArrmZWd5DlYOp/hGqqTajzMPtzKxxldbvDZeERRoFCl2zEEezpjARNp/
	 uGnloR0twuK3dXdGdjp9hEyA31O8TwLCdx3H43cZ2RwPldHtiF+LyuZPIBkx4ofCtC
	 +pb0zP+r2AJLHJAhR0zVB/JkXna8ZVQT3A6oy4xdCqcPEKne+rryfKInG/rRNfn4k4
	 xMDIUMVgDIHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5CAF9D0C4
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616725369.10483.9313052353694185589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3165712bee6f6b15475a6fdea3c1874e9792b357092c23765a22649cb4e60b66
Date: Tue, 14 Apr 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776167253
