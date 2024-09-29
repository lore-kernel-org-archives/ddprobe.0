Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D87B644
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727581554; cv=none; b=cLhjGgY94GrjIO5DxsvhxBndJxhD7rOkJDAqpJLNFOEwl6lU6hmpydSyLNDDxfV5iF4ISkkPUG/FvYLfHJNDfBU+H1uMr/84lgHpwv6eRcK+1U9pNAFYBi4rbe8n2r/KSV+9GvfpAeIAMoLVTpG6uTz6gE3g97QBkdxT4bWPTB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727581554; c=relaxed/simple;
	bh=rTpcXbnkhOCGhZGQc42EWaEXgvzV1ktVu23RDeZyTMk=;
	h=To:Subject:From:Message-Id:Date; b=C08JtrxWe91rBjSRP+2jyFoIgXsHMf0HGlGsL8oPUwqLzi9z8ZxmDBpWn+9hKzOGnNvfSd9f0ofjYNJJ4ESfF5GTPf+4DrSEfu7gmxK7K50YxH0PVceSp4qkvFhUHxX47nry6rxkUJtFPVdIzU1xsAny1luaQN5W7dSFep0Yosk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Td23H97X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Td23H97X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A66C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727581553;
	bh=rTpcXbnkhOCGhZGQc42EWaEXgvzV1ktVu23RDeZyTMk=;
	h=To:Subject:From:Date:From;
	b=Td23H97XjlgDe6ug7C+a+DklfefFN/Eg90O0f+T2ddu8CyPkXJ21q5zxuxSSWTyof
	 /pJlNgAC+5lRMsjz+vs8oA31IBZumnWgRvcWGGhCgz0yRXZnfnbnUBfHyMACNckMDF
	 eNY5VsYVnt/tMsEzMAy2lSJiUYp1NOWHVmosZKWbcLRH1dpHp/YWPeTo5VQkgu2h7X
	 kseR9PJJVAH2VkCGnJKt/HPaTSw19c1S+aFVnB0Ukqpb/6Jk78PEGGReJEd8+5Fllz
	 21wOIT4c9YYLrN+PrtWh0kTFOSu3Kj/xq9Yt/3C/P7xL5q94Z6HLnSYAlMlS0Diuuo
	 r0JRxTC+AdMtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFD3CF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172758155362.26695.1653724009019685243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1899c81f46ffc4907f3ba46cc56bd6e07e84fcf3e6beda3e0d7dc760f3afcce
Date: Sun, 29 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727581553
