Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6042749CB
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757141394; cv=none; b=R8WgIa0F0r4VS8KIwUaiKWPLBm+HRVJcW0KfN74zBF+ctIZWECyC8M32ze/1K40ZuePeDMT2dhA61fD9axQpxp5pyZTvsxo/QjDJSpmZJXm78iW10vfv5IRAOru9aJcK4y8sPsk9HtW0d5DLpyvta1keHZoyT5VSSP2kidooVko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757141394; c=relaxed/simple;
	bh=2vtUHGuF4jhkAh0B9IlcrGC0NvU1SKEYhELpRq79b/w=;
	h=To:Subject:From:Message-Id:Date; b=PVgrRXxLFAtnBzw0YHFmd+nRTvv8w1KbVq4VDgXwtnVDoRKJ9ZpxaWnyLUA9KYV7yVvUlbeS3KmWDrkNivDf0xyL68oUw6Qed3HDiSH2GMjiTZJzUKZe0VMesG4o2+6QWNlYjegXL3CjgavSFIHg9CD+0qPcc+/+/0l5qxfPzwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjnLfr89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjnLfr89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F21C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757141393;
	bh=2vtUHGuF4jhkAh0B9IlcrGC0NvU1SKEYhELpRq79b/w=;
	h=To:Subject:From:Date:From;
	b=fjnLfr896uwFQqQPsRxc6usK6Pcoe0kAbBmMnN8ZJJaoHK2N7mfwbBtcVCXBOvRtz
	 PfcD+iagPT7muGKCopQ2lc8MHvgSSPGcp+z+btHoQTA36iHclA+j1hANzDT63lRyBd
	 z/AnTW+Rax5lKc3W+8YDgUrLEHHTACS20HcJq+Lu1Ijmk8rHN/ydhM3NjdW/q7UAwX
	 j9oLQglnfNLJF5ytMVny8knUkJAXf8c43gRTKcwBZcyN6HhsmONJzrLU11/7Z30N5k
	 LQ6gbQQNLAWfCVS9phS+MeN+jBESLVtEOT7spAHHQFPeKqSVXdRVSYML7kG0AaI1dW
	 1Vk+LIuN0DBcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58DCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714139357.16847.2179350874153523730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c94dd6bc3e2252cb00351382a158fb83f6898ea9a1a559947399b7f838f6a3c
Date: Sat, 06 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757141393
