Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2825822301
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752891594; cv=none; b=HMqbASOuONxdd70Rev+2AYbeuW68zjoujne/HdDY4Xsb0fYczQQu+zWO2kg2zMcCsLH/lVC0z26nByBlzndVAnlie3OpIzaeXwL6qVtwhdaB5tQStLX7J2CfWRBHzwdz+8UwuK8hC2qN6d/F+OoDpD2/5JfoBN3BUB1spLkjWw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752891594; c=relaxed/simple;
	bh=XU6+YVT7dWLby/D6lskbeNqK0qxgKyEe7Klq5K3OHRc=;
	h=To:Subject:From:Message-Id:Date; b=hmwiH9zEJKjdHHHtY3Hq5n8d7F94ccFkYVA6/Qv5EMBpoKXyHsrYJkPtgwyXzhonF/ag03YBdCYABO7iEfpcmJoBoBHbMSI8Swss0iLwp10wK5J9vjHrS9UKXDSsulJqVqyB+zCrADSj/8W2hHq2nRNDARS8DCdJkrh/2adNmfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDeyN0X3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDeyN0X3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CA4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752891593;
	bh=XU6+YVT7dWLby/D6lskbeNqK0qxgKyEe7Klq5K3OHRc=;
	h=To:Subject:From:Date:From;
	b=jDeyN0X3mZ9JytSxMYsxVFpZVc+yizpHHIPv3/pH3GlXh1eFbdZqzm91WEXCFtjdY
	 p0pX6J70RwJUWKSTdOSgfhwnJEfGvMmb0oj7LExHEPenNbqCokAAyXvsLSQAIWyDyK
	 RDZO/3YepfCFsK9hAkTocpV9TY0bynryoozMs4hcKrJTbzMTkLDc8X1V8DH6+AC3M+
	 0UwAvOXUow09LpKmnGunKxpKQaIxS0VJ4QqEUEfM7oATaCB+6KbajCw8wheC2aAgSj
	 wCAySeEY8kwSazQG3Sea4TPkv+4FOu5IXssbMpd2NVsBxVCDYNwyxhTmzuxkmRXgtU
	 qJwDbrPVA85HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC1C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289159357.5079.17888505651184936497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d055b58c2d04dfb529d450ff6fb2f027810f001a88d3ae8e0531dab366e2bf
Date: Sat, 19 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752891593
