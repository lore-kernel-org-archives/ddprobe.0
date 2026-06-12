Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2458B3002CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781304394; cv=none; b=HMfpwI8ZYZPbykfGnKmS8aLi60J/I+gezG8HfCTh5/g0j5Pp86Ai7vEirLPaQ1wW03M5TDJEpEX+ebABHKhHqh4Bcv/NNX4pohOFb8wQA15/0WfBhgn6U/HzE8Uf719PS6PKXsLhicrmHLW2UIQM1ZWAECrKOPEzmrvmW5Zmnpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781304394; c=relaxed/simple;
	bh=PNlTVmHqsPhwSYqoghhIpxSSjA7EtrWylEtBF5rJCQM=;
	h=To:Subject:From:Message-Id:Date; b=XGIdim+kskcpSgE99yjNHBUoogDEZLT/zyiwBVg8A5HgGourEaRZ+3+DZquUbmnyNG6NzRM8pTYBbKwXJhSZx1zj1vjItmn6L8jaKjMr6pUfiqwY1cgQmtX7Kch1AWkokyOmsoKFwZmSvaDyla2vlkuHD/Uz+MgQCtVe78sVXQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbS5jbJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbS5jbJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94E0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781304393;
	bh=PNlTVmHqsPhwSYqoghhIpxSSjA7EtrWylEtBF5rJCQM=;
	h=To:Subject:From:Date:From;
	b=UbS5jbJmYZsJUtrBiPFL0r/5Ag6p8vwNS00KsOoLmqJ1umske7AQjTYbaQbhjRANr
	 HbNAaeru7+ptQCU6fnTGbLMRSubL/Mm19ysCMny55mlcgkBulaMkE/eS7XgYifU6Yx
	 iFjgNPN7ymi7ekai46sNDg+uy/6flQW7vDiduDO5zc0wHRK0dgwxXXACVEFnVCy0QX
	 e9ZVuvL9BaA6Q/4/nXjyMufFRqxX2zRVZLMJoreb5HfCRvsijMZpbqlDKAXN7SbWNL
	 ED8/zE062P1Sb03UZTpUvyjp2OXpX8A7MjSjGsX2RqHiIdH4MkynPNEanBwbz/DDKD
	 DkGzNRdodIofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF8FCD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130439368.15728.14938864869842715368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cdbfa47a5f80346fe5e96c0a62efd128d4d4cf20a83caa2210a2dd70a9932c
Date: Fri, 12 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781304393
