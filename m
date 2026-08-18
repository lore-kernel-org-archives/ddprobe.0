Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF023B1BD
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787065834; cv=none; b=b1u7QAXp6GZq0acbIDgLqPg1Bdgd1o1Nwi3jrVwKXGdSNdczHXgO8OZAuApBjXHw/XJgPe8Bc90AxvxTEThl4q6Uw2jyii3qjabmfOk6kqGcqPSyP3t2d8LdaGMdOaz3Wu3+cIuKftbMSFZQlvS6ainRZF4SB5xS3st4iBWdn8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787065834; c=relaxed/simple;
	bh=sXCvz2Xf/0B9WJIZpf4bfjE6SYLBrFcZxZcI2kul02k=;
	h=To:Subject:From:Message-Id:Date; b=jIbp7VmS8YnjanX/XgUJi8YJ1wQsDRau8cYqJQbL02GElboPSDMUTllVJpcldjbe3mhtYfYLyJfYEuLsT/l7pFa3mXM7SL/vHiDvrZkRTExfBj1nmwTBFqtQzkLb4hMZXHqT+CrRiV4jmvDXw+BDtcjns5WK48C2Ss6J67kHiwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7cTFX6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7cTFX6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0399C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787065833;
	bh=sXCvz2Xf/0B9WJIZpf4bfjE6SYLBrFcZxZcI2kul02k=;
	h=To:Subject:From:Date:From;
	b=L7cTFX6hojSigfdNHNyPn33mbjDg37vY5uM8esmOAEcv3uYl/FVCbbyUNY5yDnBcV
	 8MxcQ3agaStTq+GGPD2vUzwFu/4yC00/3NIA0LtZhmpEy1Ubr6BT6pa47gXQOB10C1
	 XkP3mKedgYfMGpvWGr2ZkX3pbG9GZOwm5kT1lC2G6jVbVTY+SfP/yh8op1caII3Jl6
	 IqE50fRadJUFoWFSALVYlzRTftnRt1Eob2hR/wyZvtL0TkfYRYbQUaxA4vVEknzr6k
	 BVYJMAnbJK08tIjcm5NkfJ/YTMX0ma8A7UKJNOzPPcma+N1PGjUYwOUaHSu9Nzhr3c
	 AENELxfHvrBDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC41C5DF7E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706583369.19757.9642865779570342690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25ce04fd25fabc4d3585bbc3914ab2709148a070440d8f16fcc50bef3e02d214
Date: Tue, 18 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787065833
