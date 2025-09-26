Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3AD265623
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758880194; cv=none; b=qxbZ1vslsBlO8mU7sSLrVRj60OwiWqVSIa0TpuVNulwX2OH3VEdHJn6pU8c0ufx1yXno60WCfVn2gS2QoaItKOzu3nnSyEecmEFf1gCF3OgWa0YOzsJozQ3sUiglW7qto2jBGD+AKya7VXQt00LkbiGcWxzoEesoLcEB2WALWbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758880194; c=relaxed/simple;
	bh=QCasC1gTkFEiop1mKzfq04eD5dZUeahaA7cfFZ9vMIM=;
	h=To:Subject:From:Message-Id:Date; b=OEkdwJWV1sgLKyyozNAwtlVLULHBOr4WmSUr35DFQUdTHDr/R75RrMKOd51wE+B8LC3ejvla4lfvg3L9Rr0GHSaM3YzrLHupVFUrasd3zWsKnN31njpReoFjeyx8x4zaG6Dlzxxrmgd/yjb0fay9M4dg/9fivDUR/TudeoVgOoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srbo7R6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srbo7R6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A281DC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758880193;
	bh=QCasC1gTkFEiop1mKzfq04eD5dZUeahaA7cfFZ9vMIM=;
	h=To:Subject:From:Date:From;
	b=srbo7R6N33rPGKw97Iz8JzfRzS2yevYUGs72AnjNx96bFQhf+QkT9ZTC2CvyBjV7f
	 PKDqijE8l98Zez7kkimc+VXTsBnOpsknvwANJ1CWLXrXLU0GQY/UlQv/1mwRFWrnen
	 rbN18fswk67IT/grObswJQlLsDLrM/C/HJOsnD3LnNeSCrFfG2ccmCgEuYvqjTcqzf
	 dHcceesXlfft7xNH1fty1LozAxxnL9ZDU0FhuuIoXNEbNYNCAVlYLODVKilsywwCXL
	 c/KvDQ0NRuTNoJUz++xcB1O6aM2xdfyXQMvpRjLH3lw1cwBy+ByOwKuB5B5PG+LsQ9
	 +79yTKjYftRqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90254CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888019358.15395.8611184518019419170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bfecd5b1d5e58c6e93ca18dbcbb9ba0cbf60b90667e0c9976a831aaf24dac2
Date: Fri, 26 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758880193
