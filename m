Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA09282FA
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750531194; cv=none; b=mDLjJNbg07a9CJyXoY7KaAWUatbby2uDg+Q1e81TTW815S30CkeBJ4/qBJCdPNgKCFNAMzc2bnp639H2NceRZDgpAF0M1C9R1e6snAf5AGGpcsiaUUnNa6H2twIYC8bJiHPFJr1tYJo4LrP6v8N4qdZ/HFsBprbfRbJPjjXwBtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750531194; c=relaxed/simple;
	bh=07x43TFV+rKU3Vpx8LHIXS/yxHQJtN7untjDsOPkveo=;
	h=To:Subject:From:Message-Id:Date; b=Uzp3Co1n9PIViPqNrx0myMXzWY0Cg+9PY2Nq2egwNZ0vedYBiQeVMMd370xAg3lAspBLwwMTu0QOAFxJF9+fEgji0e6JckT/dVO88r9d/gg0GvNvA+IHc4cWeEEu6dRwfGYKrUhsTqQ1OeT1uSVYU/fGHNlfmiDikHMPbKgxx2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCuUJoJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCuUJoJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A145AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750531193;
	bh=07x43TFV+rKU3Vpx8LHIXS/yxHQJtN7untjDsOPkveo=;
	h=To:Subject:From:Date:From;
	b=iCuUJoJNV8MxNSrU4Ppt1vLrjREXOB6kTBhjvdbFjADyG7y4hL4qcm7yjTiic2lHM
	 AtcftgEf7RHjJk/pfEII8ZhyqnobwC2S7of9eBlFFJDyAYv0GglOaUN/H6t397jaEj
	 HX4LQQdbwZesnwroRVCynPTfR9NSZ0APOZ+MR3MtEU7WCZ8IiQohwQSEWW9doq74vS
	 Szn+Z35TJAqlnTns4/EfQIFYaLfU+LiZyUamTnYdCTDmjsDK8sJFtmVvCu7USPaDWm
	 giDcxqjh8F7qfxX3lvsTzG2qHamuRxNCQ5kJFr1P4L4WEbna76GmpSDO3mLiNB7Hpi
	 KWjgqSZWaPPbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9194DC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053119357.16578.14230838044321563194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29eac2e31a8cb17abff71549084561be7b9523137d5607ff2295e8c02646e72e
Date: Sat, 21 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750531193
