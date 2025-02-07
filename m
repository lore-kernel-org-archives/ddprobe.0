Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C63816C684
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738920355; cv=none; b=tAa7kyKwQVEdad8kd4taqVKck8EXKvRslnKOCFgwGGuJVyOrBoncznROcE7T4OpnydzS8Sq2ARJbXtZqPg9DZqAm6XReXn1BUaon0q23xL0WXIQCVqeymlmFsMI5xw69S2StOcaSAfCJnomS7blMNkawTH6zM5VzsVdLkFTw7vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738920355; c=relaxed/simple;
	bh=7qHUwtMMOn+mbbXTkF1/dGxIDZxCFblpo3tFgGdaG1Q=;
	h=To:Subject:From:Message-Id:Date; b=QalbYy5wFxjRMP/KQ66v1GnFN0IuW7SinNqP4EoPwq/TwHpnBMiKEMKMcyl167CqHfJQ0ZG6XspD5W91cigOKl7mJjL8uYTTp39pS1FYYTb+jvgcrpOgt11IWPh1b6LOO4EV/P8q33+xBuNgYBwZsUAHupsnxi3lCm8x7wqaTk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UR1yGtHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UR1yGtHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9319C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738920353;
	bh=7qHUwtMMOn+mbbXTkF1/dGxIDZxCFblpo3tFgGdaG1Q=;
	h=To:Subject:From:Date:From;
	b=UR1yGtHuXYohSf1Q3ybxnQHZKO21dV2LaukEYQYxp+aiqGNTzGwti7y01pNxHpQZK
	 Hzp2luEF2vbfL7Q9UIYI9xiQQFrwBJ7jUL7cGaF+lVh/g8KM5fGjPK6Sfa8mhOnId3
	 +9IAJXP2QU3MeECyq7Dj5GLm56yEHKKZU87UVqg1CoTh820nDyPgp9EybGoWdVMiPN
	 VQ+xjbSyZOIs0ouZa9l92Bb7q8gXd9JSgDa8+XpuR4B2SY+wSTTxtCf2Px/Qu4n2fV
	 oHmVFFKrKyK04gpO7hemfxtqKa9Rmt3SmyY/PLB1sG02D2TIdApC2FH1CdAPylzz9q
	 2C8ewfgYGe22w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6464C02196
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892035366.19087.11155993582432115987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d7173d31d0523742f9b48b4c1c0cf7832fab0c77ff4fa305f7083c8c71c260
Date: Fri, 07 Feb 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738920353
