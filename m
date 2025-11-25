Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BD22586C2
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764113574; cv=none; b=rcz7IWPUgLhVtdW4PceuAWA/QCehU2xdli1dzV7hMUqKizkEiZpxJa/57CTuhzle1TD5LRfZSUExpW88imFNxgDhjmZ8aHIqDaSgM7zvkOEYCsLdC/3N3vxPhypChdYBfh/CgVPmkug4nVZG9SN4dn32N62kYw2+Q71QoNX+jVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764113574; c=relaxed/simple;
	bh=MWnYTHSVxcY2eMpHgfqPrWG08ooSOEinJwDVm4G+5eI=;
	h=To:Subject:From:Message-Id:Date; b=O8/XKYKXfMa9qSVUEh9oWxxbyJia9aOZTmLkyAoYMQ6/O/dD0MLNYOjrQmDIdobzxAvtlM/eUSBKitTx5XIobR/q/OzyRh1Sh+Uzz8kKfjxk6hI3UD0C0Q7khAK2EIz0g+T/0a+DswBf85scYd6h0HeDr+vlCvjwfQr7r4jM5QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFpy9KnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFpy9KnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3791C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764113573;
	bh=MWnYTHSVxcY2eMpHgfqPrWG08ooSOEinJwDVm4G+5eI=;
	h=To:Subject:From:Date:From;
	b=IFpy9KnNNdgE9PyJdjAFR6Mmn0glFnDCX5z6zbYltc0nr/OU4pZO8ZRCwHKbQHsn1
	 RfQeO/lRXE2XeFkcqLbmiYzmhhpMRyRbiSSe6biSOsBaExLoi8ki2x1diZ3FDWVUHh
	 dn9Zg3dfNodZIlWbfjSShaMeqvizqo20YTO3l5l6qaCDV1pwnfXCZ1LzslahLFoYNz
	 zi8Fb+BKDsGAnAENXbMI7tgYB8eGb+IVfqYM76UQa6z6w8k9H36qO85JsRs7eNKB2C
	 MdvZF0RKu5H+fP3ip2i3QuZ3jZuE6wb05KfcKoIopYGdavI6lOoj2L5nLy1t7TC89p
	 hXW1j/Dbo95Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C1D1036B
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411357358.26723.2038802575755572082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361ce5d196f39b95e6db6d886f6912540b75f3d5b8b5fe864f2c9977060c641b
Date: Tue, 25 Nov 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764113573
