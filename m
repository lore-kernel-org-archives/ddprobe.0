Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDE83101DC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769624634; cv=none; b=GAvZIYvTK2HDd+/RYMfIFsq77D3KqsiLA77GGAIQS3cq3P/Lqpz6M4mFt2pFJgAnzA1q/eijAUtlHa7CV7Pgz4cVs4kmc3iC2PZbPZZLrSVq7J2NLfDor3cSxSgyjGgEALg10X+xgNkumfNC+j7fTgI2MQ20smAmevJLmcqdfLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769624634; c=relaxed/simple;
	bh=0JZRs/k2QXBYV4OJgsPwxW67h2O79LBkgiXEKnhNAeo=;
	h=To:Subject:From:Message-Id:Date; b=HScEEKInXadKfV0KaQrOx8cHY9vE9edEZ9I6F8/j3fvetmS9HClUtVRQ2hqBrsP4WdJhsjGK+U7iBSpjENK934mXSoFBHeqj6GklhWyhvMBkeaPSUKND51yjK19NxO0mGrkRWIkhAuzfmeT62aMOGdRyzYXpaChImMfT/UkAFg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeUTYja+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeUTYja+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECD5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769624633;
	bh=0JZRs/k2QXBYV4OJgsPwxW67h2O79LBkgiXEKnhNAeo=;
	h=To:Subject:From:Date:From;
	b=eeUTYja+qbT4IUkIONWtvQwo6mLwI6Xyx4V4TyN7kR80q4JoNlJb1wc8NBAf79ZYE
	 TA+43RSZM3/vb2V0C6pojFquwOahnIbPnuC25mlJE2KuFtXOxhrut8MvlqPHmYV4l6
	 p+90Bjo/eM/9a2I4ayvYuJjSyQWLOS7VJ0FKzad5VJg7MfNaGP+yGd99n4AKhx8Nk6
	 QrXLm1uUc75750+HcGccy2j0EgJ1va/D1F4Ww7ZwwtZ9eHco0uHuXVpyI/qiy/x4ok
	 6H7XXeUdkdAJdALYMPoT0SJUZdLVI33B9DQUymcC9CvhSVIvxwv9vhopO1rglsN8iV
	 a17gyXVlzbKUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9159FD46BE0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962463358.19852.1787652967917487726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce6c6cce1e934543bfaee745dd003481d980dcc69e661c31280324d5d068079
Date: Wed, 28 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769624633
