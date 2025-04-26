Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1D725D218
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745686194; cv=none; b=AiNQUOi1LcoJDfHaDBrUxTGcqleObWqRXi+OkO/6HlNBzJKBSQNS4zZL3ruQmMQKbRfQo9yHyUIuPy2OSazCi4E5i2bMmPmEZH30LaQxSAMDAK/gGjOz7dPyQPLQdCacb0vHrpAqjSvG2jLLBeV+cl6t5JINx0N8qYfF92kyLUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745686194; c=relaxed/simple;
	bh=3Tt8SfQBmmcKuuzzjeTdJAnL/zo57rSGuubzAZmt7k0=;
	h=To:Subject:From:Message-Id:Date; b=U4/vD6pFFX6OBQyjJS/WyAfHczuzGBzYtcQP1aiMgq7c9JSyYcXvq/h6SPjzBOLwkFnbmVhhMHBQYpdqDqZf37ZFITE6/kA05cZ/OWHd0di24jj0eTJueXA53L3zJCfvGeqMQKkdgpspENudH4BjixWIhnBXb5Ijt1x6Ss91zAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP+RG1Hw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP+RG1Hw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8629C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745686193;
	bh=3Tt8SfQBmmcKuuzzjeTdJAnL/zo57rSGuubzAZmt7k0=;
	h=To:Subject:From:Date:From;
	b=oP+RG1HwxC7hpuJK2jDe7KcuTXFWn8vZMj5sySluazufVh7ImOcbKmnmHD2fSJEMx
	 Ilvdar3wZf+xvcZps7BMh2iBJ33J8T8IcWVaEsjzuU2CCW5apOc9VtCNMR5HKXT2GS
	 VANPbA1gMwmLAbd8SeT4RAKxnwMyy50RxAweNWGaAeta1H4MIcjyMjukgRVa7YeOHt
	 yxmoyVdba6YL7SjdTCMhNIrpS8nR3Hkf/ZzkU6+ZAnhV6P7vS3heBcsJILE9IY70AP
	 R/qJazmMs/C5Y+y1VG4opcZO7PdslLF4Ek0sui9oMSmCxLPLBCM/e9CtvfW9+3PYmT
	 hJtmFYx+Eu+0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E77C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568619357.31154.7934618091305524323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5bb0261d624708facc5fdcef310ead552f44c5d9af2274f3d603954287a9c19
Date: Sat, 26 Apr 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745686193
