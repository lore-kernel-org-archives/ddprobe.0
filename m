Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA94F360
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743307793; cv=none; b=c79pL2SOfx81v4djFC0TLV8yIeRVHAtZDuoApg5GPTH3dzOv/nq0RxSrTGbPbDdg0Cvqm9Cd4jKjDB93HoeZjzn4YpvM4HMHrer4imX9m+AgFW07UC1UUtfLJQx5OayTjZOA6L1hn0vZgxwKmOeHWmBOTuto0S+i4O1ItpfRtE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743307793; c=relaxed/simple;
	bh=GPHPZDeIvhVtyDwTCn7TmAOU5UwsdUhug4biIrdH3MQ=;
	h=To:Subject:From:Message-Id:Date; b=MH7IiVN0kVZ+HDM+55YvLRt4UBj8flmdHL4fCRf2crT+c8iLVoJYTZFx0PLM/a7stPSW5r4yUIDqr11E386UTMMbq0hqvhzvDyc1EmN7Eds2dCfuCMOV44OFREL5dAToIefD8309KnHuDL7IdyaSM+PqHZ6iS5oNjqto4/NtubE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqA1D1U/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqA1D1U/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C16C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743307793;
	bh=GPHPZDeIvhVtyDwTCn7TmAOU5UwsdUhug4biIrdH3MQ=;
	h=To:Subject:From:Date:From;
	b=bqA1D1U/VMk3cFXghxFP2aeK0ZWHZGemsfs5HANoNw2n4QBwoxvTCUOfWPiJlS4ix
	 SABKShTSQMRwXvpbhhzFSdsPFjObteSPIR3QowTAp+QvUhwuEtZ908lUUqQqBr1cph
	 njfL1UyAY5l3xIvcarvSsT2fm/hRVXbwRl2Cp8fmiHVlypajBRtQoRedBU8bPTzxzK
	 5LUrbU9p+8ffWhkVGDE0wuQpRhlRc5CctDsHoioLdVy2hLhSrUZzSDXxEfUfn5d8p4
	 6ltMM4EVKVzFX+/ZRD585WnQfOy5EVrRHAGWgmAipwVNM/cv1MtsbkQwgaiHUupX+s
	 1t04HfdDRzoXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A2FC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330779359.23462.17901835783354138349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 895bc9e3e9457060aaa08ffa7d934c77062f5c6aecbf570e3182a5ab50c6cb71
Date: Sun, 30 Mar 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743307793
