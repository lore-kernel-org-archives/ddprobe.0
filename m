Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F41D299
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748493594; cv=none; b=b+obEV6VUJ9WxlVt6i75C02mSHTof5hI5UjSqcEP2r+C+wdsPb/D4+H0xscKH8NfD0Srb9ldsIsuPtt0jTTG1DvjNbLyrqG/3/UmQrtLkEvLimDFu58knKLqW2KQp3CeTxDFotbyr/hNNNq1E4658PQM6oljS5gdNS63H4YgCe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748493594; c=relaxed/simple;
	bh=LIY1C4t3sK8+XxsCkDpmPjlEWkI/nQuYyzpuBZynExU=;
	h=To:Subject:From:Message-Id:Date; b=LKQzEsIC5DKG9aZmj8BAjuXiqPhswyxt5zPGsoAi1szs35Ftqs8rKrJXCUn2ERyLxwElqcOFPGZg6t9mIGvYihD2jjBP44/jGhbeKAOFxhWEgLRo+ORs2yIPeNOz2cD7UQgVggwH8WRjUlZ1HUSNxzdRaDQlSTJZfop4EKAGlsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daN4xcih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daN4xcih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC4C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748493593;
	bh=LIY1C4t3sK8+XxsCkDpmPjlEWkI/nQuYyzpuBZynExU=;
	h=To:Subject:From:Date:From;
	b=daN4xcihzEyjY+Ii9d775QPIRiu6AfYEoT8wuWFOQKFjXgS2zQyL0JZ+36lxdAXSh
	 YjXsZZy4mhreigL1hBjhizhUMCHvV+SFnt/AEr0GU4o2uCOQZpn+orzEhAe/aAHDVT
	 2vLnXQLx9pIh9leakgxYRKJT+4xCGCnUupUnfgMZ9ngzW4P5e/f4fd+q/hMv8EyX1t
	 UBlXntHBPS9HKSh7/otR8mwnPLiIBQAcvEtxkymVp6Ouksj0z9iwTFNuCVDJlMc6oK
	 khU0t2ZfPF0sz+nu14Lrq7hA3YO7P96SLb75WDYNTtU7LJrGd47ztjrNiyl051MUcG
	 j+fl4UZLdaX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E0FC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849359357.20439.1099079714654298182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a04b98c927504e21be3f8c1088e7fc6f23f3940fed0177222cc851583d47b6
Date: Thu, 29 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748493593
