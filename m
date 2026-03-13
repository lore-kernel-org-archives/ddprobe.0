Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB4E227B94
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773394494; cv=none; b=lAsr4haUvaBQ3jrjRNobvoUTgZiyDdrWIeeKAb7azeRHu97ML0xHLjmDgOsf452UaqdcB0JT8RdzZv8v5BU10qDX4bRRGyxE+TwSOSRYWlZSpBrIfqySjWmle1+MorvZ2B5DJkWlWCpgemBh+U89h/mg23NfOdaBp5EBkBW+So0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773394494; c=relaxed/simple;
	bh=Di5zVsuyyCgRCjiGUqHiJaRNctEpghttmr3iqrFwBAY=;
	h=To:Subject:From:Message-Id:Date; b=u1CK87km+vihoDHOLhE/yFTXb9QVl64tfPQYW7nnWyQMBxeqHzmeEXqDq20q+ThxaoJOiQuy8CFxhGdijiBltalMfbU8+9H69DzASyjueHa3WL+6l5UEqukZWhPRe/zcPSLIEd9nMWsZ/eAEfcDIG5H358YSkOHyBYyu5pwpOg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPMX2QCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPMX2QCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F70FC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773394493;
	bh=Di5zVsuyyCgRCjiGUqHiJaRNctEpghttmr3iqrFwBAY=;
	h=To:Subject:From:Date:From;
	b=lPMX2QCZzHmSwum7ogDOCbH74U3Y5PUrkd46D2w+K5XRENcwuOvi41UE2/1SKYQUN
	 Xg5jw1q2eq2MGJ0ISscDqgUKBsUfadkng+mlYC37jbmnKWtwimg5pTzjw7PLHiLlKn
	 I020tN0gGHAB35Qclun2nLX7AJNqGpxNXPqNJcC2Y1pMG41b6JZDJ2j6kfzBE4Sl3f
	 /ry0KMX3HTNcRFd0zC0Gv61Bd64D3qQINA9KeWmiVTLITIwbhLDLb1ALmJA4aeqtf+
	 L4F8gQluUL2JbSFynXOs7Pn9mKs4sBWdaYTeYSKIYEd8WboYJOq4ULoKPVLTvs9jTy
	 3zlmC4UJuapCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B6105F782
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339449358.3436.8430851799239801027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24d6eb345caeee80b0cc4c75ff1e6d4f9d22dfed0e0cb9b7739d6c1ba72696f
Date: Fri, 13 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773394493
