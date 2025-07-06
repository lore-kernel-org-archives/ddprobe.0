Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F99D1D90DD
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751843394; cv=none; b=lij0i6ZYSdDo21vLUL/5VckXsDcT2uajEbAvbH4me8kooXa89ctzxnkvxHeXhSfvoXIJ/QzfKKzxIw6QRk1X2FzValI/ghHLp/gKuDmmd0H7QTm9dYNeOwtq+ycKi+6Pnd1nfIpICyWuNii48NMwpiFJ1VXxbFZVymqL0DyTaIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751843394; c=relaxed/simple;
	bh=gr/B/mrUsZaTRQPy49cw0wzaGENxDRhOungDkHDrhGM=;
	h=To:Subject:From:Message-Id:Date; b=JUl+SG3fRRJu5gA9CR3xQOoOX2v51h0qgh3etaJceiIquH5Fm19hpu7j1qc0iXtuBqGPJMdCFe3PBmzBhjvdZUE97iF/NUONWI9oJa2kj6PxiaZEr6FdVNT/YFYpf/Zjh2X+oc/HRqxmeKK60rLTgtOycY2/stlzvVWl31GglP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPx1vIdM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPx1vIdM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7295C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751843393;
	bh=gr/B/mrUsZaTRQPy49cw0wzaGENxDRhOungDkHDrhGM=;
	h=To:Subject:From:Date:From;
	b=iPx1vIdM7I91m3pOrZTQ/amslf5k8D9AQUwI7ozXnglml/MQ3Heatp/HukG+pHv/K
	 lvUkdGPWBDpOxQUJYOH40k+NWov0WMF+RQJ6GlyUZk+P88Zvc+uyu3GpMo0VfCLfgN
	 MXyntuiMvOPHqcd8RZsu4gU8pFP0qWQ7MqAMtSjXwsf7V9EjP0f3gK0X6Z9mgf06hu
	 gH8+b3QL8+QJAWh7SdTRxfno63GCAOSRQvrUqFhyxyINLHZlmDZTTl9CaFIvhrsks1
	 499YhGoEnNQ4iwBzuTDSzxyGtf5ZEVi1Bdb7RXKcGRhzD1crK3oCnL4HLfEqxDTrhd
	 7Ogn8+xhjRWGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92008C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184339357.7490.2345121792628001604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 550f462e495bb3246747b5b453db3029bcce0b34a49a2f56289de1a004824d97
Date: Sun, 06 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751843393
