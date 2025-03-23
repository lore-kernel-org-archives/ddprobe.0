Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B331D86E6
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742714394; cv=none; b=bvGh9GJdGuT1iZL1DKY+/JzkPH1QpKDOXzxXnA2neNOcZBtwW6wN/P+tlJL6rfvUanOAoCw8ODDNEL8GAe022IR2NXnWGivA1iQQHDsnVFFh2GpBf45NI+1wozi87MCZf4oQ9NqZIvKyy3IlaBnwMXDAQ/gSEzcZa2L0Z7bo9AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742714394; c=relaxed/simple;
	bh=k4jKK102Qkwdw5ZVeMSnCSo2LAXO6Xy2xIz8k/9VrdA=;
	h=To:Subject:From:Message-Id:Date; b=S5pj1zFW6zf9Y3HPzWzhPi9LVuGJkpzXeB9pejQbZ2eSOGqs41kAxFw7uLtvIcpIXus1GY7UIKcoNnoUXVjnoamLOOeUMHoto6LwKUmZXCrCEz4taRN/thnXuU1i0PPg1Q1DrU0kxRjRC0Jjvom7MDy0rc0nuqcAoawk/RvHmAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRNEmr5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRNEmr5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7373C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742714393;
	bh=k4jKK102Qkwdw5ZVeMSnCSo2LAXO6Xy2xIz8k/9VrdA=;
	h=To:Subject:From:Date:From;
	b=RRNEmr5uqSJaK1V/fNpkWnNF+CKUXCsWxnd2fClGFr/qxIS29NLeqHMfShoGoCpuV
	 6aeKUlGaSkYy0cpow6+gpSZ7qFPBNn8RVUd6OW5l5pkzLvqq84Ecxgz0jEe/RhuMx0
	 Gi5W9RG+lkTDMFVdOmo2fB0ntscFdqzXt3M2AEUwIK8PMiu1lp5kIINS1B+BjlFnt6
	 9lM3icG0Wa0JF0alNbkA4tL9Fhe8HE65EFfcCdHYFErwT0gqwla52SOiTkL2KXl7vo
	 vYKbrQawmzhz8h7PyN/dxr0WQRyqKgW0gR+A7e6nvZrHfZRI4e89noKFGC74cMEeMJ
	 qnOzI9LvG0gSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4641C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174271439369.15643.9898460644820030517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5f9a29bacf169f4997420bcd0c1a0aa03f166babee9ba656e45a51b2bc1a71
Date: Sun, 23 Mar 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742714393
