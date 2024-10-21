Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B5410A3E
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729554354; cv=none; b=PzoCI1DJvZc8U2hqhrxYccf4ObKijnfWUVi0aqCPrU7DnEIGyax/Z6qK+lommTeoTKyNGqtgyHc0gECyMvkC3z339fRui5AMMjWgLv5Am8dLJPKtY9LIOfqbCaaN3Ddo3OjpTsUR4mLB/ob4rwb9Q9ROQTfIiavGmNlcVMddphI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729554354; c=relaxed/simple;
	bh=r7s8i6flvOaaBV8xADuOF2vBWFTh4NzI+qX2Kn2ewPo=;
	h=To:Subject:From:Message-Id:Date; b=fl+zpv2e6hEqaGuJbxnVSxcx8ubr3BPWuXygnc4zE68HaRCwQYCKidwJ8LZPI6kEh3Ma8x+5/xQKcvQEfQ1+Dhl6XnmeS0Y11hG5T4Uic+ZfrPzLPgpE3Q9CzZ1YsgznG0orbfqjeIW8QozK7kuJeYPvY7cy/kNdbZyIZTUA0M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqSEyJC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqSEyJC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC2C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729554353;
	bh=r7s8i6flvOaaBV8xADuOF2vBWFTh4NzI+qX2Kn2ewPo=;
	h=To:Subject:From:Date:From;
	b=IqSEyJC56KkNsfQ5tAd84L/WTYFSkMJZm9d4scEd0Ki5KjPZ0qHjsjITc2oj/4Y3e
	 Vl5QwApjcTS+rXpIUvRBed4EQcf/iTxonQw2RVXv7XooeLdNOnaUH/8wVXn4Fx3DUF
	 b+zPh9wEgH1ApLQU7e1RdH8Ll29sVgQA1y8RRCuRbYRKIHohI+KQMy2ZOZ30EXtqb2
	 JfP5w83ED+IipzFCJ+gggjiJtIfA7O43QVOAWmNJmcWbpw4YED2e1aJnCQ09QazVFw
	 YMqlCAJdfHJT8x5M24Sb1XVb01cGWslERKRSL2b+UbJIM+BzM2zyEWqwC17JI6/rKM
	 g6808gT9UCvoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E18D17148
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172955435359.29834.10046882246237985832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62afed9e5930d5119d5a63ebb05d54e85c1e1edd3bde5d4416970a1d7dd6e79b
Date: Mon, 21 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729554353
