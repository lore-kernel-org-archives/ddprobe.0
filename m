Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2BB4C97
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733895954; cv=none; b=oajtluIhoSSdL+Vqt5CMRHDIlFJacElhZAODxI5O8Pv46KKzebM44ythd3Kf67TJ1PT7dERvlscXlKNaf5mfG5iY11VCPrHIdexwfFnuCrMv3ExQusAh11RCKP3NfEvSqGWCvSXusOtKowvusBczL/SWEo4QdIsKGbGm5micqC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733895954; c=relaxed/simple;
	bh=CvC9eSByCHQiO4a70TD3rqIL6f2QmL7v32nmyqdK9NI=;
	h=To:Subject:From:Message-Id:Date; b=H02bKEXo8mikC5ztBGTn8xhe2Py3SSHLB/3p5MGwFl2RHd1APBTvJ6gIONH2aJzTGrlM8gcAlIhEmL5iYmKq+Rja6ltLVQM+7MAehiQ1C3lfWLB0XciyXb02BVcN/WdT9PH05Ko87/1xv+Qw0x7Iq+lf75vMoV372/ezQ+0usKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZE4ozzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZE4ozzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF589C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733895953;
	bh=CvC9eSByCHQiO4a70TD3rqIL6f2QmL7v32nmyqdK9NI=;
	h=To:Subject:From:Date:From;
	b=jZE4ozzDi2AbGPVvA5+6X6mWPxSNn+K5iZnXHRAiTuhzQlTjBsMlVXdj/r4TFtKTM
	 D19FWeW8N8kKouRNgyZYk1B8Ag6HNSEN9WJ66LxZCd14eunNxdCWIidiVKqaIRU0UA
	 T97VNAaRNCMFxA7UvhprTg+P5LRRoefWTrSFK15te181dXTgA9XuQt8SIPtqpePMOj
	 uAp3Td/i7zLIH+oX+ihgWanKr6K/gkmdPrDbfb7zOuWiB1bDVFsP/teTMv9617pydw
	 GQNkT500sw0ZzaqLxTs02kn/KVxOeafZnLQJP2J4ZMDm3xkNKuTKKyucHIHM4Wkb2L
	 5GV+TDuglVUTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9765DE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173389595360.6560.10059721648589708066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f9d94a06b5cdc5e290ce28ceedea4ee859cd5b35bf1f60840f226b58ea4c279
Date: Wed, 11 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733895953
