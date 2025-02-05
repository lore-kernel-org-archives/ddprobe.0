Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEF22080E1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738722954; cv=none; b=uPbznok2SwtBeY13UypxvyN3JKV2lvtr4g6Q/nGMwudfCskPKaSnwOSAEqap66UpnAjpj0W0usHp5D8z4vVr1HbVuL6ufsm97nQ4Y0gtImwTIrFe9Aq89JSOcBmvMM5gyJaGe1ISNmmMcZW85i9X5vIm0kuLdH+fRgLNvUr/NRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738722954; c=relaxed/simple;
	bh=ksJ4m+KwKufpcHvhGwsZEwCCQWjaHwqBaisqiN3LOno=;
	h=To:Subject:From:Message-Id:Date; b=vAerPdxoJdMvHIhpwiTYG9oJTZoyEo8UHE2Dzma6QLmrPns+9DTIKXjfqRiljwvmVwUJC7gzIc0+l+TmZj5JcjTAbk/bxyadGiaoo/Du0gSIN3j+/2ybBpgflZH8g90uOODKxpgWGVfHVfnBw7Kvo5+HUvxI+vTlaiYAlIHoHPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q49JkrEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q49JkrEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49B6C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738722953;
	bh=ksJ4m+KwKufpcHvhGwsZEwCCQWjaHwqBaisqiN3LOno=;
	h=To:Subject:From:Date:From;
	b=q49JkrEcX0TQlBjODD70eNIqT6b9sy0d4cmNuvo6K1aEb6YMw6ZKlmDFFxwgw1pIB
	 CP9qyWfHdECK11ajw7tdX8VDwzarphRb20pdrXnaM0NuAJsUXKonZdeQIY1PtSJmD+
	 Onh/b75bjbPupXpZm1AwfX5EsNVeK2EcqSqoiykOnvg26vNdQCkhlwyZvae5YeltgY
	 Sm6thuDup2GVHnX9XW0kTZY37g6Zt+HcfmU5PJo6yKLVymga3vDegRM8nGdmpEi5Ax
	 bGWs9zkbd8ngtEfsYPIrzSjK+HHX1ECFOgNdWC+N7bYXFZIHnX6VynLIvhdItvXyGG
	 ysPxjkVph5d1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14A9C02193
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173872295368.2697.9645688622265386075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cc1408d44268f6e01b6b7cd7abb4b226372899c2755b3d5d6676d681a94b40
Date: Wed, 05 Feb 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738722953
