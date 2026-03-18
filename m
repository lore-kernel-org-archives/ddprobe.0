Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6AF03E1CFB
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773851694; cv=none; b=sfAlrPMM0mqoQ+211GtutG0jUMye17jadghos7Qn2Ue2Wo4V6pv3adrPEKi9+mBG7GxZUsjMZqsgEbce+ulHmC3nfwonpHmN7belNJzB4crYjkuP5gWkdaMShlXUBtz2O//TTqq8tv84xpoCb+3W83ObtlVwgQ3hW4ec57FEnn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773851694; c=relaxed/simple;
	bh=D7NvyWLvyfe2YocBLRtAI1trsYS1nghWRy/qi5VNKEg=;
	h=To:Subject:From:Message-Id:Date; b=chVX2BQzx9dNwDi10FwOv2RfHd1APmzUFXPHMqrXSdrdOJmq1F5X25RupokMAVpbV7hBzzCRzpyOiXJ9GpRwB9Znpxy8Avl3f7hKT90DRc7W/ns44hJofiJnmf2UFLa3Zt2jxNY2iMO8RsykcOSNcHngnHJFMhDXBv/gUV7M4d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfiE4Gdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfiE4Gdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2B3C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773851693;
	bh=D7NvyWLvyfe2YocBLRtAI1trsYS1nghWRy/qi5VNKEg=;
	h=To:Subject:From:Date:From;
	b=YfiE4Gdd2BKmCRh1pHv0tLd0mj/4cXYh6yR/hw7hHOmOKycLom5LVcgCQQYN/agUV
	 e8g1183Gr2NIEyniz/DMt5iiH20feB81NJS+P+2IPpkfq2fKDcvcJb4AGWfGGuvHWS
	 AvTCneaJxIH18iA4r2nEgy1D053bmbpKRVcPSVb9EaT+bXekxGnek0rXgVh9GK4tvC
	 GEqVbQRv45d8OuWsmhsNkjLUv+Q++AiCDBsZLVfL8u5ftkkmAgnTvuX4eHn7nQm6tr
	 S5LPhc8VnHJqohUmDW66WnQzrF9UKxAHRqQkRAOQEs/ukOdAoy3iAtyioyL56hv364
	 mgoR68pNFYoMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A110775E1
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385169358.7657.14309312320452996344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7ea4c98d8cc4b4d8700c03a3cbc98e14e4915706cb37e028ac727bfd7fd175
Date: Wed, 18 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773851693
