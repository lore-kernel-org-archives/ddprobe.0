Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0851805E
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745812794; cv=none; b=bw0h2SlT7+CAhFtriHuVNAiQs8Dzv6PsQeiacIholanhGp8oY+hcLLoIoMq4DpASZP/9L8F4VJHyoDU+jxt1QJ0bMm9SWbg2qwFzis3Y/hgCF94G1otld+gE21hq6Ch5/F8oFix2G6aA6P5tKKbuJ6A00UN8I0gmKsvIsElfHPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745812794; c=relaxed/simple;
	bh=+EYsyx0YkwL200c2zAKcw+XW98zk9radbqm3RedDtdw=;
	h=To:Subject:From:Message-Id:Date; b=sWsfpil6Zy6n5o6MhgWbqR/RKfNBONTNK1+hA9kUD9RAdTNiJkOtw1kg0NUwhJoKf8xc0EBm0L0rllCd5jvtK8rUgVVqm5JeFU6mo2BCClQN/hGpP7nBY1xd8Egpv8k3M150XTSMFFYyUbxaDjg4FdgxPdFvSYZPAbkiRiThQyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAFDioet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAFDioet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A070EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745812793;
	bh=+EYsyx0YkwL200c2zAKcw+XW98zk9radbqm3RedDtdw=;
	h=To:Subject:From:Date:From;
	b=tAFDioetcwJCPdMFx4+eKZ0Q/0vqzl59lpsTHwA94TZBw6k9vQ1jBJvH/ycL/wkJ9
	 2OCslO5agVdeoq3PJ4mV5f2ZJrHqqWjieo7Qo91do1QRil6uRfFUySdVuEYmClObF4
	 nCd/1j61XqddF1kZ/liqe7g0hF/rgs1ywHLC4b0mgLjoG1v/jodrFYqGFJ1P90LkUj
	 4sQNBJ2Xq5/KTiZAMM6zG8or+p70oVohR4xJnAhkOno12Sbo4lAtuxZMWy5wV1PdFF
	 hk8HNvtTTQyEnsQLFGSxm0S8jQxMTEIMDQBV94YC6CY7Nr81zoZrE96F59VoFeQMXY
	 goDh1LuT9wE2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D0C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581279357.869.2450364882432131459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027fdb173838c4df0bb5f0698cb542602c9a1c5e64df5c70ed32b603a4002022
Date: Mon, 28 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745812793
