Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C03512A178
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707329298; cv=none; b=dkdBArW9LWrYwUbw8v1e7pom2ND7NjMeOwCx91QA9ka7UnSuLUE9ZsfGo9qfgR7NLyt6jq7U0fIzHCfZb1hLliM5/9bQ3RtTNEnqoLUSyTXtyJ5o95GA8HbdFWbAUgo5dDTZqrHwHzqAqvcusUHnXbfvnIEPULchaZtf5BUpU9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707329298; c=relaxed/simple;
	bh=CI8jqqcrnoskS6a4YZq0cQimZEKN68FvuoXYWplSZGw=;
	h=To:Subject:From:Message-Id:Date; b=fCv/yfnYof89CNo+hCfCi1m9pQJ24DBD04D/P+b4osXfx205wW/f94Tyw11+b5fR5MZ+BnEt4DgZID5/RGu42Xjaa/J9D2Palkgry/RDoJyh078njC2921+83nDewWVF2qTK8wweeoNAkOI3cLE3WW9YRNk414OXUUx2uXu317o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IW+NtI+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IW+NtI+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A9CC433F1
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707329296;
	bh=CI8jqqcrnoskS6a4YZq0cQimZEKN68FvuoXYWplSZGw=;
	h=To:Subject:From:Date:From;
	b=IW+NtI+ALsPoGexLOV4/Pe/sYk8qsTka6/G0lg6xPf/6wo5yv3TqqctG1fNUebs4Q
	 ME84MNc23TJ1AhxImITvyroSXeIMtDyqqyYvLb/065jItxPwXQW2l5h9IBo82DagCd
	 5Ta3Hd96eXTcaa1qzvo/UNUGPRho4qeODTzK2zla43xc94lKbwpSi0hxSLc2B7t306
	 4ntXGLorVnyYPdqTz8zhWV4c5Alno+MLrpf4WgnGpwJ4w5xM1wLLg1cxES7RHNKX/V
	 DQtUurd+iCPb/xDjBxJ5cN8HwhrOpchptjETZv8vm9MKDP7PUSmLyNAHVYMP8p5uso
	 nz/hLJsNunWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C90C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170732929638.11258.11268830993008827896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb0f2cc9c9c70e471e86b5aedf387028cc8256c77ff476073bcdee5374cac1a
Date: Wed, 07 Feb 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707329296
