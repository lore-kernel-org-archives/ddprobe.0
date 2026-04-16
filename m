Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1199717C211
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776298654; cv=none; b=TL+DlkyyQWzuzTf6bvZNTik+wh5qyASPkJUt5KPK7jrk1KkVuGPemUf19264nojV6hbvzxb9h9dV2/nM7uBKUQja9idkBjYk0qoECGnnP4NE1i6PIDbiT6nTZRzRSdnyHFSFtTCnprId/uwvzTO6PRTOv7oZoJt2B50iVcQPD4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776298654; c=relaxed/simple;
	bh=ZLZ2gjiPcmWRdreZ45lXpVvEgcnzR2M1T95dkpRzTPs=;
	h=To:Subject:From:Message-Id:Date; b=fnZicuYAnDqifXh5nuMpOFdAKqNdYU6U2K47BTaibJvpeTEBTDIOBUOYflzS4Zb1o5JBzB3VGSPEHr7qtK+GP7201d+QDhPlai1FcB2Xfz/WltRy+YEu7ssaVJtR2ZxjcKEqoLfTQamlwS0vLqODfkWe8TFR7mYeKSDQvVXuIkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pt5MaM4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pt5MaM4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA86C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776298653;
	bh=ZLZ2gjiPcmWRdreZ45lXpVvEgcnzR2M1T95dkpRzTPs=;
	h=To:Subject:From:Date:From;
	b=pt5MaM4WKII4pNzIY1Rh2458qgBSG1uREQ2mE0I8FkXUUfnKxpcX8LOe+pLusukta
	 EQig2fIYyXk2VOBcevK6q6YQB/XH1oNxHrsM6NJoz7iJOObo6pajLYNnJKYyRp/VyM
	 biOZI6Hb12vQHuJ0aj7syqORKK7mpiOMKMkMemYX3xdkEuD5kTQznYcJKonfYNgnSt
	 Q3DZefAKWTdMkK6LW9Ph0Q6CS6KyTWV+l49XZWrTSrJlZo/YxKYvzcYYRf/ysxC6tG
	 at7Kqt9kP3YF0TeHqyNLx6qKHZvFSCzlI0Nsp7VWZDhtH5dlU0CxmYN/D1VjriNdQS
	 79diRzbnukp6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD43CF433CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629865368.7260.1442326381225862079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737f7629b035f2944af8220b423100d44bf4d8be6f663062faf75bf6c24155e9
Date: Thu, 16 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776298653
