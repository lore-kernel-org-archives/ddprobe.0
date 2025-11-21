Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3EE27A92E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763694114; cv=none; b=NRuhDDCbMwMnn0aWaB2SBO3kql90cKHZ4M9KlSBLlmnvWzh339zF1CjTuuo7F9jEQHmSBc0MloDrh0ztJ+IVx1aWIe/SNDAosKWSAGlTqzPgV94KAGEqCynydgi8GCpk0sMnN22YVhDcUHcxOqxQ4m/hMwqI9ukDnj7SpUQe/Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763694114; c=relaxed/simple;
	bh=srg1MtjPmxou1VSfhySfxsdrBN+CELAqadEmEStagaY=;
	h=To:Subject:From:Message-Id:Date; b=ASUZgAPzp163u34vWkhj1j9DrKH7BbzRXo7PNIi0p6atro8vRHMMD8NZuBVRDVyb1WR1LD7e3ydxxW7PUCOJbkWY89TxbtKtt6a++Waq70MQ620CXY2vVGpQK2ZGwhlsP5uzBFFj06sqBzkdlCmru4HAggahkXbXq2zs4p8py0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KKRSWJBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KKRSWJBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763694113;
	bh=srg1MtjPmxou1VSfhySfxsdrBN+CELAqadEmEStagaY=;
	h=To:Subject:From:Date:From;
	b=KKRSWJBKci3k8AJDHjhlpSw3DXRm2edmdY0R/w8KtFzwwt2t1eOFySyQyFQCMjp3W
	 LA/vW80gGKVWb4d+3d88ChmcYrtwkYqZycrorhmF+vxO/e4djp6dSa3BZJffXAigNF
	 J5sblnyFWkHBP0b3zW6GC4xiybFPcXTYLy4HIwsY2e8d/bSwCfbj+SVvAD8a5Dq5BQ
	 9ZtEORuCEBgSWgzLqy/SkhWPCNM5FzG4MalVlLLdtncD3t3E/IsDUKs83HVJlevjJr
	 zhlY8GL6/06cLd9b4tiaMI2JjFtoY0JAp/qKV9+8ME57jxYuTmsw/9JoAoGjK14h5J
	 7ZGncvh/1zr4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9193FCFA46B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369411358.23158.7315151176622489959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a5dcd407f25f9443dcfb3bad44aa2e68184ca3cad2792ccefa865b01f2490e
Date: Fri, 21 Nov 2025 03:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763694113
