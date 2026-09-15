Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6841142E404
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789449034; cv=none; b=b7DLzHyON8Yw0L5nnNPZrvJ99WZYeAxjJ2jV9v1qTZUHXl0U8xvd6Tr4AMIO4tuROHYEnlDE102LF040M/S6yi9xmM26YdN6dDj5dmWG2vrRlkro66y5PHeqgPFi+qIyDHC2OrFc5FMBSVZOvSNDdeQ3scIxRmz1yFwdOum+Eu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789449034; c=relaxed/simple;
	bh=Zk9rpSF4mygPx7hXbWlLav/v5VHR4Bme+ca4aZoz1Tk=;
	h=To:Subject:From:Message-Id:Date; b=EgFHrbMortHIC+fFdqHTBEje55sSe2NxzmHYcxYu8IlcjVJEKYebWr7jZOIc7yTTpqA0/vSOSV9tlceD74W2r4SGHQDypxHhuOHKdB+NiTKtHfkb4Nrscp3ACdg+IS6s/xkl3nfummKdSWe3c+DJc71E1MODsvOzoTqdWCO/QTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwX+jfMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwX+jfMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AB7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789449033;
	bh=Zk9rpSF4mygPx7hXbWlLav/v5VHR4Bme+ca4aZoz1Tk=;
	h=To:Subject:From:Date:From;
	b=hwX+jfMp7grG0OLA5+g4BxhyMNOi1eyJLOmjZJycN+hcvA2pV4nHk39iGUsN+Uf1a
	 /eoNnZ/Omvq1YiSLUzo2lw36HRFBfYBq2lJn9vUjZFwkBu6rguK5QQ+auR5ckEZUS9
	 TiLFG6yscnC0OLqkNwtoQ5P+/4aprB6/w+0ih2o7UQL86f9vYE4BRwiltZjB99eyvp
	 KnkMaW3315VVM3B/wgohg3ZyxiRGSSaJVfGz8LxNyGkOrrkJ7QcRq7tR5cupF89Gwg
	 N3igCPY7FjfPbc2wx8tekRWDbxgI9dyBYJph96wFWRXefYFMHpQ+iIbkvyl+iOS47u
	 BLTnlBtlF+f7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7591C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944903373.11268.5089638310009812909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921f3ebafbf6a0442c15f22a8aafb58cef14b76969d72cefb1a71a1c298f24ae
Date: Tue, 15 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789449033
