Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEE02D1916
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782424654; cv=none; b=mYboVOsO5ILZMKlgQGnoCor7trK9Wi3QqBL1QiYShrzmNATAzd0NnOUrgxD33EkakZDFoKSB02X3/YG80JHGTy86mlb6JcH6hHj2VvaDMhQbTqagDfh+GYOMYMjl+5FZ+Dcb7f9Hno3E3MpB6DCglrGPGeljaR3TqpWRbK2037c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782424654; c=relaxed/simple;
	bh=5jxehlcZpWI/e+czsvBIFfplaneQMDle44gcKMVWdz0=;
	h=To:Subject:From:Message-Id:Date; b=sAnXd6+ktgUZ5RzNJWl+RYsrKJbLf4CYcus4sqaVvzHgqPZ+O3i2tuuLpQnG7n8v8QoZ+WhMC7tlMVs8EyBKu7nlIT1LtplhGx1vIya3y9MPZwuM5ANWrf4XLO3izcLS+1trWMRNlaU//vdUGyWqiik+g++cXsVvQsCTJmZWEK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7sSy4Ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7sSy4Ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D472DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782424653;
	bh=5jxehlcZpWI/e+czsvBIFfplaneQMDle44gcKMVWdz0=;
	h=To:Subject:From:Date:From;
	b=C7sSy4Ng9ebfB5QcOFSXbAxUFtFSKclD1x4JPIwbAmXm7skUgxysKuXKYgPsmoS6Q
	 OHfVggxrD5/evSrS8OOL5Fz20RjLxB0eluRMWSXGXNTjm6VMeJBOgihwARuoM8wZlk
	 DBLDr+Ilz0UgetK+SelWBPAQvTmAUpyfD9Wg81oQcIPsYDH18jLTcjMw7OQRUAonxV
	 bgDXEAvx6o6w58+4qkWr7YKG7mjGKuQfYxMAOjwfO8rcjfJjzE3HpPFRdrq2R6kfV3
	 hYuFFe9GQyalSpL7iLhU3Z8Zf+qly9O2bdwSuZr1qgyg4JZWcW0p7AIKZBKWHycs3J
	 v4xwDD85iSH1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1B4CDE00B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242465370.14165.16996379928673616450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af727239a046f0cc7fb115db6c95e95cfe688e4dab7605d8b00bceb5f9b6324
Date: Thu, 25 Jun 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782424653
