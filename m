Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25077134A8
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 09:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729069555; cv=none; b=jKJemZq1FUxkH7bvBMO/kZXWPvN6s3i41bEo01Li+yMlU0krY9nx9D6ygmSNRi0v3McHUyjtTxK3K0C0CAslqaqologlBlZez8KuKZPVLl+IQSL0v69IxboOtLV0+k0igrTODYtQ1gOOuYZzXZdMzcHtlVG4oWH8GfRdjxSi/dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729069555; c=relaxed/simple;
	bh=i9nqh1lNaveyIAWs3anY1NPC/fmctxuOj2kCI2kTUt8=;
	h=To:Subject:From:Message-Id:Date; b=PjRlL+9TsActYa16xknJvHe7cUsBM12JtK2Cfhg1B5odyhxvzlra6wXyvWXl51UcmFVyMX0VYyyL/EmXSREsUVjq52rzw+fRcjU9aqverZ4l560aGDY4Bb6sFYhtTPAm9+hpWVt+7JmCoSJgtSshpVDWHuMVuCc2klM5xhpfLfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJraYuBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJraYuBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB50C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729069554;
	bh=i9nqh1lNaveyIAWs3anY1NPC/fmctxuOj2kCI2kTUt8=;
	h=To:Subject:From:Date:From;
	b=aJraYuBH9cqwZcIZWcCWnmndbWnHlRTRaowH1pkNwd9lbSHuzfWMeTaO5fCLPMluW
	 E5EgZC82az5Q7sTtQrQ0OD5p+5ZhB1nUw+dKZ/xItQhOzDYznDn6h1NuEewFJ+xm/i
	 h8Fi+whX/BLDrh+JGXVKDwXqqGwXVAvWu2O0VATh2RT9uRNzYKOIEWWswUrHyvvVsP
	 jtUrIc/o/AxkWgtVGiDPup7PoUeJhuJjKZNI0rofX5oPKBPovi4B8wlwkYJBgk+fQt
	 LZebvmVR4PZCOtPikDecY6zprCw0mwtEaaGIk23cyu79hJN+JdA2tkOP5BQvaNqPK0
	 OJ9kzeZxfXAIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9996CD1AD30
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172906955361.5958.4811645644998182977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760ea6c4ea2e8c95445f20487b0ef896d8d7bda7a0b156a7dd65ebb9e4ee2239
Date: Wed, 16 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729069553
