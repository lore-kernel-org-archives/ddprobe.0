Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FAC19644B
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755431994; cv=none; b=tsRJiNQGtZ3MxpdPaDe37FRbAetqWGfSPIbMSIq5p9TSeODONCBgtMOb+2JX1/yCC8SbT3VktwL/wc74Ax83K8FJFuUHUoUiJMHVXtqLXumkqV3AxxQ/0dIQINLjSRWBy57cyuL/7ePpIbAVqbsG5Uh3kRlheBXi5dGTSOgLNeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755431994; c=relaxed/simple;
	bh=rEurb65GYftOLcaL8Mk1XNU6WvaOowa3KnnxthRSTHw=;
	h=To:Subject:From:Message-Id:Date; b=Z+O+2w40BR1WFy66VSIVyXMRUn0IGgI0Z9WARBhn0FGoeXQAfT7hW3l7USsfdnAEeBGxpaNxs60Xr7T04t2UfFhfCe7dcd/Jq58dywHdDblINB8UK2YFHKiqsUyrBYnY7PDU+3bXxCQ6iKLSTCSrHjqbqevhNRCrQWioIXj11d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsuB+opU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsuB+opU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A9BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755431993;
	bh=rEurb65GYftOLcaL8Mk1XNU6WvaOowa3KnnxthRSTHw=;
	h=To:Subject:From:Date:From;
	b=KsuB+opUVAuVdcINiwu9nlMbvje34ugb0EtAvJb1iVxBQKkoTGfp5fyHeH33PHUQV
	 LG35XTZ9V0haTSlEVkSRtXmLD+DMNHYFwqy4Ffn7azhIPWBga1eg1EtBkqo4/9U+2U
	 YnyrAHlE8IKbFMLa9UpOg89CcMtBwV3Z3XbfFIKudi8CFhOT4kmLJ8hWXjRlEouTQt
	 weCHOhDqq3sD4/416DUXXuM682/D4DJUSoBMWYs38dUUKJGqVlP9TaOPpX1FkJxalx
	 O6jzq8hSJFGhJtiT82SUbrHWmCxSqtJHO/SsbTMMjGMNn3NZFyUCiYOKi4wriPtwP2
	 ajGScWEFCSXaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC3CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543199357.31940.17960733180236527962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b27d385705257cd4c077069412358a5ad0cee05ed2c2ed517045e0d13832f98
Date: Sun, 17 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755431993
