Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B692AD31
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748332794; cv=none; b=dhRUoefOQskbOnmQmPdMe+YufVq/YKXzRKLGCTFcTba+DGlJTLNcdx7XKHJ9boPSQuHzQpMYBYn340VAgfUwVHLSDhTDf7iDfodqeKW0Y3KnJ0wzQOv7CnzSS8GwkPJjtta9tfqBr/EaVJM+lsE969fRZ7J4kFGGspZzFnZM+4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748332794; c=relaxed/simple;
	bh=cxlgcSjIbruGM/WFq4hqSMOfYLY+Rtvw/FGtGphlnsc=;
	h=To:Subject:From:Message-Id:Date; b=BKC/puuy6ueDiNcJZil0pYMKRRr1vtU9AqGRyrClfj9IcrWuSU+OxCVQ3HLeWO8axtvnAxX2lPyPBFI+cny/YC6E1K0gXRzHOyVilEkvkp8XViQ04HGNcDnK9UMgGsGURp7G0ljcMgVu0TUfD4zZDspxwcKXM7dWQYfUDhUP16w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYnwlF9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYnwlF9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A879FC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748332793;
	bh=cxlgcSjIbruGM/WFq4hqSMOfYLY+Rtvw/FGtGphlnsc=;
	h=To:Subject:From:Date:From;
	b=OYnwlF9AabaeMQggf3ilk4Cm+vMzrp6Mtvu7FNRj+KSOFLOhor6GXJOnVMwJAMEOv
	 HLo0+llroGKZlWaKdJkmw5TJHQG4sqw7fBpXHagaj81uErEnDw7V64KswbTTNkWUoK
	 61tLev18Mb6UIM6JINDolhHgkRscXRw9VWirTDiRHMdyOO48HBBrBVsxrylRtkIDaU
	 RsTXkmyapCQpxT6YGlSDmqHp5cQOEk3JtM9WqTYNeEnziLr8zSx8QdWOKK08VYIrp6
	 nsggdiRzrofkOxXoBAIYoJKm2ptI1HcrosoMJIeZrxFsFFn85ngCu6gzFS2PFF4732
	 vTvue7ep0RzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95572C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833279360.14663.14613301060326720925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dba821c69504e976569c0b4699a90b0b54511409bfa6ca9caf42b0b67e0c7db
Date: Tue, 27 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748332793
