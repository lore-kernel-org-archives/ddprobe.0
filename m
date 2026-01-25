Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616863CB
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769349234; cv=none; b=UCUW3zKcDO1fv2ABmLAr9W+YJB5fWv+xVc4gp+8Jv7OB9tEwET3fT6PDbhwTHGuEVqVWBae9rB1xK2IHGffQVr7VJoEEjztkxKCLjePX92seWCRqAFUBBE1/2dCxSwY/wlnXZ5Dj2cq5ruEq5U50RIC5mZ4DC8fi56BQ1B/YOeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769349234; c=relaxed/simple;
	bh=foCnkCjOhmlT8ZnZrK6/RQN6ki5KaYoRFrEcrbVkIGE=;
	h=To:Subject:From:Message-Id:Date; b=Kkz3vu7W4FzbvhH+Qk1wmEY7LDluQ5h3TcIS1Vk6+i7sqV6uyQcqWvw/gcDy6s1N8EyOhTX1lYXQ19iDEPusBmtQ7A2SS0YetUh4jXozMW7WNgDB/01GZOagpsAZGfrLV+HG0fZca1cQD+pALgh5XmmMc7irod/emxMA11neCXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOKcDzRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOKcDzRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91C7C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769349233;
	bh=foCnkCjOhmlT8ZnZrK6/RQN6ki5KaYoRFrEcrbVkIGE=;
	h=To:Subject:From:Date:From;
	b=lOKcDzRw5VUGOmY8sJ/NE4wgLUpTL4gP/gRZIpEzMCgxv2IxhlIYZ6DC22W3QnI2w
	 oEcTs7mmaL5DEtUPN8PkmtvPLIum0Sb3nK8QjEUv2jdpoEyzNAl5lGLk3S6h1hHQGx
	 jmCoCmAdnHs32BGWj/P8JNYD7aR2VKh4YqK1MmuQQlnt2olr5F4Div1QYXuVgvMRlf
	 UhEZ36ee6Xyapc+RqUpBHfY5g2q0V46bhTp31E3Hcs6CTLeMYjqbk4zOIQClPDdMxc
	 PMAO4jen7m5DLFC4Au6aQDIgiFqcczZt89msE6Tdkin6/oV8/+85SJEBKQcTVOB9la
	 bU4EtFpAQ2EZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9941FE63CA0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934923359.14040.6017698466013526186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60e9a656c2c5ba4e89328e4c0c96b1efbd9ab85923c19af5a8ae7a92200f8332
Date: Sun, 25 Jan 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769349233
