Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBB74A9D49
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790002234; cv=none; b=DNMr9eeINJFLpNv7iEAj9iFg32oCuNnyoJm/ClS5bZaIGiKUc55+Ktt5UJ3Y1VfcdT/ULoTkEhONSmeemWXhh+a1Fa9lTViiEAVl67JbHMc0+LaYPfqPB3Od0J/tMHDNi9URkwb6Cp9YsNkce9bxfTm74sfstOEp/BT6Nu7YUTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790002234; c=relaxed/simple;
	bh=YEsoujHXxhFh4rbRsURFhkBqMedB6Acl65LncxEruEg=;
	h=To:Subject:From:Message-Id:Date; b=R96rTqEt3YckUNIPRMI1orv5UXuHJss6XsierP4SMxJZ1/UPwh/+rQ+AExoVQmyBTcHXHJ6Gb+6LLOyDJbSYYh86/pVZ05rwR0j+DUB1n+11s1vvUj95nV0kMuVrfeyksORqrzolKHnRzojw6vu/RfQfpCdGncVrSFS3j5ICXZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syTA5Lpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syTA5Lpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBE1C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790002233;
	bh=YEsoujHXxhFh4rbRsURFhkBqMedB6Acl65LncxEruEg=;
	h=To:Subject:From:Date:From;
	b=syTA5LpmUZc3ht9JdiQctAV+WGNOzCY13dKdA51F09jHaIR9O+MfrvUL4XqwuqPno
	 to6ZG1A72vYVZmqiQQ4Mv4i38vEwrmEwOu9viYFOdp/dD1LgRLSBkBOejGwl9PQ4CC
	 HN/G43AQy0GA8LvaPhnqqNEN8MgDGSdqj9ZaEAEZh6J0wlJNiT4KBRI7IWEk5apZ6e
	 w4zU0127eAQTvX4OGJjOQeeltia+Ziy7cYyOANBB/qbivm5DOkqgKooPJOIwb4i10Z
	 eMlmfgI9wvUrzv5jAiOXCzreDIEiGmeoS/5F7N6kfIEwKtYssXsZGpRvnOelSLGwly
	 h9hzuwjcnba4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD98C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000223369.15197.5845104108211360628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff306a9048904573e5f532bc97ccc71a451b1110a88935e8e743c4fb8602f61a
Date: Mon, 21 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790002233
