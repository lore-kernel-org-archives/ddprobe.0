Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286B733F9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759123794; cv=none; b=eNjSbG38TvRUC0e5BRvlmvoBo+t1YZEf/zdrgZcyhU6SUNe+gfFs1uK4r7adYQWW8brxBk34B9FbJD4H0ZlBTtUNhOQ61gENHvB576frdFh9HCUW+VQodL4lhzwHP4UHnlxQTFbcfpKy2FYhNfM4XSH1XBLYKHHnNYMWyLqtxOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759123794; c=relaxed/simple;
	bh=3Nyx9TpPVmhMb1irJBugyrjj7MbwHrt/oqptfZvD1s4=;
	h=To:Subject:From:Message-Id:Date; b=EU6NA61SeYmHasjySYC7WP1oEXiPUHdrFmf1nRUr9kx23qsgEsmIzYEYVn3i0Q+nY4ooQpGzTrHX98efOnYDSoGmxeJxyQIGahkLre+YLf5PGyzcA7yJG/Rw3cX+1bBhuTUg0CzLv4FqZedt1nysleAP3ts3m18HV5Yc7NQqLRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/d/dn8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/d/dn8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA184C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759123793;
	bh=3Nyx9TpPVmhMb1irJBugyrjj7MbwHrt/oqptfZvD1s4=;
	h=To:Subject:From:Date:From;
	b=J/d/dn8VKXeAGcMCym11IgOwNgDrZ5l9pO4enCknV7HCV0QrrShqmrh6YAcj0zDa5
	 UtLi4ia1fp7MWE7CULXnFhUvEGv8Ex76up7xU4AiVhfC0EV+m1JDBuT5SCQ4sTEJZO
	 1jdriD0plUmb/ntKan4T/l3c2XvIbAhZ/CWbUEf+K4h6qG+NEFg9DiDr3PFWtchq1Q
	 CY/IaWaxGpdu9j/XNVy+Lseka683I2s7pIw+hceYf/PyuI5rBUauzdhV7pFaLyhA83
	 Ih541GOXToHml0lt/ic4Z1UsQtFXqJJJlV9iDEfQjqCMj5jfeWqHgFJDtimRPtVRa2
	 ruEwyswQQivfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E3ACAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912379363.26663.11587295121205897858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5e08624143ae27c56a1e3a836091212f400621d9edf0fc09693954d340a9df
Date: Mon, 29 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759123793
