Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D71D28371
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759003194; cv=none; b=YNthP/Hhu0+MsIM3rXCf+7iZOwlGAO/CfYj+aA3Xbq/jRtJiJGBmf+obdrHQv2/UwoctqYzxKtKJRCvggr7vsrpTBigvk2WlR1TQGJAfPzbUsqDj2soCzoGGYMqePn8xRrh47KzmDn29Pe8T0FmPJCcY7NhgmJxF3xJ507YaD1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759003194; c=relaxed/simple;
	bh=3CNvSS/flNIRapos2FblFdgwD1Uf8tDkD7b+AA0FXJs=;
	h=To:Subject:From:Message-Id:Date; b=ZhAJkhD+7rY0tHfeJPT8jPTiq0IPQoeaCUwzTNfpDVTWSR6R7PgSjWeWpNwtbrgkSC7DKlr10TabQSq1UlJK8fYKAek0qHwFIZA9gU7ju3xlYxjUkHnq4rCWBvimdddbS9+qFVVn1wTKx81SViWX+uaQAu7TzF5qXkJgPXOkrDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpSeAqgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpSeAqgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7116C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759003193;
	bh=3CNvSS/flNIRapos2FblFdgwD1Uf8tDkD7b+AA0FXJs=;
	h=To:Subject:From:Date:From;
	b=lpSeAqguuN+ImGTBlxwUNwuhtj4w8GLPZYV7MvWksLZrOqcaCo+ajobuimqzczJtt
	 M4JVe5fYJmY5hXLvsp/1MPV9qR1P+JF92GY0VeijEIWg4dcqMqQJBqZQXj73V62cKp
	 SPCMjijMQqWfS2kasSnV9RMzmLphv2qevtGSjXqmIVGTa0V/vRy2SX5wW+zdkaNlLP
	 3VtChdbIqPrQ9ichf6eIM2HsBxiCLPIzKLPznWVPuHR0jqXyIRW/CWlWmkSrDn5qNv
	 LY7fq4vKhOm4JS2hEOtFlkQaI+Y9lDttkdl7yTkZM7GJZv8NCde7mFXd0bfZKqQhxP
	 KAQncFv3i52gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941DFCAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900319357.21846.10379880357089378273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcdc25ddab270970491afcce59a8c52030948ca5f58ad7ec2c8a1a89a7ec410
Date: Sat, 27 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759003193
