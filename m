Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2646572627
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756098594; cv=none; b=i97+lGgzerjAfjcNqLlBsh9ZgNMG7MyHluaDyD9EN/taypxTGbZpeTeip6Mbb93Ze6GUvoVmsKts59JxLwSfUuFw+tcNRxYs57Gxkvrwc/9cvwwuDHI5xkI79yxfT/iRjDDSW5iCRzdJSqZg/AKCxv4mHVAx666QlwtItrsfckg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756098594; c=relaxed/simple;
	bh=jaFBr0S15mXammkcRDdUIiYa7UXFZx9pAkZW81Y8Kq8=;
	h=To:Subject:From:Message-Id:Date; b=ZPSZ7G+ogGd+7RH/T5w63P/xD89OUVqe0dcLoich+ErcqSknFwKcuOxHd4Jvdr0iGdjaT1OoP2yH1QVpAfeEvfnQxVoxKSjvYtvtZ29vQnjO8VKvzH9DyDITMyYQuqFf5OouSDX/lQinawgwhPrI0in2nh1/ZGjYkQiuP1fKpbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqOWWR3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqOWWR3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89ABC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756098593;
	bh=jaFBr0S15mXammkcRDdUIiYa7UXFZx9pAkZW81Y8Kq8=;
	h=To:Subject:From:Date:From;
	b=BqOWWR3NSMmy1JLT+yDTFmhVLduYQw7X6ucr7Key+aP0zM4Xf2Ra7HhOggymrelEn
	 33ksdItC0F3PqpXCpk2drwIXOuaYjPm9j7ASfNmRUP3k+hCGeRrPEzpkxQFVMKkvlE
	 K7POv7ixd9DNsYN/gXrxh91epQUf3i7YVUL0pVVGurhM6K/mzQlVA4q94BzIBS+cMc
	 /QmsWPDo1Yb5Lc8nvFS4EFX/XpzDg9LcD3eDalSq1vz5ejwgD5MvkydBfc7XO9pcy3
	 uALvOj0D9tuzpplGbufTRrIqWJCNEhVeviPR04KAAbfDWMtvz9qOtCIvJyn2zUZCjR
	 r3xbrn+96uvfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9679DCA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609859359.13027.15652556115686025871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43efe00b98b0a8e0008a8d6bc6d0c6d82e13812b5f06f1b2fda9d4e46b5db11
Date: Mon, 25 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756098593
