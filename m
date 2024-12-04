Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEB41F7590
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733321154; cv=none; b=UI8Az2iEjOybLDZKGxjpm7Pib761MvQlx8ix4G7m07bk5o0nmtRySiDmYKVjoQySueQlvPUQipYXzS29ACV/QgTkmDcAvvGBuOgGYAbWZq2x84a6kN1Zk4iJMVr20wDe3tZcWkexqG7u/cw2uphXuGDHKVec2ISYpUrFz7c4Cpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733321154; c=relaxed/simple;
	bh=1knwWoDYtYkUZFVPdbeV//W9a7NcYVjayopXFYDAwtw=;
	h=To:Subject:From:Message-Id:Date; b=ZtFFsFy1+pu8hI8yNJUW7rC0RiCxTqnrA8n8M2V8+5xihn5DJSNK5leDDUzk1ACQnnEPKCNoMcjz/INEqU5T02VgoMcHQ19yhV+vw7nBxgm69hrQvhYS67q2gcnsjrYUX/8IS/ePXTuMESlV7fP+iu0Id2EjQxJetEkKQ9ChlOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSObG1n1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSObG1n1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A28C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733321153;
	bh=1knwWoDYtYkUZFVPdbeV//W9a7NcYVjayopXFYDAwtw=;
	h=To:Subject:From:Date:From;
	b=nSObG1n1WvHye0JsbYb+4gq9F8ZuNtkvDNJIgnR9Q/fwzIiJIAUw0bRqj5oZxUtad
	 4TZ0dpeJv2rVQkkSygwb4SCUvmBnd/1PBGgksvF5Wn7/JDUMYQk5+quPscSI0h0WEy
	 +YEoJZveRW4qJSD0WQXYk4TKTF2Se0lLq1dc8X4/2JGFDP58wAf/zkelz0LZgtV+GK
	 MnqageiTsGMwbSZf4jlFM90Q5vL5Ug8DcTz90BYbYcDOc/zAY0PsE5vkLw94B1ok5I
	 1zv2cEGw5BQZbMrZGgeSiaBsG4FpPQroHObtS7vCoFTFAziPEt64hYlg/nBdVoB+gM
	 MnqLSRE4Givdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168DE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173332115358.18566.4557174408972568097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef1251de5a71fbbe4908e8398b407a8c820d214589a025c983b51c186ceb8a8
Date: Wed, 04 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733321153
