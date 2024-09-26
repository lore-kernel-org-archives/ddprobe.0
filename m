Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAD71D5AD0
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727329554; cv=none; b=mS7lzrS24jii46M/tV/AlcknO+pg0LxTY61bFoI8acHtwenJwie9F3kW1oyLDnzdtjWHFGCVx1xy7tZ902ffoywuCYlLaxsKV4GgdgTiI1SxjW0MJrtpL/qnftrIBdksc1TwkE5Zm5hni0pkmtBEBcBtkW3w3o+QMD3O8pbqBsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727329554; c=relaxed/simple;
	bh=5xmu82EO9POx7Hp6IwUGCwb86/LYBOXGwUMK14gKZFY=;
	h=To:Subject:From:Message-Id:Date; b=avUxHTaprmX5yKoVH6b8yM6o/6yikr7ENI3PjPrrLMEuHMYh4n8NlINVcSyi5HNZgDxLn5eYczXM8wtmctJtWafnv/B9+p7ZMe8P8mCKcuNrpd+2/7nCct+XhD8lP/QBRHiaMSQwYvdBEuH1qbCA8ewH7KKDqAOz8r19J8+LI5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ivr19RoC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ivr19RoC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF2FC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727329553;
	bh=5xmu82EO9POx7Hp6IwUGCwb86/LYBOXGwUMK14gKZFY=;
	h=To:Subject:From:Date:From;
	b=Ivr19RoCO7Mh+D419QnJDkceXsaNd+eGh32PP0hNKEn0tZpqdK2b2INPX3/zpbNQ8
	 fD3R2bkH8Mr87fjcZf/RSQxVLBhMdFsGKcmnwvLOY77LNyNV7L3nTfLgOWf1lUp9Zt
	 0VsdN53qimIQertMEfyY+Llyqsl3p/iZDlHYvVL6WCt9PmZvq9aKm1qsFvmJWwNdW7
	 6/4DSsso5BlwKyhi3IcYLTe+CpGthRmd4vJxu+nyMJXe7kFPIp8m89Xv4zRJnHmCEW
	 IFYpsL1yxfLZhIWAMmkNbIuFSk5W9Cb2XwSgdQNYTmviWiHRzZEFeBM0MkIHjKvd6l
	 oecRItxA4IQzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D150CCFA15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172732955360.18794.9910153933777207113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e7e0935da1a790bd7db26ead441189d72fad30abe84a3018311cea380e253a
Date: Thu, 26 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727329553
