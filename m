Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69C93290C1
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772223894; cv=none; b=rw1VrsJFKt30N8OWt+ND8Aweun4K/vKVpYX0z1+eL0Hrv4or3x6fy23AoJWrSj9rjPrvPAPv0QtrqyoMDpXtyvCN4bU8qoIQXltm+uPIKc2wr8ZKtKY4Nq6amvKWgESiDQ+ClRKyHV4IV8TXo6kANkNY/LArmqS9aEUAQA4a2bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772223894; c=relaxed/simple;
	bh=5jCC804VFnFRqtAIOm4UMs1IS19Vov+bsIfmbg/EL8M=;
	h=To:Subject:From:Message-Id:Date; b=X+kTXK779lTtq8qoj2uWsCMYhwkGKX64flHM4ZawPIPsp3o3zJIPxxxnBHYf31z1CdwQ1yUphsj8/yEkv76ALQPTXyNtTwlo952ugq5KmrSeXvx8tO8W2lPg6bzEeXfSfsN5RYTGjfrvkMkuJ4Al01mVWTfjoMv9CKWOiw4z88Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gU9Iy7cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gU9Iy7cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A323EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772223893;
	bh=5jCC804VFnFRqtAIOm4UMs1IS19Vov+bsIfmbg/EL8M=;
	h=To:Subject:From:Date:From;
	b=gU9Iy7cqbCOiWVSpsp7+IPE3KUrdK4hgVbR0SdzW85iDDjRSROdZiaeb2iaYL6OTM
	 AH6TVS2JF24BcUpV2AO7zlaRZPbmFrRXQtl01WlyUwWjutCfYETiLAz+OrY4/jFtig
	 2CA2u+eYA9oJX1cI51GBR7xgeSwAgzphj5BmXGZVp4rWiWCiepcPX+dPJCBnSmFfAN
	 itYV/u+BEtwRBwFh2a0zbA71In1ht4spsQjx0DsIZTBouXsAeZ8gtyo7Tndd/wKj3G
	 npLFWaK5YS8pCDix643S32noBbD7oqNaS6ZJdX7in99YM/HPT/4Vzrk8v3XZGCQ66t
	 rqbzL1ZpYl0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B87FEFB51
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222389358.16330.2621419642373276631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae5df31f8fd31d9710ad710c5c746bea1fc893ec93de3c91e7eec6eb121a5ee
Date: Fri, 27 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772223893
