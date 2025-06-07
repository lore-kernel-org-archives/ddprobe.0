Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C14D1DF980
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749274194; cv=none; b=Tow9o/Rg4QS5XGwcPTA883ZCeJY+X4ix1Hj3/DzwwFEO12Jv91+scH91Y9HbzXf73ziGc1OwX9fyP7AjE6xkSAQcfW1KvP5P55RzYhxM3FVjMr/cg7W2Ju6C1n6ZovvVDJ7dcJFoDZ03LQtVP0gVtUhIzbrlCSqB5UWFR5wZUjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749274194; c=relaxed/simple;
	bh=e0ELRA8S2o/heBrEjU3hNYJIR8BLy9bg+jdQgoUWkk4=;
	h=To:Subject:From:Message-Id:Date; b=drL+P+Ml23br3DgkYCQFvepoGjAHd2u7v0J/A4AXTG7hF7CcrZ3SIibVK6+hcT8xba6bchPonTEuW3Ziwj8VouXrrf6DbNWxN8A1Ipl4nDL7Gdtf+GyvS1Lv+HYH3YdlY6n+LSltk0IXpZdSgAbTBBDnJrqJcZat1jtz3xMR4ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ78LXaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ78LXaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A848FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749274193;
	bh=e0ELRA8S2o/heBrEjU3hNYJIR8BLy9bg+jdQgoUWkk4=;
	h=To:Subject:From:Date:From;
	b=VZ78LXaUyM3ID5sBqKFKWGWmanacGGvsY1JbDvg+q30iIqXEnl6fKGGTFkxyDP/YH
	 WzyQK7P+qL3slufNSQ2BH/tqHyWt/0TL+ZN+JPHRAqvdDrFj6snBMfXP9gcWERckAT
	 6veuIEJ1JDB/kHEZWPJC2xN4eKtgVj3FEAWbGdQHxCEOlBcIzSvaO1ujtAZ12UyVOk
	 X59btqJ3k43MDkK5sZD2WUBxS2UwUeqE12whliRBvSlYwe0GYcBlcG0s+Ut6qIorO4
	 UAzunQdx518gfY/tZLG7LA0ympeuEKA3M7tDKam0Yu1v0K3UHgKOufDRcFCzi/gRlZ
	 7v0TMivl3CpQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99382C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927419359.6247.7584337692996788158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2646c87a755ec2a454ac78fd1e1af83cdb076daec07f26a8298b9c93a5e1c4
Date: Sat, 07 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749274193
