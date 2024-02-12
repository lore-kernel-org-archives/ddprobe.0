Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215871E482
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707742097; cv=none; b=SCg1RsozHgawAkCmz2JmdYvCCsr9V3UVyx+DgmiUl4yI6RIy4G+BFeTK4qIOTGx9w078d3FFOUnJC77i7n48OTjG5PyMuUJDe/U3Q6/sBUY/m5F/UGjyhGIe4UsgRBlyRceY/8Ol0zTEi6GEdvPmBHoRJ1PauwGFKf4q1wGPWPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707742097; c=relaxed/simple;
	bh=tF+MYiIx13mmAbcczsEsmNmEJDpED+bGx7F/wfJAJds=;
	h=To:Subject:From:Message-Id:Date; b=hBfQL5f3k5syoJO/RGgMqdCw9gqcex/ysIPeLNSBC0VPAKnCtYTKWsczbqzJxRg5p3og+ywuQpbiTbMQHmEMcV+XyVwvjuJWljgDLSmeNz0d6WhEENbaJJ3cisOVaDrCsrxTEvKVfvAdt043kdF1e5Oj2OxORciux+lWdD6Hws0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBcGHW5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBcGHW5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82373C433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707742096;
	bh=tF+MYiIx13mmAbcczsEsmNmEJDpED+bGx7F/wfJAJds=;
	h=To:Subject:From:Date:From;
	b=GBcGHW5m93r5tWXe8ti7E3+XWVcZmS7zEvArq4A9BsV0+afVMQSw9yZFoCFMEoeYZ
	 /PPq016M/gqY4E7KhjFCWkfv6je2rI5sM60pJ3A2CDqldxpqlLumTUE6UA6+e4EjSV
	 LEONEg2zzNoPIA1aC5V0SRoz/2GPVsWdiTSAy2IXGuWakE2eBXzON0IBpSP5ZijjCz
	 +G4bzzc916IKerv/QfxI789Fzqe7NE98yrucqs+RN8/lPHlWgaW1K6NQExszn0ze6H
	 9DOOXMiruqXxHj+TUOCpEmUwp2/3SrWps7/MS2mVDmMAzjs/22c1fd896MJVjlobCz
	 esl+A/zWjeodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65487C48297
	for <ddprobe@lists.linux.dev>; Mon, 12 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170774209640.2622.13480777334713421464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1b4b8d22c31e3637e663d8cdd55c1fc4088e6f0a29877d55166b9ba7cdd176
Date: Mon, 12 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707742096
