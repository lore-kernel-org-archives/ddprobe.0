Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1634028F50F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775237734; cv=none; b=k3NLyep6sMB4rogb4nLp5aBO7EPbN/I660cLy+IcL0Sh7xMCIJv2Tx+B6v8Mzuxs+xvj9yu/mo6/oq4r1l5Q9RwfScrtuCB72FZG0452PHAOr56TP7gX18gT4LB4OlcPyrGMW9KlJiO91Q8IqztRDSa6tNn5pDsyqKEkFV9tq/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775237734; c=relaxed/simple;
	bh=OmSK6xJTDV6FzIz86doztTQRdDh3A1TpAAEr7dnxQ0I=;
	h=To:Subject:From:Message-Id:Date; b=OMsQMSkJgUo02CoaC0t9e2EMmDS7gkWivvNAb6dBfY1Ccyy8rNqEUEo9gHJ70+57c2/BB5Wpf9Zs9ViNRqBvLqefmvJaJg0e5+A9TwjGSOcztKFPhpHyKM2hoQ0E/XypPbknddxbzns1G4XC0mBwdgxmpkx4evO3GNpg4odq9tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxoL8IAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxoL8IAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD441C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775237733;
	bh=OmSK6xJTDV6FzIz86doztTQRdDh3A1TpAAEr7dnxQ0I=;
	h=To:Subject:From:Date:From;
	b=RxoL8IAb35d/R10qORGh5mu2RSXA9kg+bp7VjgOHguHE5a3KRvj64tDMoh4iBoxa6
	 biFM6Ri3DTa0STJbKdRWpUxnebY5UEgCAk20GNMxRWGg0FDJasQAePYHSWjq0KYaYu
	 fvWZr3OEfsqbtP8rirgJhI9RxAaE/yEBuGU4k4+iZ46CjW+SDe8ETLsIYpeRzqwkHL
	 5uS9+WvlXO9D8Yvu6ImBqUtaUjAnDDeMu+qBrMC4y7yQHQS63gM3vkiF7uB9sdj+QJ
	 s8iZdO7NyydVcrRvApasL329OhkJ8pfWpbJb6tjAsp0Dwfa9ehtn4Vh0HhlACyNju1
	 HXPeKFwoQI7vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA82FE85388
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 17:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523773368.28912.538401690288767992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c47730d972e5527bb9e74853d6bd44f6e20f955451495fe5f0e18d6e765b8c
Date: Fri, 03 Apr 2026 17:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775237733
