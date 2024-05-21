Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E25317BB5
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 16:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716307403; cv=none; b=hu2bRGpqoPsG0hSZitpyNH9uln2SifaGQWJ/1jXFEr8f4IvlSz1fh0Oe24r3catC2UreMcccvNSl8fEbZlWF7ZTzDQ+BqmS6+J+89paa/90o/O4Dtj3djMlKJ41N28G+sYPNPIwa8S4DEgJmvJInzCzB9x+tgVPB1c9KNXB4krM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716307403; c=relaxed/simple;
	bh=tu2eFYXTLw6808596hfhZBE9OA5ZX31cXqNXeuGwWBA=;
	h=To:Subject:From:Message-Id:Date; b=kFx14bhpd/nmo+v6PCMkDsXz9V9HerYO/SgQCyEgplxLB/QAy60yEiXssetf1i/dmW/QHbA+3v5RWo4jdFDmZAH4zWMHR1embtz8HGHfGy9zR7AtUPXL5BhsKg5elQX1FHbDmaJ7XJnWTWUSrPWMnklERrzN4w1ShNrOe6uz740=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbKOmJbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbKOmJbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B70C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 16:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716307402;
	bh=tu2eFYXTLw6808596hfhZBE9OA5ZX31cXqNXeuGwWBA=;
	h=To:Subject:From:Date:From;
	b=NbKOmJbo+kpMFzSuWZ7ffl6VXJMleXcOJk5Q0J2vf2RYkBmFk4TDCklEnw8M/lg6K
	 1R0SktV0bysjCUGS1miSbeAyJoZn/RWxKNggz9maMUCVSej8A545S+HgR2oTt61PtK
	 zftxQSTKYij2xfQwPwpb5iHFnyAues0Wz34kNGsb0GfIxiTt9ATAx+lht1eaSBNnPm
	 cojwUPne6mExikloY2PWPdHwQd0pNjDp5aeyBoI8fnOkFSWXY5Th+H2hhuHEXJVoYy
	 PWAqxk1DTdguIPNGrkUV/EwYrk8KUhdOO29945xT8Rqx/hSIr6MAYT+xpmgI81+ugv
	 gyP0VcVE0AzMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C356DC25B78
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 16:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171630740279.10087.7711396914775079083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf362800048e4f7677dae638d06167bee6327f78b372bac547aec723cdf954cf
Date: Tue, 21 May 2024 16:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716307402
