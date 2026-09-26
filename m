Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C30C547073
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790381434; cv=none; b=JO9tKYT6ZjGICCqnVaLztjoJHP3kdY7PEH0nuc8+DQXGHrBOjozHXarshKRRegd7mA8jAbD8zXhlVytmndl3BpuNZ4m1+levX74UYyjueLBU6WPr+/axFONT6P8c4Ffip7rEDk3xqYILgaL+bK0UNVG7/SW83ZJexgl6vf2flik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790381434; c=relaxed/simple;
	bh=v++2jHOYlcNwYXcBRxQE9CLyBCE7yJqI1pjLUGbETnE=;
	h=To:Subject:From:Message-Id:Date; b=ZWB/3rvHMkN9uKCJFCOLiczC/bpdLxAUAFbcVdbMrW7pZgIXLOyQEKMgOzNRT2k9M+/6o1leaOFK5hzJueQ3aGz/g4zbOkT2khaTXL9x4Lziz57cVicxzgkPl0Nz0SPMCkcJSUsusIAPr+rBLkPlq1r4tZRbzypQ0hmf6Ij+dfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhJESm1X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhJESm1X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7387C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790381433;
	bh=v++2jHOYlcNwYXcBRxQE9CLyBCE7yJqI1pjLUGbETnE=;
	h=To:Subject:From:Date:From;
	b=mhJESm1X6AAIlnrzdFy0ljA375+JSBW6qTRwdJIOWQNyTZq6bnHmA6hkLogspG1LB
	 TLqPYabAKYGWBFkf9sdD21TW5ooGnRs2uR6SV9OpCUo8x4eq/STsHHKOT2mK0KXKcB
	 omwsfTDciNdytpbR7/gAW8FdsSPvDg/4z3NBPiPNlCnYDvXICzt/XOp9vRXLI7rCej
	 mqKkFNC1yw5RNYqkzXTGT9DpLcjw1amY+1Ccg2In/1QOQcoFmamGFk6OECcziL7ob9
	 WkLInlmR8T369ixItTtsg7mpwA8ZzIAmX7rfWxZzJiNurv1/HE6mi2u4X2IIu4EIUn
	 u0N5Kq1sHVqOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41FEC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038143370.12625.376198248960144194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d88223679af38010fafce1b3028a3b6f4e070eb7526c84f707d5e8ffb2262d
Date: Sat, 26 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790381433
