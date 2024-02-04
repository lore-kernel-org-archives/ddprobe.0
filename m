Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270B78F72
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707032897; cv=none; b=RUaZ7ZWbOOEBcsq8avMvEAsTnJo5faqbBaHNHjdKWU2pLAW9bbldOOZacrzz0SOxSpnQ9w05ANPmaKFhQ/3cCEiKm8YFObcqo/meE5tUC07JRin82oltKFELIAOyb+LJKNxJuOjhNRQOfAUauZXh/FsMWm40b/jusvsrtArIWvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707032897; c=relaxed/simple;
	bh=ANXTiIIh10U1PQl1PcEU0rIFbgJEMafqk7FWWp/uQGA=;
	h=To:Subject:From:Message-Id:Date; b=toViKVJSacqDV6vMiU/m8KnjMyGCBCmd/l5ucY5lY139pkucKDZtl2N7TPiJCGavl4qLJv+8Hie/Y/UKc8yB7agxcs0IEs0fBsEw6UGodvuAi1UigtkcHVlWEK90fyGIjUR8rLTo1f66/iZXF9mLrWsALW1pzHS8S3YHaCujTkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksCq9Ixf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksCq9Ixf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8DDC433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707032896;
	bh=ANXTiIIh10U1PQl1PcEU0rIFbgJEMafqk7FWWp/uQGA=;
	h=To:Subject:From:Date:From;
	b=ksCq9IxfaO1QLONDBJ6yfKEfx6nZvZlnGZYDJHakrlx16fogN2MFITmxIYtnVynS7
	 fcNiL8FdRc4EOoKfM8gw0WrSVrMBA3KVVnjhZDe4TlMnYjfnx747dTj/LNs3nLJBvn
	 r6N7uUWe9yVRsCiBVmr7qYdx+L24KivkLERnN3x7quuJC8Ns68VGiyex32zGMFLgNa
	 iWh///1J5wL50oJlmKkTK/VGInnx8ija++Vm1hseffx+aO1AIOG2RkFUKxPiq5gnl8
	 LiiTg5snaRBUpdJqwT9iWG3hiI0avtiSKHgHk+D1K0r2aTcOIPWCUHfpsl0IML7rHt
	 jS/ud6uYkLHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 787B3C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170703289646.14901.5759498430531684848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c113aee48d55bc220703322d8a9ec3eef03df113a7a315c2fe83e24cd46067a
Date: Sun, 04 Feb 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707032896
