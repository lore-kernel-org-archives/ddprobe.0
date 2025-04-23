Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441232D613
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745408395; cv=none; b=ZuGq+9dAdDYSLw6roxlS6yxikHPB8lyJTCp5pdMu/A1elWVK260CQ3EybwKu3RYQlQLD15DxIBPzGxjbKUsW/dCoP/I6+bLlQr+rvU8mABw1QT+FBNiqqHUcdikAIOpSAGUon1EaNztzvBHM5uqLSLgYJuRtMaSIFLQ2KLRNwHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745408395; c=relaxed/simple;
	bh=DdhzHMU9g6vEEeladY9CqeFjmeV+EoCvVIzYmzchKHU=;
	h=To:Subject:From:Message-Id:Date; b=Tc0LcLLeEUKqfzZ0slg7rxeAFaIz6GnUAwIh2kkeX98cO0XDFduv3YTMtFnn5CHlboZHQFxW3IbizX0iEIlDanxw5LctXu6t9XUnnxwnAv7a95l9y7G2EPcsbjRAwmrSPx3dxZ+m6WB21jXryO2kI+9uzaAesxXZZTsnbzvWwSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E32jxzkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E32jxzkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07A5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745408393;
	bh=DdhzHMU9g6vEEeladY9CqeFjmeV+EoCvVIzYmzchKHU=;
	h=To:Subject:From:Date:From;
	b=E32jxzkrv5WULl6Ghgzxg55wn66iX/ZpcBub+xjLdgenfId2OzLtci09CgeveXqHV
	 r8q4oaQ401u71UK1OHCCd5mwIApGVnm2Yfd1hGgeNj+C2imWxbGL5+BtMNdDDo/XtZ
	 Wec229OuUheb6Mv8zMV2sfe983hPkSjpZ2+nvNa3oMg78TW6B5z9I56XTGly4hiUcE
	 eNZ8slWLloDpKAbsZpMWfWUv6Tp7qPqGieVXbrEGFsj5yS3yj3y7FDarx0vUc6YnE5
	 SrGMUEnGXWq1jk3bVqdegslIGuVYawCgfMesKG4J39Mvj3IRkc9i7cSu+62tPziDtm
	 oOjby9w3Kh3WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91402C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540839357.26336.14007071966804380142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e95eff0545601ab7f5c7b9bb63a5a6deba929b9135391b726befafe5752d7ea
Date: Wed, 23 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745408393
