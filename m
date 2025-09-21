Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4A91E3DDB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758423594; cv=none; b=JCe/N0PDM4r0MtGfpCohOelxCogomGye+jEr0/4wA+MZm6aKkCaKOmTJIjC7h8hntkQkpM9NbagwHn4rYKrBidTsGxfZBPxqA6OUlSF5TZsiRUJ+nVKCbfLeRMHAwLCHErnqsgyE2Hlc5wnjzeNWLUG1DrZD7lbeOHo9rwcw6hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758423594; c=relaxed/simple;
	bh=m+WyJDk3wcqUDJASTGpyPDmMWTbXguYyI/EoA89YzQQ=;
	h=To:Subject:From:Message-Id:Date; b=NWpGqtbVAWa7M0nHhX7nHzGZQ1Nho/x4UJLivb/2sZHWTu5t29cz+uLrLP8OGYuHhgQzzieW9XDq4VZGXeneC4B/St055D21B3+5GxMIY8oyDo00a2pb9m7FXAs7vvD+uXj5N6U4plu7HrSSCmvDuOXzOPELIC90gsz74qXhs8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM4wE0BY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM4wE0BY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63B4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758423593;
	bh=m+WyJDk3wcqUDJASTGpyPDmMWTbXguYyI/EoA89YzQQ=;
	h=To:Subject:From:Date:From;
	b=dM4wE0BYWNNQNzrxq9za7J/BMyEAtcmb32mXjmJlZtPi2jya0khK08/rjt+V1sp5T
	 uoonXc8kxuH3yiYtkSwGHLI9U7OrBEH9Vyqw6zVy2mRrV+5yPgmj1CcjBv1dIUPm5X
	 7asKpvQVM78DjzEKzci0QTZiipAYSK9IysC/mlrDSFalVzvkJM0YiJEsDe8+dJNgap
	 8P799sbz4cCGxJypkIkslYqckaYGQdUBpcCojOgA2A1Bgq7YPcKbkHwKhohoH5hAho
	 5s8u+SH28n+FIInwrpuQnirS7SBVbfK2BwPA5EJO6wnlFtSCqvV6B7pGL59Tj0JZEB
	 ugusBVWNMr5Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9491CCAC5A5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842359357.24831.7212738313917328449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d781af3bab181d5bbefc0ad8214f1e85c35460670f94b7440e21a40b0d87057
Date: Sun, 21 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758423593
