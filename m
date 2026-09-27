Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6081C18FC80
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790478634; cv=none; b=urZx+nnfFK+rBwOc3bY9gwVNyYXw2cz7m240j3VDUU7SGNigG5evwc41YqaijVIO8sQN7WnDI92i69leO/t5fqKi6A6XRU8SlVuwbCQFo4gM5Gy9oGEWSS5wLYPmf+I7XqItDHGfGIja1Q7wqkxxqULN2SwgCguAf3vRmo/wdUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790478634; c=relaxed/simple;
	bh=lDXHfrLNz3byl7A2o8YEpYK5BdwzOKvLNaah3jfqaOw=;
	h=To:Subject:From:Message-Id:Date; b=NDckGuHsPcylmKpkvADYqdblKWVgIt1LrEBMgHLSwVxCSwg2/kpbXHgh5A/5HQDTq5fHaSlxM5Ud/Ze4BT3WZZyP+bdi/Cl0loRNRUKjOBB5Hsy9pjMTp0D40Wf05PPNEZbq/bK+uM/KTdUg5UCWSPLiRsSi5KNqbigEBmYVdkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnAH5T9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnAH5T9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6078C4AF12
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790478633;
	bh=lDXHfrLNz3byl7A2o8YEpYK5BdwzOKvLNaah3jfqaOw=;
	h=To:Subject:From:Date:From;
	b=hnAH5T9YxxnCLtjpDGfWTTyGYpjLSQZmJuVqMloOj2VoSrM4VuqEXHJmWN2cSF+mb
	 0hnmkJqvPgW7W6Hz4ScnfIHguX9J2mHV5sn39pd+WKvNzv4vILFz8nHDVNWnjYpls7
	 HWeDm6XbOPJR1+YnDFWi39JsmczdPmdWRsxaMQWmsqYujhTQ/ugjy/MVGq+lkieWxs
	 nviCPvYls42DRAhJLyVS/VbyQ/lhplMzlAJ1OHlnVQq/lYXd4Ry+n7ei8FqTLeCdLw
	 7kuvsTUqaCvZHZ2o0v00VlwA0l2dhcoRvnGHeF4BUW+HsWZPIExWarqU8TSDdgxKki
	 tJNnBVpCIUoeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC93AC9832A
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179047863368.12136.13404848790377824185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73c1ea91bb2c580fad7241e06476b1a8548e45a53c99d59e2a412b9972c1f24
Date: Sun, 27 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790478633
