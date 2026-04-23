Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B37C2D1914
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776922054; cv=none; b=swdzGj5psmqNw8x4KPr6woxo8sNbsLjzTpSrE4/WZLIFg+gVXnyz/SdxH67gigXIfl0yI/g1cW9pK1c1ZtMsxVgt949zqpNVasP0FgDeECzGEy8RPo0HF0G2sBYZyAroHuTr3y2M3kjWjcH/RNR+ZWtbkouF3bV+SLiMyRYn404=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776922054; c=relaxed/simple;
	bh=83K17t/9iMwM67nyr++uYZisehqSarwo+kYLM0oRY1Y=;
	h=To:Subject:From:Message-Id:Date; b=NMYf2O7hVuBu3fXaSe1pe4m4viE7kIfKH11E6GIKnEDnjFDJsAQcvEC/uCa4z4moSRk/CcAOlpFk2TQgzkFUo6NDPsajcN4W/0HjYl6Im2CW+pWUkHbGaMgUz9t0hQA3fh5eUeVQq9g9BXXfZjW3yu5AvYiiwb2kFSFNhCPAfuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEINGGnx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEINGGnx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9686C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776922053;
	bh=83K17t/9iMwM67nyr++uYZisehqSarwo+kYLM0oRY1Y=;
	h=To:Subject:From:Date:From;
	b=KEINGGnxGdVlbEfAkfjeiwdt+3wCX2Aelof+ZTwo69CT9jXnKFROQIMoYYO3IPLgB
	 yZzKiFjgTda7KG+jTw5EuVzCP6aIEHm/EMiqeDvJg8qeJt9PJz690/xm/moV4WdT7L
	 yBUNgEXDtBgtmeiQ8zdGNneQEE0/uAVn8c5Zkmn+90yZG+WNjSYiMv9LYYaJQ0m9f1
	 lkaHgEZnYLn3FFRri+A7lzQGcLb3MWIPYphbnLl1YO50zFajTjQTBvCkZwWcGmd3WT
	 dQ74d3Hb7dRLcfoleYB0+JRUAggSXDZPxUt1TEAQn8SRIEpGdG7yzcsASUpNbSJuzq
	 +49MG+XG1stDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CA2FAD40D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177692205372.12833.3579955432693157024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b3c39b1c502947565349ecb2449a16045efa01274aa5cde626dc282a6cef82
Date: Thu, 23 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776922053
