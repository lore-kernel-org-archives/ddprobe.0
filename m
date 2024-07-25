Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A40C125B9
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721876154; cv=none; b=ZAHPwLs7uX1ceQBAZ779EdQFEGh5v08G9cQuVpPH2gr12Jn1tbpaMITcBSAUghlq0Zb9H4fsvtuS9QPCPu2lcT7Gu7/N3WE24dXOvJLlqLnRv/4G5/nVI3wNpSW7a2SSze7PT/goHIcngSbOGZs5LSmXumvVMckgnsQkuvbRmtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721876154; c=relaxed/simple;
	bh=8lBIyVNJs1breCF2NTkmfcB7qHhaldoFe6v5FmK29Ic=;
	h=To:Subject:From:Message-Id:Date; b=ZekU2lifPfXrDHD1clBHMYz/BX8CF/Bxs7F0iEE/M3R4pYxmWQNDjF0T6WjKDVqMDys1HFax/7ysyjTHfGHJBfpSndodln4TRA2SXSG2Mjrv+TdSlCOopvAiNeimj4nY/XfyyORi6hIPtZRVHSDogztFYI8fT9xM7+5JpgkqN6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcdJSirP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcdJSirP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E52C32781
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721876153;
	bh=8lBIyVNJs1breCF2NTkmfcB7qHhaldoFe6v5FmK29Ic=;
	h=To:Subject:From:Date:From;
	b=YcdJSirPAF634YHhm3YnO1H+ZAa2Qf5rMa7fylHYX1oOz4HAmfeSQ1zE2+CPn/dGX
	 kwGWo5nCnJT6aTyryVvzBhEZJpR/HoIWhTE16RqJ0Xu/IvI0V9WdwKUecxc3RMV4aT
	 RZ4H31VF+RDep2Bo9Gq1ESJ6P5byTKDrRgsvVmR+1eozC9L1ZHbS7tsp3qHVrXZhX8
	 M4ifBdJ0U0UMtOERdr19Qc+YCMoQoCskVzwI276+H+Qo3StW+OEMahom2DsU3bxWjg
	 HEuuc2zsns/VX+azUK2sdJS5dP/DZJIJWqNEHOtFG8tdckHCRUn6x6txx2ZzwDU2RA
	 ntEfpL3B7GFAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605FC3DA61
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172187615360.27719.11026018279765212757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f9eb00c1b36368be9d7d0f9ccd1b7b278fd22f286bd373b70768238d8cf4b3
Date: Thu, 25 Jul 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721876153
