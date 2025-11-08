Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA9D1BCA1C
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762573194; cv=none; b=CR551eT6IlOp4mFlsDigTpBmUKC9sHW7ZUchop8/+UmJ5zy57bBxfL0DMIK5aLp+cNpSlMdt37IDWTIv3adOETeMNrdl0sQThu4U8E34hFCq5pzteq9kXFmZSwjUSQDFQu3AtG1fv8Tn3OG5IKdC6J2kT2YqO0SR7b3tHYi1BOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762573194; c=relaxed/simple;
	bh=pVQ3nvh3wecNGegAMsJ+Xiz11yVyvpmV1Hr9keEhi9M=;
	h=To:Subject:From:Message-Id:Date; b=la1e7CnPO7TBHE1Fb1mfU7GjL0W60LCws9nI5qpth9Tj/de8PCzoO3WohHA3foNJ8A/tJSDfoheDK0oswm8kPlzTxS/xaU7zJizRfXtvzCedQ+lTdb94urpAkps7a9SuPcCEos3SbmFfpFrvNCCtHf7IaY2/rOsN8OoseUN5a7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIbTb1gV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIbTb1gV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D52C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762573193;
	bh=pVQ3nvh3wecNGegAMsJ+Xiz11yVyvpmV1Hr9keEhi9M=;
	h=To:Subject:From:Date:From;
	b=AIbTb1gVWo5o26nfv5WSeKz7f5DulVmEZ48e5g5Coi1sZTRA6P+lrmWiuM8/VkGnY
	 P3vuoMcoFB+sxVvy2BdG8N1z+WytnGNOO/0JNWySNbGsrMtxrWhXA6HpkRQN6kiR/r
	 sv62MiwZjksLJJtehnbpXiEQOjmTlB8ogOZP/NHjW0BB0Tz+BpwX97+M0kBVV0snaI
	 gnpcLONsUPTescIrsaD/q/KoqOKcgtNeHremjSKttVRan4uRM7e+IMOEiKmmI5mu67
	 A0wf1yBUnH+YqRCaus8qshNIHzHXuhLh6WDFbGsnnbqXQO7jj4q676PXVi7Cr9Z6yy
	 KWXFfU1UX6G2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C31CCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257319358.26011.7632847192391865677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3f237291a14d3542ffd36b3796e1cce132b570b50c95ef74b040a0ab61c009
Date: Sat, 08 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762573193
