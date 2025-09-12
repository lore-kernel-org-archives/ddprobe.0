Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB5A15C0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757641194; cv=none; b=Fn12xSmAIaQGwR2QKEXOoMDGGGU/4UKwAD3eoh92CpH37HhCSS/KeTty7S/zYUIIkhKT+3HTD++ynHtbIPVcjPeHGe2EptiqAPIqp3jnooO4esvCnH0dyNjKz78XS3QiZWdL20Bzc51jwp0vB5fefuxWtMF/UMDXKeUg7rMv5bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757641194; c=relaxed/simple;
	bh=GCZp+jQiROspLVBX5mPU4Pw9aTP/wAlfy6CQk414j7I=;
	h=To:Subject:From:Message-Id:Date; b=Yu1jU+eMARCgaerRw4/WlFXkC5bu1W3cA4p3UXXEiqrBTRm10DLIaW7YM5KjxvVMV+4pjHtqb2GBippy5RcULEoq7jgKAbbGDxWqVr3nx4OpZMtU1v6pL/YqQtD+tWvvRboTNZiefRVXw4FBdm1wj6/lROdeBBj+IN6FUmdencI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPluDr9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPluDr9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE8C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757641193;
	bh=GCZp+jQiROspLVBX5mPU4Pw9aTP/wAlfy6CQk414j7I=;
	h=To:Subject:From:Date:From;
	b=XPluDr9kaB/iA2wE7mvzXlZW7paPkzahLMdsbC++VQnK7jDf/Ed9oCHJipqqNhatG
	 +cE8Oi54841jr9WYKCskSHvdofWJYO2H595N6a1X58phTSC0+hye8BdrBlkaXPSZXc
	 15PMuWPvhl0MMKy/nkts/HQgVeIrpoE+c2vAZqJFqqnC2E3r+XkeAB+doWJ9VDBq5S
	 xNLGqaxW6HRIDfqxxzErvGAkIUCbCHq70VhjZo0FJskr7x11b1SdguDHxGbn0x73/N
	 JRc1jydpwfIujLJVqbTFRMsKsRsTBjdvytyi8zkfJ6MQdojq3CKq/OjhWLaX4wLIP0
	 vE/pQtiUlqq3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946A8CAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764119357.6183.4988043928502984817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6299ff9a4c066212a28ceadc07e71688d7bd0ce500426d1ebbc235b5ddaf44e6
Date: Fri, 12 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757641193
