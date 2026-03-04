Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274C029B8D9
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772607294; cv=none; b=BunLLwt/DB2QNGcuoi8O3fb4qqWHWJwUmDFsv+2knue1obEW5j70dW5x1TfxxCKNAzZNMi5Xl9InRxPS0nwWoNyVLuaXrJsLBHx1LK7fRZ9C6Xz0CUD5ZeSSx4gvESVzd0IUH8VJarskGxAdNmZTu5NF/SfbFV6aOAL7Jc92ofc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772607294; c=relaxed/simple;
	bh=ro30xuixTAmYSlJeKZpNu7Q6FRJTXlntVZF4sJT/5hA=;
	h=To:Subject:From:Message-Id:Date; b=ZGZx8Xi6aPK4Imc+EKCQNje4jmLsdLYCDrp0ICB3DYiJUZchxNy410YyiJ6rv0Y7TuGyaW/bDn5NS0R5o92CFKY+L//LEW0j1FCKsuPENP9SSgL5UH7KSNaus6/9TD3qi1BudwNolqN5uek0SgGe7/hRFkOj2wj401N/YxrtWxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCrYWr9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCrYWr9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3E7C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772607293;
	bh=ro30xuixTAmYSlJeKZpNu7Q6FRJTXlntVZF4sJT/5hA=;
	h=To:Subject:From:Date:From;
	b=cCrYWr9A2rctBooar9Ole46/iM8zREC0RhCEeYikyNX77R39/rWdXECf3QGUZiCIl
	 jIIoIEGO3T8C5ZnvcHPNhpFK7bVgAzgZetfdRu/EpdIOKPYD8ANoa/0oN/HY+nrwAd
	 L0YvmPFwOH7dRLE+H3VKE6rdzfCmrEOBXHo5DWVaT0ZIl1tKaXYYfZ17GvsLidOBcJ
	 nnojs91uhdcRJ9YvAPndgdu0QfgyY0OrsyFfgj6Wx1ldpbQtYKTbyECr8vcY4fxYjM
	 /YjV7sp2uiMi/AbXR7GhnYggFVvpAI7QDoTIKByUqpuEQSzXTBiV4yLRTEXChFr0oc
	 nHCe3SugJLe8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E1CEDEC16
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260729365.28600.16468354865748908206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c8c6d5f3a5957870e2fcbad478fce71bff5959b979d4e7907ea06b37dd74ea
Date: Wed, 04 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772607293
