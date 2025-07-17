Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA7D645
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752711594; cv=none; b=c4pFYnQw7Bp8jpBg1c2AZcn+5GRnDP202FWxINIcSgYF0jSEoGPQriejbWrMCXgiHDxUW/BSQaIdP279glc74yieLWqAApcM7K8LKpYIr0lh/ok0yLguOB6jxAnCe++F/PQmtzH2Hj88C+1seQDt9xHx27/vOC1XFePyH05EoSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752711594; c=relaxed/simple;
	bh=IquQE2oq5aO0C5iNh5qbUHSIP84pPgb5z87io8eqMdk=;
	h=To:Subject:From:Message-Id:Date; b=RqzQ2TWfw2P+kTmXeIS7/Gy/KKfcq7DkgPxoIV+Dkb/odyk2mcbhoiMzVtcREWQOnbHceY/2ruWVU77RD6hCENLtLooZePQc1vfRiBZiDwUev0GWpIsJxuwDVHuMRGmGmfAWpj6LTZw6esIjoS80TjGgs3N/z8zh1BHaMjPqDDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDB5XSWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDB5XSWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF9DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752711593;
	bh=IquQE2oq5aO0C5iNh5qbUHSIP84pPgb5z87io8eqMdk=;
	h=To:Subject:From:Date:From;
	b=IDB5XSWQOcZivz2+U00iJwGuIeGg4OR8U2+w/fCsnWweSYW+f81MsIXCdEYVQStKE
	 jjxC6xZGwWd1eNHMi5jsbdDplAmirRCYYOYYxrZI9HFOblD+uqz7YmoFLBNzH3sFbz
	 SzJwEV0FXrWiUzzkkvJxl4mMFDJCqwNsr0qkp8NnxyEzRMcINRDsDl9R/o2ZjL36LZ
	 lli+EsmzUJLI8lljkHJxmb+t6ADJjTkVaIw01CIbUuP6v1DAExYRs4hh/KuYq/LpF/
	 HXwWAqVLGbhHWZpCHd+7E+cXe9p47I/Mq6YRKnh74hczZ0oSzLV2CcVSr+u4KhSzoh
	 98pp7XGS4PiGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91376C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271159357.25021.2995966722336040233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03213ef3825ae65f31d5c4b85b3019cfd67820321dc1be2abacd8b7404144a7
Date: Thu, 17 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752711593
