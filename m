Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9BD7F48E
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717405523; cv=none; b=H+mb6gSDzBAFdrPfVxYOkx3njnGdgvsM2kcM5aWhiHRntqvSjzbm1pnl8y6J/CB4xy944N+h0AWzhS3fY1/6BGR2im79kYkk/ahixMbV/DUWxcfELkVIerPIEydOkBBvgCORVTO/P+Sl8ZukAwrhF/kd+Xiwji+d/V3DmvOtyME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717405523; c=relaxed/simple;
	bh=21WOS21pitqNyup8TWeSWoVA350/2KECGKkLf9UzL4g=;
	h=To:Subject:From:Message-Id:Date; b=jk8Ed9wDIceZiBWHH2c1yHc0lePImEAb2YqcfTp3tqzc3Mt0gazalFNDtuZ+c/k4zS038/2IlZ1tQpV6RGEzgUZK512w+mkiTqJ59uuiiJKriu2AKyhpZSqQ30OChhwx5mfMIS4dKhGtPSoL1vKq/QAimevnn6dXe1LpqZa2cSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=foovjRco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foovjRco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 072E8C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717405523;
	bh=21WOS21pitqNyup8TWeSWoVA350/2KECGKkLf9UzL4g=;
	h=To:Subject:From:Date:From;
	b=foovjRcoLwafITmfOY9RAs6xGyZMpBdAaXiM6Co73RaWzCjtcmHLeiLCg1YrnbjuZ
	 heVLMcrqLM45VAhPcIYLf3ybwg5+CUUje4VU7n/tAa+i5pkzVxT66btqo3dxORN3Yv
	 Md2FaNm4Hj0MHyIgvzukde0AmjjiUKt/+lJ+3jcdxgfb8NR4j34JrbaA6qOA2gxTna
	 1atiwqPqFDJSmFdupp5m+3i7BJLkwtKxK4T5qyWuKTPz8Gjt8lkqnJRhsRPMaDbgai
	 HrTgWlsPGFfUrrh1YGRjtAZYxNlSxN2h8qSoElNHzAnIXhnP2CFrvh0PjrgC10lu4R
	 VL6HhpIUKQDpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBC1FC25B76
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 09:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171740552287.23709.2457443851207087597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4c3ac7541cfcdee026a412304addccd593cada8d93d78bd97dcd593b0873093
Date: Mon, 03 Jun 2024 09:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717405522
