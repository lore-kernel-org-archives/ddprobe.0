Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C1B23C8C5
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760321994; cv=none; b=aMHVRwhxoDkIgBTR0xHBa8kagNfV5tesMG0TRqQOSYHAIgimMQlls+0XBAYz2v1GOP/VJYWM503jr0+/XuZsHq+etu+trIKWkocPUi6SEM7EXGH16soa3QNB1UhzBfttXRurapa7bfhkPG5AelKdhhSY5n1cd3+Utqh864o6Tio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760321994; c=relaxed/simple;
	bh=60XclYikgdDEU2zYLHGpxJulwXWSfdGxlJMrC+DU/Qw=;
	h=To:Subject:From:Message-Id:Date; b=ZbE7VmQtpMmQ/r9zJmBIXnSvmLLclWzY7IE1LI4/LpbGNLAeKR+uA7FjJi2Zn/FaVr979z5GcrC/fl9vT+HIxxz5+lM4CxtIXOdhe9ovohbKmXRlzCg5+jHFOiyrOk6AuA/JsT5fw+kzY5lS+kudULmQfAjx/ffKqLM14q/xQe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuptzYAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuptzYAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E359C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760321993;
	bh=60XclYikgdDEU2zYLHGpxJulwXWSfdGxlJMrC+DU/Qw=;
	h=To:Subject:From:Date:From;
	b=FuptzYAZIQkoClbt73yZ3xw+CRtGsGPZw98AofpeFdZGRfV/jxO6z3UXKj5zpUiUp
	 iibp6uZhHsvsexErjTsInETPvVPU+m4j5yUveTRygYw8YZtGV4NcsW1MIN/oIrldRG
	 MitqeXGr/xyo6xt6HDYamsv0RHo9vYWnKazi/C3hrf8ABjoTRiRhDgOQfoj6ajZkCd
	 7Jen8wiM/uGiMM36Zm6kD+vKIeD/KT4uzln6TdiS7of7TWQYp2IRqVXDKBO0agyO+8
	 EXxG1J6f1Pz9HRQLIkE31m6I6silqpPm1Wr6qDlvOzoDrYlcMyjuypct4zHww4j+VD
	 Bv06qAbRoRIsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD69CCD187
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176032199358.20628.1021663430045460806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3200883d2e34a485e2157f7da2abc2b0b879d4ded702a5ba6d778cb45477e189
Date: Mon, 13 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760321993
