Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5871917D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743570594; cv=none; b=dr1gnJD06iX+VTNvNWLeT+jB7rOb9s3k3Y3noBl4LKWufZBOVOW14A4emqX50+pX3Gy70tbw/K2OAQclXdVoDE0LQkOqrnfc8yWEJOCiZMkJCGXNCCpF4+JnWa5aBrdNK5zU17D091Hn9fnuthuVKy8RfLdBvol4x9uxoqsTW5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743570594; c=relaxed/simple;
	bh=XqujpTrGBpZVpfbFsXWAcM/SzehTqQ/B7pLOhisgcdA=;
	h=To:Subject:From:Message-Id:Date; b=pPJGzsQFfsFn0gHMc6V4U6s8U+xY90rbJw3DDLNat8mYvcUXi8j7hFYJsjxzZCdSLy/crtfH7FOdj2dp70joIjPk9TSrxix0WJdzArG4fSkJdcXEe6qEfzhkLNtojxAx//BoCkzOsmyGXkVKWipMuRe16HS9YDOIP5nvJDCrOSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiOeMkue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiOeMkue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA68CC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743570593;
	bh=XqujpTrGBpZVpfbFsXWAcM/SzehTqQ/B7pLOhisgcdA=;
	h=To:Subject:From:Date:From;
	b=OiOeMkueAuks1aUwQAnvyroC2ZN8sFcOtGpnqtg5w0XwPpz8tRER+j1TH3kNZNM+k
	 X3AXqcWilokuNJT2Wlj/HSPoKnDT3DeISJMHoImMIjJ56bVb44gn9bSuYsnMrRgZLB
	 e8d6CmTWcsrsmaMrNEsHWqM1E3g5unaKBnO8fm/Mjlp3GXPbp3+hY8CRAnmXSu3YYU
	 Rqm00Ehb55hF1SQ9S947tyG386x3Fr3tyMy5ut447je4E5xwfZu4qfm27fvGiauheD
	 3U7zRTJMJdd5tt/fPZqL4/Nze6448a6PT6fxFPdjtSohauOBabF+KBoNJL/lk9Bbad
	 JcxqiTVFHeL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95077C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357059360.5736.5776922736056390459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456a9e65e28c84be2088e34cc256c8e4a1fe0045633eda0d605c5c420818448a
Date: Wed, 02 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743570593
