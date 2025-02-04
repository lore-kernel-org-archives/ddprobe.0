Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43294210F76
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738677354; cv=none; b=PrSDP7HiVXLlVSngr8uevAsUk8btMeMZu6SeDkTsLsZuJKUE2F4zXXe1fe1IwpZ+NF+Rv3aeH714Wt712Tt6v1/bUh5I2uU5ECWhW24yFlnL3fjkwEZHpnEKI0KtraI51jmNlTi+m8nvBNdxx7A5OzmSVcYYxiQTcM5qOD4rvT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738677354; c=relaxed/simple;
	bh=gZbPSPG69UMQDfoBJQt7UljCFORvbc7uoBOBAEJb3yw=;
	h=To:Subject:From:Message-Id:Date; b=BdO3XWx2wgV031J0CyiUlTsUA7wDUGYFqn5nbGSQ7JawqiMsi0+rw4gGHZNyIKM7qPScEWJsqnZSwwHSWaUCC3+ngMxUu8LoGSWsbJfuHCHCkugdoIPtTB2tOUpmAuq8r9Ap6HSiUr1hTB85I8CoJN2o8sY/WeowWVynbMJftPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyDkR5bc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyDkR5bc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F0DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738677353;
	bh=gZbPSPG69UMQDfoBJQt7UljCFORvbc7uoBOBAEJb3yw=;
	h=To:Subject:From:Date:From;
	b=IyDkR5bcDG8R2c+tF2KKYr5MJ5lqY+h7wyNIclV4uwIGDaHFbWc7CWFEb1eU9+5Ru
	 usNmV/Nqi+WmdAwEnv3Y9k1lug7LlIjYVjeAaf6syRsWh2XmC7nfdVFmBqtCOe22po
	 EKKgUoC6rUaEQobRj15Zc9467kYoNtZ4RZ83YqvZ9d50krVGsYF3ppa0LPUIZe1HrZ
	 ndcz1gNYjhemr3aWFsW4fm1cQJlDUTNjRMiX0GKtqboqePHM+VwaLheZoJgHqHbQW3
	 Sm7JFX04LPW1aTVSKulX86ZK61Ze3Y4esRPGse4yRc48kG03KEJeqnk5mjqnwU5mOt
	 MN1Ttl1YlKjFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57BAC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867735366.9339.15161540342797890807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0109647347dbfe74ddc8f2aaf40c4ffc562d8f4c6b39fb88cadb13d836fae4
Date: Tue, 04 Feb 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738677353
