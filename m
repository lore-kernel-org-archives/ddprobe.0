Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6361AAE17
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786653034; cv=none; b=NJFgVyZHXKHHXXbTvURWXgHGibxupu14nU3DTHmhYPW2kz1L9K+tJ4lepzNbu19c2RyjGFVfmoHUFJRHs2t8v6RaUsBsHkauubFu2qTfVzstQ698y6sf7BPPB01UW8vuCd7J5DimQwu23xisesOdINONqzLXTGtDSY0CxTqhv7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786653034; c=relaxed/simple;
	bh=6yi26e6K3iCbkwR4nXnzbqEmcKzL04P6mkws6B8f90w=;
	h=To:Subject:From:Message-Id:Date; b=gc8uPEikaSNEUoIC/MjL0nJdM7ADRnzPvjGtp/fQpgRYQhBxiVKW061shoS6mlOLY1VoiAyMvlWAqY/X6fhy/koTdx0481xVf+/BTttR2rAGDK2ozgBDHvIZkkYAufjeBTEotzVuewMQk1AS8I7we3J10c9M60/9Hsm6V3QVoW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXYayOrS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXYayOrS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D492FC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786653033;
	bh=6yi26e6K3iCbkwR4nXnzbqEmcKzL04P6mkws6B8f90w=;
	h=To:Subject:From:Date:From;
	b=BXYayOrSk7uBN6rIaIgdkEXMxSklactpqnfC9E0pdJQNPb+nvTlXuKS+B33hSAhVk
	 +hdvxH5zkuTzukoTabKLr5GpkSl/O+mKSU/9vLiddPIZdT54s5TsMpBGIs3qTset/e
	 szQ87dVeuVumYPwj3FBkrKoacKCUtS5utFeEkTo6u3MZK5ENfuHUHC41CYsTGuqcon
	 NpOeUyb/rWObrWuEu3PKJ8S+Br+5rX5No5UbQCdfuS7/yao+dIZQcE5MtNYBxa8Srl
	 SvTDxmcZOkTPQb7sGkgQz3nN/QbyjR0aRB31VXj8RHa3cjfM3hNO2xaiBiuKdt4/sV
	 xiv0moDC3yy2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE084C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665303370.7001.69984660438648122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b84b4b4f12c00ccb076ff8dfd389b162c74ad621383d5d69653f008b095dc564
Date: Thu, 13 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786653033
