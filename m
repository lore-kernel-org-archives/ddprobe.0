Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C92740FDA8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777986454; cv=none; b=o88zAqo2tyViO9yvSyCP/MrTm7xOzN9Pa6Khv+gElYqTW5JrkSY8S9ZkSbh1tZnJTe/K6DSKqEDXQ+9WNHrL1kF9v2a4Ppb6AcRiFQZw0M3u34WPJwCSn8DRRf/htt81CcSmYdwTN/QmtP7lymwbA4Fv5tgFYdTtC6pZmsNE4bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777986454; c=relaxed/simple;
	bh=eXmk8Csio9980FiIfvO8VXifvGoOzcKBU73mudJiVyQ=;
	h=To:Subject:From:Message-Id:Date; b=MB+vfWbad4ea4TXDBtg59HajvPRTGKJT4NhNDexqWeXo+b2x9CrBedM0J83Ehsyf/jqZ5Ru8TRcS6vrm4ekb/cRu84NT5m9BP7D85L9KGPXDJxrVb6LA1vI486oA/qYZkBXqt+2NoYkX/wfsYfLOCBZzksH9z7RSQv4ZxrF33jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdXjIGBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdXjIGBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAF2C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777986453;
	bh=eXmk8Csio9980FiIfvO8VXifvGoOzcKBU73mudJiVyQ=;
	h=To:Subject:From:Date:From;
	b=CdXjIGBndYX9Nxxq8hR1DHaOBY/HilgD/SyJyp8RcSdamrhQsU21w9jS2bQELrVHx
	 WEjH8OYJ1jkwKoXQklWwJoje5GOr2OAxm9D2kuDzdM7BV/FPF4QT20MoXhcgAL08XP
	 ZDYGApz7ObMhabzqk82aDFA2hKOUY9jhWp5hb6dksl//SLmf+5RczyUW0/+yMv9ixq
	 Ib2Jo+5I7IzSEIGmJbVn95Nt4RbEzJs/U6RbApDA/m/4XApdJUW2YNzFnfLoIuwkiL
	 eEFk+4G+obXYaSFB0fQhmw8aCU6frqHgSrK3JWWCAQWk/DbeiEJMzipMsV4O6vsxZk
	 SwErpIZcr4qWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA869CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798645369.3052.17956076765603341162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5552fd39cd6f31db917cc9fff9c6d93af5d199e36f7dc692d75f1552a4f3aff9
Date: Tue, 05 May 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777986453
