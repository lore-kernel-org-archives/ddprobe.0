Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4AE182
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735085154; cv=none; b=cdBemMcbntys5j7Hz5ApmrrpJsYxEB8R3eyup9fKbZ5cBkDMxK4+2OsCEUBTuzBzn+p0I4W6D/XDO2jGvyr5hdCe0jP1MzW9D+VlHnam9fseA278u64h2kCD86nia/YNgM4ETqmmmTIfH2eD31td2ziNhmIMvm5hHASwk2FyLoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735085154; c=relaxed/simple;
	bh=RpzBZQcuApxhThsYp2GIno/2HnojNtqbhhoTMR8FA7I=;
	h=To:Subject:From:Message-Id:Date; b=hiRc/w1A4ZdYfc4FpsnAJzQn1wJGA6Pc7ZWubZ7wtB9v5HKioXpcSsVGazMaTBOkpDGyRXOg3RFGYCOdM+zEdSkE4OgEZg1IxcYYMt+nQJChIKeRfHA82Iu9a4TvufcmQRboqzq+Ek0iT/qx7vk/sT1f9/e8d9RSML2qtmqcOWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Idzj1zs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Idzj1zs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FD7C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735085153;
	bh=RpzBZQcuApxhThsYp2GIno/2HnojNtqbhhoTMR8FA7I=;
	h=To:Subject:From:Date:From;
	b=Idzj1zs0yqEkX+GVvbzchI8tX5gIA0q/+5tn3NNIQWwoAajjVJ97VaeNYXUyrYmeu
	 m0RHYrnga24Xvi392ssTSFClMLwrlJrsYJQnfd4KwyJa8gB9At8CV4eUJ33f8xoivM
	 jbjz+LHr65M88fadT/v447muS4L6uDakquUu706vE3EX3kCBeCnL9yWCPZj0VLv7yM
	 zzU0x+wkwWo1+pbPYuApSS9XNhGKYwVzQ4C9ygK3GQOzDt/Ek7oeaTjMNz7AwK0uKL
	 1wJiBPK1QNXI6iRZ/QtvMDf11RltwGKjQpQP171VRR/47NYAPpXJ0GNfMIVArL8Rav
	 TlR9W6nsx1pqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6DBE77188
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173508515361.5241.9404501215189642902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dec8cd1a0d8ac20183713fb8a5176b79169331cc4cfdedf62d9296e38817655
Date: Wed, 25 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735085153
