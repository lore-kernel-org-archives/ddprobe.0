Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C427204092
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738785954; cv=none; b=HpS7W8u6FqfZue5T855yFvpq9bjim7bBgfBku7vnPiWYnurggtBPq8ouwqbed08UKO8sPfNeLD4HPwGRz8hOs/qux9kpWwG2quj9e27XTjIrd19ByHA5e5vY4EwvxjubVVzgIk/B/8bEkb2kqUKAiWvWModhOUBikI9fK31QDZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738785954; c=relaxed/simple;
	bh=8FJp/lH69qzznAjJ64rV5rPTJgWKTk/JKvJ0fsAkh2w=;
	h=To:Subject:From:Message-Id:Date; b=KIetbQ8xetBL3hLzmLrigmZdCo+crCNTpM8DkH6hrD9wzNZv9vrXbWSlJW8dHPhxCwxHQ2KzWoxpW2V6DXyWAoQk/pXx9CFfydX0z4GsZnf4J8wANUKHtyadqtUYPq8qzfImnx6fWqLZWpeWhDytUaOC7hGvlI78qIxXZ6v1bPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GU02e90c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GU02e90c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A79C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738785953;
	bh=8FJp/lH69qzznAjJ64rV5rPTJgWKTk/JKvJ0fsAkh2w=;
	h=To:Subject:From:Date:From;
	b=GU02e90c5iDJ9+1povQkZdYPxBHf6HyOet1DUE6oZ66r+5FJLm8oT3fTZ5LiiTnIU
	 qfj9qdSE5vStEtToKf7Nf8zE7nWt99Hmyw9tSpXlSUUoatuahBuKCleddf37EauRNg
	 edqG+RSQRfMvHi9aXwi8GtgAkfqDQyrSRribRaokxdF/Ebg535OlWlv8Tx/67hulYA
	 HPVrQ2FiXOmNWWwXwMsqvZvhfojA7tkQhh25bs55DmiuLB0y7MY0uVbgH2j978Kshj
	 CLPnd7wZ8Cru9GERqqpnGL97XmSPWJrvua0i6zceUeVVAJDZR+k7l14hifVPtRJNDn
	 6ZPs/r8eVhndw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C3C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878595359.18485.7077334093886847121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3ec8f9d204a545a0cc9b007ce6c976ad2493f2899f8ec8389866218d794ed5
Date: Wed, 05 Feb 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738785953
