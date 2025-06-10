Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1669D170A23
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749555594; cv=none; b=b1VaIqhQke15PLikLy8N8rReVS/10kGH7NkE2XOMPq1n9xDNNzkC8SGwG1AUiXJDCiKOvEEpieYFKLUivBb+IAWoTDiU3l/q1u6hpUm6SLWH4JKPBv2zwW0m402vPgOeDBm5TBMrn83QuHa2TiKi3wLWdnirsP9mMrW7sBWODfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749555594; c=relaxed/simple;
	bh=fiq+aRUUX6lKystTeg1+te3B+Mh57hx/0Fq3DIwlpVk=;
	h=To:Subject:From:Message-Id:Date; b=gzVdmEcCHADB6sO5S5qV5B99847RadNVIfhGrjgY05TydecXM8hfVJ7eFhWhb6+yNEsYcSdpFGdHQWGVOC0ROtBIqWtcpef8S5srJ/gArT35CTp5xx7vcA/lwaDvWuGJC+5SfqkDtD2MtAG9bumaWhc1ivxSZKVJsQLYYlME6KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg17sE5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg17sE5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F21DC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749555593;
	bh=fiq+aRUUX6lKystTeg1+te3B+Mh57hx/0Fq3DIwlpVk=;
	h=To:Subject:From:Date:From;
	b=rg17sE5CKryuw0gcxdbDQdp8wF1G6Skb5D8+0oPQBVudOshoMlA+ajojPHcy97Yxy
	 jX3A9Db1QY9syi4PrqGFBKR+xTQNxVFhO/UPLuK6ljdDHNUEEs1QGWZ61P5bToa9At
	 E1O3Cr9KVr0Bds6f6VDOOqir9FaOWGqcPJDcL4+zUGUZLcxaCwywlxk9tkLcQTmssQ
	 oCcpTBnZsIpuXlP9xLrcx9wutekZHnXWAoWG75Ys0HCfLrqTAKOTFVdi0GbzLj6a6z
	 +6T1VMTHH5hC9eCVLTMi6E3HVw+NyQ7l0XQIeFlRynUHU387zB4qnbadvaRW98TGxK
	 VC+TD81YuOBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE30C5B543
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955559357.24386.15541403414692832809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e68bb93e429e0c3fe1f612c81ec93bb3cdf72b340f60dca9e2caa1b8ae3db90
Date: Tue, 10 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749555593
