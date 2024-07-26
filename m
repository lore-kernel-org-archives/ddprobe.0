Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10643175570
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721978754; cv=none; b=JEy7VJRC5YDaAM1xcUmKp3bizD8grvt/c+fvhfh7zvf/DvQYZOiL03SLRuOqXQqjb3AavTYeq+7gnYXAz74FJKPXv6xOAnXyoVPxYwFEDPd++QOtTAvrm0mY+jv6pcnQTMS2ivT+2hhNpoc5uBENKzy+nnGk4yT1MK/7nofyMgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721978754; c=relaxed/simple;
	bh=KP9SwenHM82aKT7aIDhnlEinVLumsuT7GQu6vmhfzZE=;
	h=To:Subject:From:Message-Id:Date; b=kj8R/QOCuNE3wzKZ3NeZ+zICU/clVW80lOoPa/rXyTr2Ln1F1b5UOQX3D5gpns049Qs8uhsYK3fXDHt26tKWhA6lM8JrO8xiP6Oi7dqUVWZz+rvQhgxiK+twXErVXuhMow1hFSoZsVsdxgN/z6FWCnYYGt/NzknDs/BysUtzrSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWzvzNFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWzvzNFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB541C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721978753;
	bh=KP9SwenHM82aKT7aIDhnlEinVLumsuT7GQu6vmhfzZE=;
	h=To:Subject:From:Date:From;
	b=uWzvzNFK5lnT9jVqzEjvADdLi7LvXFqaIF2b0+7E43vjkCay7UklNAGxLEXZk+aal
	 aU6P9H/RGd8LR7DZ7FFCMr/hmwGzP+KCdIdzHi6UBuskpKDmLJslGm2tOvP54tUTyn
	 mUFriglpcaf+i6JyR28lG44d9M1oFHkBgl7BczDVnSfHLvpRGj3tIFda6cp+Ylmxcy
	 1G4HkXQYEyaZ7oI41TUXafvet24+mDT5/ucbkkSdBTtwUJLYmm1+F6dzkY3cORsJcD
	 IAjqzmbo07PAbIqxxORoquyATxDnlohw/ENzVT9yDJRGqZXvpQjm5gIVjaJvtEvgqa
	 4Y/92NOtM+N7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F1C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197875359.20816.14020886234207279029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cffc95d6658bdc2ca60b7a48c5d6aa3f5825de8595a4a539d0dcbd58186867
Date: Fri, 26 Jul 2024 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721978753
