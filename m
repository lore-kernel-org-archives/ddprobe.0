Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23633D2FB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766129034; cv=none; b=SYcs/8b9XZOMOWTi755byy/3NwD03rIZpinX5lMSc2xaKBeA/u2iB6aQNXuVzt1EeuXI0apOPVdIgf/fQU2J2gqzCjKneqm8CP/X4ThaKIDnaQIxZVUXgdVrR4o0M+F93y268r0tLCONGC2inH5vOY1To80tQSZIhEo4S+lyax8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766129034; c=relaxed/simple;
	bh=bficiJ8hr8xVTH9aTPIiG/2rpyITDBB8P6QORc3X5N8=;
	h=To:Subject:From:Message-Id:Date; b=CLVwMjukUUMIrLmef05smRlAMRG6iWkS/rsYeTFVNxrN/zzrFdXQS+cJUs/wbOf/6bGKS7lLzA7hAqdlnKryz1qAK8VL+ZH9OOGC2S3uC31HH6arPuBAu1nqEcVMwz9NNcdwhkyUII7wTetl1ryrr7drUIFM0bFTys1nHBlRtxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeESIaDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeESIaDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A70C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766129033;
	bh=bficiJ8hr8xVTH9aTPIiG/2rpyITDBB8P6QORc3X5N8=;
	h=To:Subject:From:Date:From;
	b=WeESIaDRrmI0RwGlgFHSybmVKdWvgVm0/z4Nd/e6KJAjVjHT0r/UhyV6QCuFTrDU+
	 RWQD9txyH/Ikg0MirIdRnQAdKql7jioXwXr9vJXpd4G4q4uXxlO0kR2+xxyn6GNlk+
	 oFKyW2g1g1n6jfXcMZOg04DJ2tjhEkSUbgEPcqV3YlqAD2KDWUDeBmc4GBSpml9wIU
	 zRhfLkMViq9zK8Ixf1kOitWd25es9ymd7blQ4J6NCKVMknodBFT9T9pjKjlrhMWmXi
	 G6PAGRjW1nRwk/XtVJBO0HbpOmFvWIayUXw0+9zp96n/0rGuqGwoOXY5xFyvag1IqI
	 Clf874EAjb8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9469AD74960
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612903358.10669.8984499505859416456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b51572e462eb579cd5678f477f15f73bbcd444218b851e30f5a6180451c903
Date: Fri, 19 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766129033
