Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAAE3B8D4A
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788683435; cv=none; b=LF86xoGaBPo1RO6beNiVOLeU1s7y4zzlVX0t3YAuxWHv16tdTgGDoxsiwyFVBfxZ8V4pAk9Oaauk6XxuHx+lZag9mBvoKgrS7PSeJRjO1TJBNi9DtJTM+SeaWYVTtkZ7WTLWsfBy2qhvZZI8gl6M1VuIL0rZya/1llt2WPHDYnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788683435; c=relaxed/simple;
	bh=NrWaU8BJffZju7nRLhwVwTDhn6vfFQwgyvAD1Hm15H0=;
	h=To:Subject:From:Message-Id:Date; b=cV4jyq9MPgkfPVvK+lv0iJ1Z1IDpvFbwrGFFqfeaKiJbR7exX0t4bHApPKeqT4xyyxXwdkqQy+mBqGMGE5YkJV2h/pJ1kZPCPr/WGYpyFSoQw0j7HVJvwbb+V1P4wtzwg5G0qr7zgQZRnO4Vyrg5bZrolwRvbZ50itgOJ8pzI/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3vw0hBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3vw0hBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A52C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788683433;
	bh=NrWaU8BJffZju7nRLhwVwTDhn6vfFQwgyvAD1Hm15H0=;
	h=To:Subject:From:Date:From;
	b=p3vw0hBTJrwT5EFUxUDSd8al7YjDqo0N8OGZYanfx/WzdQjTkNKEQsXtLcJI9Kc3W
	 YoBstsQsBvWQCCeCaIOrr18Iqm8qs32RSerVMrzqFzszcZvPe1T/+vyqECmrcjBSyu
	 naSQhQ6HjtW3gE1GPdDKrAuMte7N/+i/PaSwOAToXatFaCnxgmoTu8LHJfzteDvtoZ
	 xPOH0AqENeftCeNXl6QRgP7ABYIRwkOifqEsaCeqBkW6IjAa7+YU3ejxWHc0SMNUAG
	 C4sZIWhRo7XQ5FkQYtcCIQFmVUHFWdxbWm0QFlPtmH6qp70p4N1RZ9AAqGYcaj82KZ
	 izLAOdMH3CTNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD140C79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178868343370.17652.14722046327853890127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d07580b994d6b81effe32fb60fd081feb98150db464ef0c437c7acb8df901d53
Date: Sun, 06 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788683433
