Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB963D6CC4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786015234; cv=none; b=D2dIwNBMWj5E6nZhKY+hWugLwRadoAfA2bAEF98k+xWk+h70JSNLd5O14M5R4yv1irUs/zJO6Z+tmLGlyr52zU2pB1L4U1ONykR/3WVBo4xaT8g8+qVMq+S2HRDRNAU8iXtl4ZZjA4K8fMUaryILnfXQEh/CBI5fI+/6ZLdcPyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786015234; c=relaxed/simple;
	bh=bPRqhLxyuy7DA/MYmEieGKMCVwLksN+Vn8ylpmUlyQw=;
	h=To:Subject:From:Message-Id:Date; b=uQ7Jk4Bpe+4DYQCJecxnPe0Z26dft5vYvpjHEr5bCdLBYKdWIjzyrSlzSep0VFfcQXCSWG2Fmzzh3775Mqvmo7Ly3FaN15fDh7AGBsp0vpFfMJ/XRBnch0/0A/yikfnkhIPj056o9RWeTWJSDz86a5OWw5TmSmILHiZsPjH97AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9JqjMbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9JqjMbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08F4C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786015233;
	bh=bPRqhLxyuy7DA/MYmEieGKMCVwLksN+Vn8ylpmUlyQw=;
	h=To:Subject:From:Date:From;
	b=F9JqjMbOhTeiAJyvZe/BJ7E6fcUeQNhH+DigfX23xWtDbKzeB8WHpfcOavM4JYyNh
	 zrrcm9+6Cqip2oNcKo8uxLZbE1L+sItIk5RdR9aTLKGg9eueg5iuAbuDkVVrjVRoz+
	 K4u3YFSyxsGbDr4elRrs5Ta5RpJPdQUxpnGV7hACauCv9mnii1g/u5QHJRXc7GRM+I
	 hcNybsVdwIb7Fu3eccPmzWGdoiUFV9bSAUw5D45u6vZNWu5KtjO6l9fXc/hz2kKqda
	 jbemjl6dmcEuYYyr2lz/WjB+OlRl/lDi+lLSjTcbbcGO1WyHAJpbdG9SmdMMApsWH7
	 BKNQrOBhO0sxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A5C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601523369.12658.3497571691245651667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da37d1c7edf2fae4882176f8bb9da4f71683f9c16161ea4ceae2dc4a20829be6
Date: Thu, 06 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786015233
