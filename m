Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B43823EAAB
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764109974; cv=none; b=dIKulWKJ+psc0ZMlubDXqJ1K2hboL4seo1vKyFmiN5d1B7oU1myJrjNk2idWH5KND9dmBo3YZ+xM1Hxn8jd3rbiXas+vxVV1iteGMQVZNMAK7KZCqIPlIv/hI7ZaLqSdhqIeGmKsUMLuLpdFgS+qoicTNI7v0iVlx8aVCNN8aBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764109974; c=relaxed/simple;
	bh=v+QPl86h07NAV9iAYhi7dzTOmclsmbF1tIUfGGFrut0=;
	h=To:Subject:From:Message-Id:Date; b=gZpQy8pOV5ZB6HROnQgyyED1pWeMqXDKmMY5r/rYJigP0aadR6mpi2j8zO94fjodInBcIYdajIllemTd7LC2yo8LTt4xpRyq18UY9JosTYmA2++fuuRtsLc1Xg/383Mzr+PgFEF8GEuSCbCwis1BzhfIwc4Noisnivup5fARN0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdsaSPzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdsaSPzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2EBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764109973;
	bh=v+QPl86h07NAV9iAYhi7dzTOmclsmbF1tIUfGGFrut0=;
	h=To:Subject:From:Date:From;
	b=JdsaSPzQ+9v3zvat3DJDwYRaP5WcS29w7wzrrK1lMshv+VVbqmOUkyQwAsu0iCmR9
	 aX94CbigeMM3gOLc56W32gvYcmwGnfWafqFigk8biqmq2THPbMomlb8eQnuZiHq4BC
	 Ud+bZBiPuzGgVyXuDUGK/4hsp4Fb0Gj9AU8ph9eDA576IpDBtbmoMUypRL7ZuyKCO7
	 i4LEcDS/p813VoNa1GuILtbAX/Qd+bd97P4u8a+MgQT3m4gUS3uA+Rb6q381fzBjVD
	 CGY70QyVWd84C6OoeWzuoLChp0bRJ54+cmtQeQp087Je4QWMui/f5eX3T5myeozqyB
	 ZeoFNUJjAdvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF25D0EE0B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 22:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410997359.2004.982885904998621987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e58d4a95e13788899ac5cd555bf5df24e2bf0058ae21eeadaf59434725973320
Date: Tue, 25 Nov 2025 22:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764109973
