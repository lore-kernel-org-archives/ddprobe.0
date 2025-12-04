Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BD02D8DA8
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764863574; cv=none; b=jtNOQAOSbOYO9h/XmK0/YjUOFWbshBeMt+NxJBeAaMQQ2e8NIDE70VwOXn/oYvFeF3Fcu9DKxOTvB3KI85c5n8hdVi/e0to/1HfYlfFU7ebd5faVH8g+Nuw8qcq4E/ZN/kXUmcVWyImOvJauufbZ3o0lgUMlNR5vGzvRWKay5kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764863574; c=relaxed/simple;
	bh=YU1iJLgpiwrBJLsan6WhxMFvWy5ZfHAMGT5Ti6Drh3M=;
	h=To:Subject:From:Message-Id:Date; b=egUZF3ZPKNohrdjXxImRhG+jwrb4Adv3S8/2/a1/BO842V6qp2JfoiOHLfEkUvPPOYKhuAzFtllRDNEN9k6jIIuelrqnXl7Zfqk45OVNVk0ZH6xwdauzZBA+R2gYeW5x85/MehnNdsPrDSKeeUILi6yyfXFYyqj/7JJZih4CayU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLaLNxzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLaLNxzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F8DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764863573;
	bh=YU1iJLgpiwrBJLsan6WhxMFvWy5ZfHAMGT5Ti6Drh3M=;
	h=To:Subject:From:Date:From;
	b=fLaLNxzjk+JzSP0nlsygJgbwuvRU6EPaOcWB/B4+cGwbQWnAk42f9IjLG6YL2mt/7
	 guDcDFDnGEVx+Wbtf5j6925jaJHmdZOeYgg5lUS2eU3zsQcny7MvDudRvoSFZA0vX8
	 ybfIt+qhe1Kdf2lBVKoRKl54s03jtIWem+8Ogxt2OkgIyrmOxhysEbscDQvd69QPyb
	 eUA4I9SSvtZV3qoxT7DlR9jQZ3VTKtjqhmhsH5tQg7triSY1AhPMfJe1RI8pN/xP1x
	 ewrupoLvrBWwjw3xjFbdmlV5z3wU9ciaxdnR8skZT44bJCCmbECKPzsq0+1mhBFi+t
	 b68OdD8kEb9xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964DBD216A3
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486357360.21420.14051278289153124048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6497083dece51208f34ec58a901ba5d6a6dbfd7c98a228d6ef1fa63ff6d00cd
Date: Thu, 04 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764863573
