Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3186181326
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712779097; cv=none; b=BZszb7MH0rc4VZIToHN8dP3NPvHZp9/SWVT3JiUwAR8uiYeWKiqUemPZMlA4REW/8HbOu5vspal2J8wS5o38zuGwqxg+xVUc5lGMQhjonxq2kXs1Y9ja5ck4wcrHFZevYP6RvTbvb5IQpbFNMYbctdNllVCWG9k9+89nPNeozvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712779097; c=relaxed/simple;
	bh=A5aYJPcRvelzXJc7ARLsbbVBSE1ujJsPsiMzR9X0K4E=;
	h=To:Subject:From:Message-Id:Date; b=rdFsaLGeiDvcVfzZdUHSlCEozKYgoO0TNjCFqGqYfmJNkMz20d9MP8ymk9HswbwZdZGpizt19slXlpI7YlQ3ZXUFDls/7GHzn+a5wcw1pBJArlZXmQEqhFFsUYhTPoSOJ8FpGTImQhtVxyNzBpC6qWO4KxvxEdqS0OyvWIJ1QGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gToha38T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gToha38T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8261FC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712779096;
	bh=A5aYJPcRvelzXJc7ARLsbbVBSE1ujJsPsiMzR9X0K4E=;
	h=To:Subject:From:Date:From;
	b=gToha38T3Sly4hhn0qySUHNna0B6DO94tvmRGOKfypzpI3k7IU5+5lB2g8dQAP3fq
	 IEiP1LTL6i74YX5+Hx5i3pW7XRgw9ICwXdeomYG9XONTf8X2G74uHGur09zBHdI5hU
	 UqSBAylmu5crfeOKROF3NHUBbxuXGFwQZTK0njg1sGvgmXJpGseUlHpUNskC4qeIxG
	 1xxNB+WJ+fz1/TyevAcxC3RirFjPVTpIkVlnY0sUMX0vV4ktL1+pygYF7tUX+yBV77
	 0UNjCHyj6B++QnkpVJyoS+ZLgeSekBs1mog95kQq+G+ujsFoCU054W9mfX8gknOpDi
	 5LXdhbBX3wupw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70EA2CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171277909645.10188.3522049707078834416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59347d0f7a18df41dedab404037c00132eea35fd4e5ef198e6fc7693aac9a2df
Date: Wed, 10 Apr 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712779096
