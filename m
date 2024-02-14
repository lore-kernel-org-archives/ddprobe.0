Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B90011729
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707897497; cv=none; b=L7ppaBLhJ2TBHn1qJmwXDJr6m/5jSVfLHHoc7g3+c5zY9qTGoFVT74A6fvTMvFLdc1L87bHYsIX8l9AZbOJFyaBogV4espygvojrrLKJWiCbMJg9SQTKTNjoIVUOwp2g7QYA3Nxqtol4/HHBrgmo/M8bqFPUWTYifa4hWrVEXFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707897497; c=relaxed/simple;
	bh=eDtbteOl1mq8XaPCagrAdS7vJ1o+JRPDoEDSH/t36BQ=;
	h=To:Subject:From:Message-Id:Date; b=SVC+/4Fw1A7gurStGSaq4OyzSQiCZJxHeUVfaaUGzpDV6d3usp3NPuqDLA6Ks9Fr59yow+NaIE2sAOC2oZkG6BGq6i+Ghf2oD74S1xabTu80xL1ryROzpWZWc/Vvp/TRUzX7eCYezAxK/MDzpeyvpjOQTiSkzlBHNCSGJXAu44I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8BeWrz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8BeWrz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A34BC433F1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707897496;
	bh=eDtbteOl1mq8XaPCagrAdS7vJ1o+JRPDoEDSH/t36BQ=;
	h=To:Subject:From:Date:From;
	b=H8BeWrz/PSZt/SzrdLkByJswYe8ddiEk393lr4c4z6cAWfT3UZnXr2Wqu9jyW8Wd+
	 BFsU37Gx9phAA2kECrFUE+k5AsqKGPPDV+aGa3E0bH2LXSNAw43HmkrCFEIBIfK2Si
	 BP1KVDlV6T8QS6vxS5x4Js4JPJOzIXzyIUSrlEGRYa4VBmT52vorAqIWFyuJ13OFd/
	 gPiRfyYc9wblY4QED3Enh46/BPwbUA36IMz+wZEEKvoECJ0QronkmkFvU63yjC1iV4
	 b2hfuODQnCx/OdL/i0g6pfIdYUDLOFS/1ErSdUgWwNhvtbjqbe3F/SMKuKxqGCx+v4
	 29zoY6JZYMVlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B71C48BEB
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170789749639.4960.8450533876247805753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8512975d2588c532755c9df78436368c099db16e11fb02be05b12189f544ed
Date: Wed, 14 Feb 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707897496
