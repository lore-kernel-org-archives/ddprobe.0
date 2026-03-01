Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2979D19EED3
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772364294; cv=none; b=TZqOZROxGErwsnCa0XcYLVrTIU/hmOacspCEPPqSHbZGRmaqO85CT4+yGmZWVBQet0dDrspNVi4N9nBRMNgtf3nKltcl0rs+AmbW4gVJ/gsjbOaPDWg7DFn+S1ETOrTQ7aUnGXlajfhtWykX/lXi9tiNP+5BigLmgS1OGohYVyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772364294; c=relaxed/simple;
	bh=B4gN9M6YX6tPzf2SBAhtY+lW+irJOAQ8tcExGzhJ8Os=;
	h=To:Subject:From:Message-Id:Date; b=mxLoC8r3t/VkFWhptahB24je6ilVqBSqUWz4x5O3QQ/h9K1gghIR+R1486JLkwrD567kHEeYX8Nv/k4dkVCIE4UwHlcYqfyRVb17014MWbuoWUDkqioh1FzjJyMB0GZFojnkV5vWB9aLLPD5I79Ioc8CFqFAg5OBhZ7kYGMx6PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+tOfsoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+tOfsoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8906C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772364293;
	bh=B4gN9M6YX6tPzf2SBAhtY+lW+irJOAQ8tcExGzhJ8Os=;
	h=To:Subject:From:Date:From;
	b=s+tOfsoV6SrWOGjxJUoaXP3lkxBclF/X90t2ibZhdMN2yvW6exTJ7TPJBpbnIZ13K
	 9qPiH+eruHsMhnYZw9z6MZmzL25nzOoc2lQjz+dnz3J+L6yrAk294kQ6lXNWQBF48d
	 G3LGL9/x6w3X8u835HZWNCrOZnyz9wKM4ZTETYnpjIi9Jq9+s8mvqCC3392gOyYYK3
	 9bsIz7WxzqkYpAtqSTHiTCUdVaNF++ACnvWsffyWmK0ZKW28DTGrS65ZioI4X2jCyp
	 n0KmBeBeq8DfRzo/qIggcy4z+AsO9WmaTwl5ViiRYwlvmYGLXvITYICIA0+TgE8FiW
	 VBtMhSPiDQwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2638FD0060
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236429362.23955.185784276512085037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1d969802d9f93b9995a6ea1784751243a2f003d01aa88daf9413eab5cd39ce
Date: Sun, 01 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772364293
