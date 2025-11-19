Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B99E23A9BD
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763562121; cv=none; b=Ye3BQPAJHuJpDQryiLsGstI422meiFHbQi6Y9HB4C4rC2ZPxqIAhMeLQHwLWXssTNEsE7JhHUUa2NZFZTf+ou5WK61yfT0SQyJavcj4mYtU7eaRRXtoFC4RMWS/kvqKnDbLWJGwcxFnPyqvKmWXeG63OlHlCegmnnJeAJ7GpmVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763562121; c=relaxed/simple;
	bh=8aJJvM26CEVz+P1V//iMqkMhIiZVC0XcHG0Zpm6hWJY=;
	h=To:Subject:From:Message-Id:Date; b=C8sauaVhK+d7FgLuk6poZVQu52/PKETOlUQFJDCbbAvTflrEWoX3Zh7sQHgit0bZyxO5c7HN0OXp2vYgxk4wg8VOq2VPxZn1KRAMvyNsd9/oGK+EtpHDM4FXjZAuPtBO0f5ENBUDD8Nh12oNKukAqnDu7eNboy/myzwjYEBveNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQS8XY/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQS8XY/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24A2FC2BD04
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763562114;
	bh=8aJJvM26CEVz+P1V//iMqkMhIiZVC0XcHG0Zpm6hWJY=;
	h=To:Subject:From:Date:From;
	b=CQS8XY/dcSql4Ndyhj+r+3jGqyoi5qU7nWu6W4qV28lhZuANt/obtOCSWyyr1v/dJ
	 /pDnUmSN/GLzIH2DmOd+UF84scJt4H5NnfDYfYKgzljoX4Wk1Cp21Zm8DlS7xS83qw
	 sdwsL8SH/wPt7nwZORjXMAY8pX7fAc+dBCe+hpbmNrCIyaYaqi1Usjt7KGFpi9RQ6/
	 OM4wMe9LgUQU2FC5GJwMotOCkkmDJ5cODI+ZsLKxFelcCuiOAha8pEavDh7RtPmgmH
	 HCeXNNCXosgzQgZFGOBIX1/Of7HNPLoop3hjbSYiv5qJSw1ZQRh6TR4N/8OMzt0tKT
	 O6+J4LCbsEsOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F85CF34B6
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 14:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356211361.25254.10084847832590327686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b560bd7931f11044ffb38278e0f0b6abc9f6517ab201e7deed20a49bb99a4264
Date: Wed, 19 Nov 2025 14:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763562113
