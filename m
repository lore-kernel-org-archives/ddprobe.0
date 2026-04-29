Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E96639FCAF
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777505854; cv=none; b=ENgctjcGH3ksISHVTQ9Dek2Y3HTAICoeqmuHqwsnL4giY6NJ5hQpcKyIQiqUy33uggFAxNvodCWTrL+TNQ2B/xAA/lEH6LLp3r7uIAw1YxsXKqQ0xxPrvphAGwieqI6F3R8r2ARLSmpEsJZK1cvV174DXhYnwFJYWLCp5uPgifI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777505854; c=relaxed/simple;
	bh=pXlUgGEJNyli5hXwv1ZYhuktUtVfKFIGS/TMi9bjPZU=;
	h=To:Subject:From:Message-Id:Date; b=Xtql0jPPTG7NbBAxvKr+lq+VdWLfTfLC9bWXKluTW8utoLXpjOju9Ft3OWDeV7KnhLZ69syXarWcBC41XR6LQ2KR/TCIEMZTTS9qFXBBPn93sBkDusML8FoxBC1FPEumHHbyV/E8bI5uHrIkgM9JejwsA27e8qUjWuc3zzzdjAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaQdazju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaQdazju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DB5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777505853;
	bh=pXlUgGEJNyli5hXwv1ZYhuktUtVfKFIGS/TMi9bjPZU=;
	h=To:Subject:From:Date:From;
	b=oaQdazju4o0RiLIFczQKIIgxwwX5ei1Qfwze450yd37Zl2XkWf+3ZrBmib9J3E1Z4
	 FLcqK2zD/+5wEOfvXRXRc1VhVxfH09cEIvDqC19DmhAN/Pkl3WvXdwokPMQ3bnY04h
	 j+O7MqxAcSkV5FyW0rRNd4FxsE+58D4Bup8/qPKtaj0exiSxU+fT7kzN+5AGlcAP2X
	 VUfIdN/e7W1yuHNWlEO/+c81VqkVlffIWRlNhJHyZXTEq/ZIjLxCt8aWYUTdp3vz10
	 lbCOcTKtgUHcMh0swuoxjM8NIoKMsudDPnHmmdJJXgMcXI5IydYnJVgwx3zneQE+n7
	 eOcm2Yl3sSh5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF4FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177750585368.22031.14315111884476804372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a79c6345e0c7c717eda65e843d221b070a63d4d959b2fd3a832e77a01be9e6
Date: Wed, 29 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777505853
