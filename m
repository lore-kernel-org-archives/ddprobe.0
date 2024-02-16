Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D9712E70
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708061897; cv=none; b=PUbyPS9KdB542yp+rsAnrtfaPaJw2Nu11O/X511CtWVaNPa7DlqbVrMAK1T1dPAeD4RNxzmZy9PtNYORSYtNN1bQaMn80tG1VstND8SlSwhcIslCXvCPeTvK/9vYgsTBdXFR5plLpSlUlbIwPOxugGog/kfk3hmem/Os2kSoeHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708061897; c=relaxed/simple;
	bh=6a/+64WmJhONd7m4wGF5eOkzFRrUTvrP+ZkGeboxksw=;
	h=To:Subject:From:Message-Id:Date; b=U+v3xfjCzoj9KvySWcFH5CwCVBBh3NMMoIBdrF/d9aOAqwjj5PuiFo9YJsmQ9asUO7fc5Jqa5XtDNwfUuHz6+sQ1uZTuK9rLc7CMQxTQYgDiw7zJX3WxuKwbnzCREdW8sxhghJpiSzj80W0FwQmBIKHoslLhVUUFTCoIRbG5IJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIWSCiCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIWSCiCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E5F6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708061896;
	bh=6a/+64WmJhONd7m4wGF5eOkzFRrUTvrP+ZkGeboxksw=;
	h=To:Subject:From:Date:From;
	b=HIWSCiCr/5+xeIQWlI1XLYsgMJAU2cNEBc6jwcLKFlqELXm4Wqt0P6h6kEITjc9f/
	 4HvDQdD+vh/QZ7dRMjvnTRq8FIAtDjmWMjidGuQtebI2dLXO5ENlhOQDYmiHZG8DCu
	 SKD6JW9qQ+Uj7JXT6NXkcWNh/N4FKAjt7J7frqn/BwhqcOIQIpemHNKwhVa2BUl/eT
	 l6Y/y2Rts82+AXnwza2Tasd4J24MGY2MBxJweK5Qg+MgMbfTwOChCapFslQ2Yyhugy
	 ktKSVcdLuRE12dPlQsoGJXedHlzzzDRqhKqpiZpGQwsiNAVcoqFKUDm+XdvHIvXAEc
	 Oez84la0bTqjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EBE3C48BC4
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170806189638.10521.16626323836259476907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ac2c6eb6e07d69c6faf9a58e0ebd5283f7486104fe4e2e49ea012e65919212
Date: Fri, 16 Feb 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708061896
