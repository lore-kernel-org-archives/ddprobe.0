Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348F9221F09
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755985194; cv=none; b=Ez1eP3kr90fNVQPqVAJ68C7/23stEseTixYcjXHgiWoywiMbBIEi6frE9SUMvW3XzDVKxWPoC70LKmWCySyEwajAelq+MLxx6eaoY5sCn9E47c455rAxWl5Xg/CVyYK/5t1vhtctZy0scpSGWZT1bwidLwggoaLGUqAoBj4+0S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755985194; c=relaxed/simple;
	bh=WUCRsXfVsl38i8JR1MZv1YOTEyg20C/uzQA40yNKZJw=;
	h=To:Subject:From:Message-Id:Date; b=JNENuWclm+Y8S0RvDLITdOOKSx3pT9CHWLls1ArHMtvNCgPCnChVuBthgItnP5CiJUtr0wF68XV2LDN2O1b9CCggVBZ7vYK6mMEqME/0nzVT/hDIoLcgGEsmhp6TH/vC/hacAD9N7YHFPiTP/aZtOcLVs02wkTWlAoNSwLAF2ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M98D3Wsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M98D3Wsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7113C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755985193;
	bh=WUCRsXfVsl38i8JR1MZv1YOTEyg20C/uzQA40yNKZJw=;
	h=To:Subject:From:Date:From;
	b=M98D3Wsb81yXl49zsT3yvx9WAUCb5C6G46QjEWdv1jykYY6crJHrcY8PHsrITawSu
	 WBC3QTd4CRsGZt9ZMPzMlYusd0P0ZTjf9edomlWRGCm23z4ylut58MzQqFQN6pZozC
	 MdtSj0Ns6zRbTxO77gQo2LlAgEsP0dOynKNIrR+JqGIXcT68BJkt2R6yhA2Xj6l5Sz
	 UGmOQbZ6t2QTjTuUH2v4Y/z6FIG7AjptZPClIWl0y0hABWf9cotRyTRshdjsF1/bGM
	 f/jWO1PcCmc9cy7NUmiOBF2q5+HWGvr8dPfSlE59Sye+TbeSZQhcnVbi2+Nu+zi0Bn
	 aY9y5/ZltGMSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FFACA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598519357.26920.564131091762921222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609cabc36f755f5d0039880387187f751b6d4ac47604b861aa9cb0139e87013b
Date: Sat, 23 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755985193
