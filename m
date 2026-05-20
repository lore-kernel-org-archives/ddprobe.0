Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D791344DB5
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779294634; cv=none; b=jSkH+KVdX8ltFQnT2D5pmYr4Ya8NlVaEuUBZbn3J5r/gle1wJdOrg4ISgRht72Wo4p9i0iVUhDK2NJEvYGwh6NmI1FHEckjRGl0Lg3qGZCUnodPiqfm83VTB1/RvRT/SvCzNrstvFxHlnBxueskWt/cboHY3dAwS92bHbXooKsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779294634; c=relaxed/simple;
	bh=WtPcisDF5tKjzmQm7/+ddEGLPiBnh+R0XQtgILGzfsw=;
	h=To:Subject:From:Message-Id:Date; b=oJtH85k0U4WjkYvlR71FpVDcgCkBt/NgsmQ8XAuUbp8SnewJ6t3JlYT7/mWUNd1o2t0oMQEDnEGnJAQzCYSP9/FQvVqBS7RBKT8EF4t51gcuYLFEO5vdDPIPY2rlunBYuIQK0qi6ZPxh2ILuDiHhHlNjs/c3aMqaFlXvf41kJzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPKyC0VG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPKyC0VG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5415C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779294633;
	bh=WtPcisDF5tKjzmQm7/+ddEGLPiBnh+R0XQtgILGzfsw=;
	h=To:Subject:From:Date:From;
	b=NPKyC0VGMVyHj6cVcLMY8NGwqQ3dTIgzzUITvttDw3yVbAFL9JHNbzdAED4eMg2rD
	 dcFHbRPc5GCf5o7/a6mGX0arh5favafslO7Gk+SJdEBLBK1NTebHbveC2kYfHifkKI
	 VLtROghC/CvMxpGOxOElxBin3TF0EmrR87VmNd6J4QNP4NOfRkdtv1cfkh5/PZgh1C
	 bWkdwmy7aLl6N4LBm5POqM+sYBywUiTrrWxFzRGAekiMtSSIyqKiuFpWHMpRn6Yi4m
	 ud2elviNqEFKU0iDCfl/GT9JF4KbBiVlXwFfgm2q8OpvMvO/uED48FfO/BTdzw2NEp
	 R3kncP0G5rxaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7DBCD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929463375.32178.7440538454765779925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ad574a70b624146415f268b4ee57f8ce5364d306386dcd8f6e8bbe6eef1cad
Date: Wed, 20 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779294633
