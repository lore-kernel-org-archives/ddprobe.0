Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1A92C0263
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758115194; cv=none; b=MB/fU6tWiCbUdeWtPNcJbqZBya8lehwPuPcq/PU5HXj1mm/8mx4b1QAgKVMN16n4vieJVi08hSJREDqiQQzkZBocltulPdsLHw/zHHR2ERLEWHkoAg4SF6wfGuwi4mwjeSHBpac3/jivR7MC3c0E9ZNnYTEU0ndCXRPtl5ciD3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758115194; c=relaxed/simple;
	bh=VDwx78tBYomEA5iwZgMCdPpLd4PwKvZZN503+mevQJg=;
	h=To:Subject:From:Message-Id:Date; b=fLbMdIyWcbA2OGX6cjVn23m98QSw8yERRbCiu2dzyU1+LJVaslDvsGOaa9XVOmLvtWVXXZcaRRPF2CUh90seVP7dbdNNkM/ceAdOXXa5ii0/tpQhr9ui2VILVbbMcHfHnFuuEqi153AHsljfBbID6UNGedGeZwZRSfFg1OriSws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTfIDxSo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTfIDxSo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A64C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758115193;
	bh=VDwx78tBYomEA5iwZgMCdPpLd4PwKvZZN503+mevQJg=;
	h=To:Subject:From:Date:From;
	b=uTfIDxSo9BRV3MXAbIIGINXcZ2N+mKiJfO1PJHT48ITD5GJkZCWWtwJ4Txh2H1Laj
	 lNTe0oDRViJPyZ09MVQa52iAjsZhtFizKk955VBblhJzu5aNV9yxDUZ0xuZX6imRZ4
	 fN/Dl4qXm8XX9o+uzDM6DfS8mNtNv6RZBblDIi3e1kp4l1hHtc9PKlakGUYo2QmxCX
	 cS6PccW/5fkoDqZIOW4KCdZ15FPK0xugMPjHq1T5VedNZEIATjPCnOBXUQys1Onnfr
	 fPtNhxXya2ENXLHyZLt1Sy9drEy0eLg6zHkwgdH0BK+tUof+VMROYZ4r3ydnSuk5pj
	 SSEIVxcb95V5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB5CAC599
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811519357.17399.3610273806547369941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2297195f05b6a79cf95d4b07beded00bf9227814420cc04e3ef1821b45c259
Date: Wed, 17 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758115193
