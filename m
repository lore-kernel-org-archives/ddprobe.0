Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E661B3F0E
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718906423; cv=none; b=CcJ6rCOW8BpiO5xJO7509MLDsdrQ8/9DwxBZkdaBnzFce0WAmD70f1aOSmrKaNQCn4r70QBHhC1V8/NpZeyAwYImlEpMqF1lPTytDVP09KqTk4PwMnGDbaHOtUuOjm6KHASupfz2AbGM4vntSrfDaY+Hel5+tINebCKNF2IrSdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718906423; c=relaxed/simple;
	bh=cM8pRX5GtyYMbEmDaLcw8yD5+rYxpTTRs3RbQtvlFe0=;
	h=To:Subject:From:Message-Id:Date; b=PxEbZILMhNHfyzs2vzjkTIuoEBMn7dSa/aWCC1aWBf1yFJS89Vwh82u7oS1A8r4AsP6/4Bzl5ZJUCQHX4XRhP9+TeApKBMA+94sIyAc7bBUEQb2FRTkPOe80QjMxdaFGPsBYKnFFRA8qktXgrAgRW6IcyQmGEKNevFTq/BBIEmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKkfE+6r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKkfE+6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B41C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718906422;
	bh=cM8pRX5GtyYMbEmDaLcw8yD5+rYxpTTRs3RbQtvlFe0=;
	h=To:Subject:From:Date:From;
	b=vKkfE+6rWF7qjtAmODm/r5oLnMyr4yPLZ/6DfTW3amjqSc3JArG03JkQ6mDZmWJF3
	 UAanL9vLneiqYgGLWuo8aoAnzEoLik4h0unntZNGc0NgdrkPcOi+2bqbgBiJCjmouP
	 T4U5bQxwD+7FV7CGgcnc2GWKMD4OHgfwBo4Wi2EtvMVZjshWNceP/8YQj3XG6qzc/g
	 S2CKrV2aTSnsUKAFGkHMUlztajpc5DtXGsttWtqrSyf//rKguNK6BtI7Pok1zQ7Vm1
	 xn+TkGoyEb/Fz0x5wJGso03eWcfPUuag5t6SJbRVzIjPv1B+/jwWmwynr6HBJhPmG4
	 bVHSmPR+O6WiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B60C2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890642279.3388.14289142406920972222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34e7e3c641af870a8dc8a8d6b537f0411990814cbc2d36a053182f4d52c0f0b
Date: Thu, 20 Jun 2024 18:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718906422
