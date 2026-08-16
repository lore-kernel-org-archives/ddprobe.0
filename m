Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A7D1F03DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786898434; cv=none; b=K0U96XkK7KZ8R0GLoRDs7Oel2Ir5+nWOLReBBCDbEFjMyG2LwDKy7yt+77oDdtBT4xMlKoj3qH36glQ1klozoq/7lHUBZcB3h6fPa2KW8taaNijdLO9e3JbPxD9jgD4TTBPYQNZGdsTxb4UI65ocBF7x5hGl5+fW8ndDPNx1E+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786898434; c=relaxed/simple;
	bh=ZT7UFhlRjNXMRIqZvN0cFMBvskRA866ECw0BarwpyuE=;
	h=To:Subject:From:Message-Id:Date; b=VYm80kmOQFylSomlKMlahN74mhamD6uc1LlaK4kf0Cdd/q5EdXlSh6gvqZIXetxuafo21rj1w8EspLqJcsEyyTdeU138eaJ4TETBRAz+sntQ5KXdnXkgXSCa/OlyMBEH5R4r9owAIQs67Y0gvWP4UoMPJa9OV6wgokFrjp/I/nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5+3ghKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5+3ghKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4991C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786898433;
	bh=ZT7UFhlRjNXMRIqZvN0cFMBvskRA866ECw0BarwpyuE=;
	h=To:Subject:From:Date:From;
	b=V5+3ghKxNcUTXwCwoZne5eOhYsfF2nR0QTYQa6omE1FPz8VV31ruW8+2QQaS3sjWI
	 g4oyrYQ5Ij6JsYgBAXU+oMPx+7wesijoH776x/oGcH9Y0G+TzwHjkDIpnpQdlsHzTk
	 3dxWnVzNqBrYeYNvU0V2tzGLfP1D03jdMbfEZIP/lALDm6QscO9FRUpZ5Vud4xDRC8
	 WsLFDctB5BkUuUXPLn48Pi9afVfWBoA+eGNldqgRhbm/MmaUBZHH0yPf7efvggR6OO
	 qc83UETQYdsAxBbnUqbE2hfAeht7F9KtGS1dUYfdu+izGLbgO3n8WxlXZ3/NwUZT7R
	 C/kp+/Z+ctM/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB8FC5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689843369.22491.10414356261045661143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8e2ccbf078ef39bb78622a62478ed14607a16324c84e455394738af9b54e14
Date: Sun, 16 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786898433
