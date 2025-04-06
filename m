Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551A91EF1D
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743907795; cv=none; b=oYV+wsqHcRx7NrrWvXX6E78H1ih74W7T5JVlnMv3jONmC1r0wx8K27YF2LRc4JIB/PAlfgxayFSPOVmVp47w1V1QxjrDmf2rksv4TnaiYsCynAtPd3OmugOFWEQOMCEZbd1xcMIRg7tuJz4GcNweM27cAFS5n+fhRdYmyMcEgko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743907795; c=relaxed/simple;
	bh=VWnNrY1ljTZxYvsbX/DM5iWEBhHaU24aj8V1IxBo87s=;
	h=To:Subject:From:Message-Id:Date; b=K3/cZ39p2t4cyGPc2mry39Har7eu2flcPuhErguc8PR51mLoQ5xf4A/l7K0CiL+nSLjZrF82XEAbiitBqI2TceV+/RQc58hdi1EFLL4mp7bwBVkwhDXLogiAuw2riwhqgOvv0AYrF44A2/YgbVpy4FNyb3rl4aCH0kMCyTccxYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJ+jhjYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJ+jhjYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB08C4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743907793;
	bh=VWnNrY1ljTZxYvsbX/DM5iWEBhHaU24aj8V1IxBo87s=;
	h=To:Subject:From:Date:From;
	b=eJ+jhjYXeD2m/BvbnXHcWybab35aj8AlXeLY/nhfTyc1Fpf1C+bwBWUmODAGLECDm
	 7Uri9am3eLsiARXqJ8BgoqD5MM6/dPB6YkfAFVTaxf7N8p0PhTbjEOlawXIKFk1SCr
	 Qd8BQCPlylyTfmEBPDfNkmuVStOYydkUDKETVveCjMF2JHkSzJ3Kk+aZPUF4351R9n
	 ObAvc8D2RR/1swXihAYP0WZAbRMQ1E3GSufhCTr33PcWCaZBc69SgJHZ2uBP6rtEAH
	 GXzY8R1KKU9+lLgUYwBxbIKr5Y3oW0H08eDUywCmXKFNNNXRRy2+p545Z80YdPRQCD
	 w3d2QvFyBQ4Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6008C36010
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174390779362.27713.6591059643705077669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab712b97334e1d45f86646ce504d8b01264f51e8baea0d987560355db513d5c
Date: Sun, 06 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743907793
