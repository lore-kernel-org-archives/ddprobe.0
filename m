Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1012F50A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722827154; cv=none; b=sEh191FVxQx70NjL3DOUFTgndUca13fqvsApZe987f+KD6fqhy05DASm91SCIWPzWtRYPOt4L8RSgY6zIpGDcXPxWsiGmcvrQW/zQeYTxTXy5JTKylsPXbuMXKL1QUH75Ate2gWPblmVNpsuJBm5Uu6ZD6sVsuYDlTknZtPssW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722827154; c=relaxed/simple;
	bh=cht2eZLWDktbz4MJpdAwPyQn5ftfGg/+217jdkSHi/4=;
	h=To:Subject:From:Message-Id:Date; b=jTeXEF7fjrDha18Skwot1IFm58PtDVyd143CExJXw5zda8uljJ8ZNUHIFeaZhhVx/jlAt1OA7Q2qLu68VAHzRIM3DDuSF8awRAX0NyZ2rR/ZQVGrWPQsR4cpAG4kUTAYeEmE7rZq6cZp5SKnNw3Kb+Fy9L36mFypwPWPJXKSys8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irMEiLlV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irMEiLlV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF280C32786
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722827153;
	bh=cht2eZLWDktbz4MJpdAwPyQn5ftfGg/+217jdkSHi/4=;
	h=To:Subject:From:Date:From;
	b=irMEiLlVf3pGDRbJ0IqEVjfkAURzG6BxeyBr0MnogSWCvg/2tOBB+LpdU54bkNzFi
	 nBdCEvjZ7/SrCK3qSlzhDtfhjNwHJcAVoEL7LLGfT53/M4sBlnqCDVIw+qaR7bIZK+
	 Y4gqnDHUGfYOrsi4sxmJ2suZngRzfPRlaAbzzqyiSdx/PAksui7rSvH2IFycX9I6Yw
	 s3F4Kf+5cpsw6DEH2Hv9XPH1397ie1jon0q4wU4VOI7S6VO5a+F0VbYmkaYBpnkigb
	 v/y09wG5Dw+aNkt1MPUI7Og72Lb98ozfT4X3vKC7SFUapZHTQfvOVngKge0wm3vtv1
	 WbDo9WRYZ81Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A748C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172282715362.20330.3453620869918197313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc68d7fafda8931f1572a4cebbc053b888b9bd3ab8fa76673550dbf36c164835
Date: Mon, 05 Aug 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722827153
