Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD3225C6EA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746475194; cv=none; b=DFZ3c7urJlx2XKGSb2dpjHaKdbpPGZqDEjxT9IRDlj6uUPT2EcHSbQpQ2Q/IQFQAlsgHFkxu9BkcS9mIDtGG5a+wpRbiWbvsem9jeZchGmEIikgwxzk+OXDZ490fUC2jWudE0cXAcZb7Erufe065FOFYZ4eSx1JG2dY71GF+2ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746475194; c=relaxed/simple;
	bh=zxqM5NcBGkz7Qu8f8fPU0CPqCEPn9Bykm1YRgIDEuxc=;
	h=To:Subject:From:Message-Id:Date; b=VFKGlDgJd2mTKIbwWZZsnPyUgZ3djOnr0D2baepFKJv8b3XWQ0ZymuLAu+yOPvr7VkDsF4ai/hOrfmC5N83oY//nLc2ABAlGuiRKCMM7TDkB/pk1ocFjIOamwX+AViakqY5eNJAJfu+aC31iTVAkyneFA6bRt2++Wcm5WW6qe8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTucufJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTucufJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECA4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746475193;
	bh=zxqM5NcBGkz7Qu8f8fPU0CPqCEPn9Bykm1YRgIDEuxc=;
	h=To:Subject:From:Date:From;
	b=OTucufJJJL2E8jMI8RONboTKSNUQaJRxQRjUIe8qXshqgsYe/Ic0gf0lOUhnYyQcz
	 6lEMF2eygLb+QyUOdl7yUCb6uIS4M2ZHUgzUCSwn61dmfW3TDGy9XXOPRRqizvZukV
	 KgUUVx2cA58gCE6oJ2oQW7bgzHjjkkASIt+g4pKOkvYK1f/CX7Bx3d2QRsTEdYDe+3
	 E8jHHNxUGaI1gzl5mNIvDgtpTdmg+IiV6ZbLZOkiNr14JX4ecxipM1PEq1gt/RoU0+
	 +Z//x/qWC4f+IChx/yBvVngClRwd7QAGFcYaQjMnPpfYghnKj5XRBg6bx0EDN4iKhW
	 dj6Y1hF/FCGMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9DC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647519357.8589.16654330690145469038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194665cd8a1c3e90966d13a960a02f29201fdb0073a8c1a556c5dc9499ad8aa1
Date: Mon, 05 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746475193
