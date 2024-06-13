Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D5B1428E4
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718274503; cv=none; b=V7j8SrODr8XZFOTTIBiQxCXq2wTkMGnrKqrMpYtE9EQDEUOP0vwHPat9YRDTvRChHlj/gLvY+OhytkOeuk8wi8tJCmiKJX0QryGbm+c2GTS81zXaNkCsc0JDErYPBifVh40EKVfb/+TC5pDzfPhYuNB3O6eUivVWmE1NMahwDSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718274503; c=relaxed/simple;
	bh=+tHXsXSlAjcYw0Cevv94ftLdVq+l9JxgMbRvVctB+u4=;
	h=To:Subject:From:Message-Id:Date; b=dzWxcP+ybGcY7mdw21Q36FPNv28OvKGvJfiI75BRIpZYXf07lSjeoKRsKF7ff/gL7J6XhRi+6n5ADX0ARaekr5P7GFchSjZu+oy4nECyK+OUi1x26yextqVE7c2G9SL//DdDP0PFXFTTIQn3AcsuL900a5X2ceD0Dg8Qov15pi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/9WAYEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/9WAYEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11EAC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718274502;
	bh=+tHXsXSlAjcYw0Cevv94ftLdVq+l9JxgMbRvVctB+u4=;
	h=To:Subject:From:Date:From;
	b=N/9WAYEb2DRGGk1XrD+uO7+jzta1XgVxNmUTTyDgaQoihNmTGpgSejdn6OngzEPhT
	 4XbBKtnz8W5KWqbKhsruT0DhjG4fd5rnzynDYapHXu80+6X+Ojql4h0Qi57OqHkpRo
	 VH9smDiRoAZ76lh/vCYkvmPSBvvM9sCloRNQUBp9TTctOT8SRbwcDXiUwHGGkNzTrw
	 z3LzCBDjXHWKIro8EGR1pok6KYXJkUZNbwQjfygx9CLzOdKX2ezoTPwbk/k/0uvmdf
	 vVZSNPSRefXG5JQAwfOEtGtqub76t365oPvF1MD6JVXVvsh54Ctbzq8m1/fOxvHXSz
	 p41zCRkjPniAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECAAC27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827450277.25258.1420241008300042116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1da6e3cebe556318f57328f59242f7563aaae3d6f7e43a9a4f8572eed4d8dac
Date: Thu, 13 Jun 2024 10:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718274502
