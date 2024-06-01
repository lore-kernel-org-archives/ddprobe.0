Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BCDA94C
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717251863; cv=none; b=MTF8V4wtPswFqGqpknBz2HD7L/gxqYUs8teEtYLbTg6ZS4HbxISYXLcpR1BUOv/AwdBkbrp+/tRgWDQ+1hECGmlB3WEZb60p31a5P3sRxrzQlue/DtvIgxk5YPWJnuTp8RaqzlykD54ed7mWe9y60TNHeBDMoM1ACid0yVEeQhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717251863; c=relaxed/simple;
	bh=qJqwUx1VWhn97CN9TADHOdhnT0fhgKQp+HxxERC5bOo=;
	h=To:Subject:From:Message-Id:Date; b=Ds8CuL/zgXAAlfelATz2oT1G9gCp5ADzrqk6ruSyEpXnydFl5i8zdhtgQgEjg5fE+XNZ68msTgDvHeXGQEUjEzf1+u/VUdFcv+20POEEWJTAUcWc61DdAlZnztcCRkysAHyQTLuaaYGPW486YFEig5J/CuwkfGoDkohREYehCBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIUYtKXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIUYtKXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3809C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717251862;
	bh=qJqwUx1VWhn97CN9TADHOdhnT0fhgKQp+HxxERC5bOo=;
	h=To:Subject:From:Date:From;
	b=tIUYtKXrUsVj0Kj0oUq3Djl7ec2be06QOjk0JYlMiynFUslFSRv63jRB3FnTGc9Jz
	 bfRzdPr9pArJHDmZnHclkvj12epzb6UNAona0PBtkW7D0WzD8Sjf9fCzjBYKewMD3m
	 AEEAsXubQl9DmWZPVGxQk80dE340whvNJe/vEV5dxgKdZQRgJYe2VnOvhT49Y3LZ/F
	 r90o6jtpAimL5A+4vIDzevxK7Qb9NLYIVW52XecryMJpPREY3YU/tMGY3hcES+9VYh
	 xi49n04bEa6GKh7XNcuzmJajBBA0udtoNTKCKj/+qhmb9kdRWWF/tnset7jRvVArMQ
	 hlJonb1Pv5Tpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAF78C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725186282.23738.14995323180934495140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e56efc431b74cd6ee069f207498950ce4210d8437c2694c5e9998a26aa1b86
Date: Sat, 01 Jun 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717251862
