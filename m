Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A4B3EF0A6
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787562634; cv=none; b=KgAh+zHvz1jiIEUTymMEsIoXgBNm+mxW3sgZ4hYPnZOfHthRvnaz87JjgWH+g48iNC57ZNX2N551Nn+7c29suxdblodZcPIo2QEfoJ1r9k1cNuLqWWmj8DGEb9w/tK9E5P8nC3iJ6PenZVe5qLa49TwMv0bm0BrSZ1tSwAq9+ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787562634; c=relaxed/simple;
	bh=FEIIVJA1d5nL8+WZLJnQ7zGDTUNXQmd/lfRJmyjLIkU=;
	h=To:Subject:From:Message-Id:Date; b=DOU3XbOHyNUp9Rdam36QeE+GqC+oXgh7xmfFb9mD+TNEK1xZ6ntS+o7oklmwGX7I8Vwa1XfZKPN5iP67xLtQRB5KCZ4WwyZI92YwNyLD+mOi4FyqMHeWTOGmzaLAObnKMkYPfD2voNCpmkDVJDaQZ2TMxvaOi3hYrFtzcLeWpUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZptFt1z+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZptFt1z+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68CCC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787562633;
	bh=FEIIVJA1d5nL8+WZLJnQ7zGDTUNXQmd/lfRJmyjLIkU=;
	h=To:Subject:From:Date:From;
	b=ZptFt1z+R0XywLRVpW6xgtSeypwqn0eEJlOlUgamvm0nmu2niNgV15rwg7YJMrE4V
	 k5o5ugg24hZOXewdf3ZMapHQAMEoZEpFZnANZSfXKnfLb9iO3WSej6fSX3EBLPbzlV
	 ickwhcsF9YbhnngyxlqAsnKSGMaMjgA0NmjMRYVQcd2V8zbv17vPRjyAqyUl2bgbTH
	 fgoq86+zSIVkv2jOAGRjlmbvlV0XKD0hOOwiEQbBCmHkldN3+HvttcEbCKVVn8Fphz
	 fbj7SBbohoFfGKI/pX2DSpHbUiQXrCp8BRK6f+yhsJPMIJM1OJbOe35kqIoanjeZGR
	 x0itfDTIuwuZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30A8C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756263372.32627.16812230050310521212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aaf63ac01b88fe8541070da78828ab30a47dca076dc90b25722ca46a29e843b
Date: Mon, 24 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787562633
