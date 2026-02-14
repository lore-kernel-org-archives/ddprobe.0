Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBE526299
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771046094; cv=none; b=nuuZheszodhV37c/A+zjst+i3zGUnjlxCNjrWd8YR2nzmzqKGdS6UQ5wG0MBdGFBZqxdZcEr+lCyt6oGP7Iv7GB3MJ+zctsbA73mSiwMp9QxE0JiI6+OhkneeujwZ91KY7atr03R0K53r93gvi42HGKHS7wJ4o/tRzL92U0zqX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771046094; c=relaxed/simple;
	bh=LVsc20vKa2qEsMwXTI8Fqr5wYNfXf9nCp0nW1La8jms=;
	h=To:Subject:From:Message-Id:Date; b=Rofzw5k5UJKpVwEKWR1TY+wtFKfBpyIfLNqGBm3ik+a7KJxPQoXYpl9b6KApBlZO4wT8wb/q9W+2v06XIvtfxbTxvJFKTqLpqaj+5v/PyUQ+cN1Ms8qDXsbfI8z4IbriCHHg9rzewb/qAsRgof12LcD5BbxK9TVkzPDz4VYAvqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry0beEf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry0beEf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08F8C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771046093;
	bh=LVsc20vKa2qEsMwXTI8Fqr5wYNfXf9nCp0nW1La8jms=;
	h=To:Subject:From:Date:From;
	b=ry0beEf+6DeiqKILZls/lYsJlClGCNrSdesAfNaBhgiXJz5+XJYd+yAJUjniNE9EL
	 SmrH0pGv3osoEJvM3bpm6a28kGPnF0+c38o6iyevG0U6zXYv4o7nMIQo08e+8pYpvl
	 cREyQAfWHWidyosBBUZIeDmFuIgx03yeuNULgx0XLXgpbA0dPIDavepeM8zF4IHpmG
	 PKNOYHvodxVpPDbM9uZokk/wrZgEn+Qqizk0VFxzKLNbDoZF0ZKZmXUYOzoLl3ANQQ
	 pz4Xkzi5wEekqDdH1sLfR8o0qotFq9D//bBXfGSUX6MOAoMvwTIyHzF8t3XtbHaQxo
	 fgczfZOsofeIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EC1EF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104609359.24482.535099590307056140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03838fd72854301d64a12ffaf3957b342294a97e5caa71f36852708be0023728
Date: Sat, 14 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771046093
