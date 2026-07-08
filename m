Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E5143C7BC
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783513114; cv=none; b=EmdkOs0ryVGwafa4Zufj8/ojcT3JLKupOLTwOn5bR+1yp/3M/CpDqOk/CLda/WOX4ZLtedE1yeuUvM3/pIAITXR2945R7iqpL2vH4go0f0t5KCeLx293FBTcGEbU5vOd+bAj5ABSrcGDVxuNor+YHrJTbhiWWldzEiYl0IOhut0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783513114; c=relaxed/simple;
	bh=fH/OlDgHpwFFOPTOwPwVHpuHxXRbElr3VnZoy3o16Qc=;
	h=To:Subject:From:Message-Id:Date; b=oGnIBGogbOL8MRW0752zTuhC35dttDB0ehx+iIbHErZVUPTvTXKNBW+/vJ68x+rmS+1QYIz2Uwf40qpVTCo1QOP79XTKum5LmuSdVuJFqQQa4XAKh2jl6H66avjluankCmkXSDXoeDyHg6SaTre+fiJxJGVgVn/zdsWqMsmNpgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6Ql16n8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6Ql16n8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4619C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783513113;
	bh=fH/OlDgHpwFFOPTOwPwVHpuHxXRbElr3VnZoy3o16Qc=;
	h=To:Subject:From:Date:From;
	b=J6Ql16n8eIlq0Ro9rs4rJi2TwmBTQncBuq//2VCUkJOFCE67Z2ZA+097f09CoDSUK
	 IdN3T2ZAFQuMDpDXCMN+4/rTU0MsnFD0gl7Ynvqt9C+fQsL4mEBBnAq5RJmLEcEy1X
	 ycA6n4/kIeytpUBpRafN7oqWmShhX1L/8Nxl8WuSUifBUIDm3bVm0ygXd97UTpriWr
	 0qurG/LThZYeeJ6pHWhqnN5ziyo2BWK1lDt+Z8eMbU2HUBia8Kgxt4cgSe78ozgBB8
	 xDTuOYY0yT2IQMKrTHCDRr8AHmeKBQKIyTYVN/cA2j6aI8sZBoN3I7/8JQ5K980fRv
	 psiw/teQ7//DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF18EC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351311370.16791.6948687843052440264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ae64a0a46dbc0d237a2585408562866066b85c9d1227d9633fbe578e66bf2f
Date: Wed, 08 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783513113
