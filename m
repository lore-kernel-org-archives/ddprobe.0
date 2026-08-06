Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D98341ABB
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786036834; cv=none; b=FWcuyVEd7GG/7X/M4ZLGjDWA7WMEnJnovNZiG/Ji7eOVZk5VQpbbw8EfaFHOehOajAIzWQGVpVVokfnkhxjbs0XHdxQKY3kobt+sTR1vltnLmTx2GHvA3wRf5A+uA8U34hYfivdFuiNAyhRYCcmDp3O6evsFZU54kIiDY7CxEFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786036834; c=relaxed/simple;
	bh=nIFYIa8grZ84uB/PfaZTxeDhrZh2ys0W9+vjqirM5Ko=;
	h=To:Subject:From:Message-Id:Date; b=IAPxWrbOdAdkLAMn6hykge6I3yT50fWogypNJqo96YB29OcIucvsnvlcTt9E6HnZri9Qf8n6K4M+jLWRa/twfzKBnGSo45qODhjBnes0tmvxaq/BNcpkUkFpVONV5sWt5S1gotZ26J6qoDRYXMpV+g40ZdrTDFiKL2GygumAqko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nad3FqFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nad3FqFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF746C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786036833;
	bh=nIFYIa8grZ84uB/PfaZTxeDhrZh2ys0W9+vjqirM5Ko=;
	h=To:Subject:From:Date:From;
	b=nad3FqFV31JS9f/HcZ3whXmy9V7/ojuQReYTBATzh/5stWaXKDoHMKBRn6AARU+Bc
	 9n8vbP5S2QiNAEdZ7W90JT9JhqkXwDfF6bbpiwtZ69M/ym/7bgfXZ6htGJp43iwtby
	 dWyNWpqpZQAZZPEfKkeev4Qq2+Av0KI++HpYFaIqrbj6kG+F52haMNa2JFargKlcSr
	 VYkMYKE/4JT1VE5lEeh3j7V1flcU5yoD/gYUxOKmQymNtaL/UN0qypq7mohSRTE2eP
	 CvLqFGngJh8p/rm974BR5hXBA30+Jgs7zJbgPlBcLz+QM2hel8xYVm3IPrN1HIHuwf
	 4OGj3UcaXMRUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9C9C5AC7C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603683368.8702.6176587772150809726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aeee591db23faa6aba874209e735f0261e5474fd997afabea2fec6b0a5b306e
Date: Thu, 06 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786036833
