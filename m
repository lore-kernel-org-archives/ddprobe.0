Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6D43E7BD1
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778859634; cv=none; b=tscFBjJSKBm1TuzRIEc8ekSeA0nPcLKPt+vElCKh27SvJr5JVUGb2fVrNGz0XLYwTlu9bWfWzPiXejYJpgBPRK23vx6dqsaNMSuuvcVLQ4qnREmz9ApVNzdLWuKmvW1nM5lb1cmmNbwodrkU/EEF1kyUyWwB/PmfVQUefxQ1ye4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778859634; c=relaxed/simple;
	bh=YyzWgqEF2ib9XSjlmTTjDeC6cxb09fIDiqjWKe3QHkI=;
	h=To:Subject:From:Message-Id:Date; b=d34taAwEfq/IYm5BB2vfpp2dw88+F+ghxCcM6B0jtCVwKVMxbAORg7HzW/C/0t/8d5iTzpYnHPaL4+uxeOVx9rvWeBpJmNFDHkZbignML1Uehgd0KlaBG9ErjVZfLryRWX8NnqGJkRmBEHjwc0vwevZMSSF2OX118syydOWYt+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ls0qeAxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ls0qeAxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF507C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778859633;
	bh=YyzWgqEF2ib9XSjlmTTjDeC6cxb09fIDiqjWKe3QHkI=;
	h=To:Subject:From:Date:From;
	b=Ls0qeAxCnNX3G2Lwwdo1IKBaac1bHVHxwrJNN6Pampbhfj9Iv4bocMZtg7QwTQr9G
	 4AX4MUy7AB4CZRURFEVF3FLEYEvoyu12lZS5V/9QX093BCfPg6LoTRZk0vHedK+frD
	 AZPLnGzggXXQOOOXQQRrQXkcbf0DGRbKhj1qWiU5AyFokj6GDyq+DlKbGfWQY1N6hO
	 /CQmWHLy9C94Fp5f47eRXc86uZyr/FLS954gEftVRPeQAb0EcTViwEIJOJzkSK7ulY
	 mxrY+4GIB0fgYwQkGHfZGRkG6WQP/XUYqEegaTaiv+igMXMJ72qqG7rEuiiXDHRO+s
	 jd1VUUeltAaEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD167CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885963369.8352.14172982660183262352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5174c79af40e0fcef9aab78904d043df3026a8247b047c45adbd2b6c6c110361
Date: Fri, 15 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778859633
