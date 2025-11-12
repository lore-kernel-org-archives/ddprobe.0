Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1BC726C384
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762967394; cv=none; b=FFfm1OrdOy3CK3Mp75W4eiQ4trGZ8d2wTkHLQ4DuInqWV/8iAQnqdVADV1AdNmnTt0JUaoqVoxHOkDu0fCZHEF3u6iY509ly1hpa1PhDeDFAkwgHXx80I/a3WymT33hYpTANUmcMBayGAl7OQbYdX686xwMJkhVvbs0kQXbnNdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762967394; c=relaxed/simple;
	bh=lGkNgR2FJYkJhZla6StvtBMWaj0fCO55LXAQyHWUjjM=;
	h=To:Subject:From:Message-Id:Date; b=YnmLJbhL15vzbzSxhQ7Og5teJTpfHMBWGCk/xGX5tZbT9qAW60nBG+XwSRRclCC0zTiMY5XVeTWJPqwtkUKamh1+x0F/ycCVG3Gk6N9SfnCNAfeU37eqGUYsDAXnFLPxFwT1zLZLosCqrM52BuHHIuN9j03FDTzd/KnkwIUnDsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4AhPUXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4AhPUXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AE03C19421
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762967393;
	bh=lGkNgR2FJYkJhZla6StvtBMWaj0fCO55LXAQyHWUjjM=;
	h=To:Subject:From:Date:From;
	b=A4AhPUXjlv/YL7FsI4HqZX0746MT0fN+5ri/zLilMTLrEYo34xFSRgPH34N075wUO
	 Ts9ZBUc7vE1tK3/VbE3k1UBx+b2Rf50QlWJudBKOzt5/bZoSwGs1KWQ3P5BTnPDQRi
	 LXpguAmL13zU0gwRtz4yRE4jfkPtgny6aBm/ridnMApGZ/UuOUvr/pG4BAcKgtKiFm
	 bntR1fils5t0OPVIuuCc1iXfsKhdaY3yxqyLiLRPyc+UB7Zqlm/a04sXZXRnqGGHm3
	 W/NvIEhqy5iC/Xa3ur5KAAfQ6F85bbf+hfkRWeKcqkxGbmEPXJcfdE5wns7CjrCvSF
	 B11Xv3FdHRp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F734CD3429
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296739357.5357.12316331833364560645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad9e0cd12fd4368cfd1490bddbbd3419066d6ad0c46e55c821837803b3848f4
Date: Wed, 12 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762967393
