Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207372DCC1C
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762459194; cv=none; b=nvfGkTpaiCv3F3Uk2DSYW0O2Wi2oqse1jYIoamlp45UnbYYZhZpVCXwNr4AZlLKnffwr3v5FxNeK8rJQzmei6wvN0AZkc6PEDw5zMCvpxww9GnTpXjlu/aSIkaJ5Clw9xVEh/tKghiidjqzjiDkYLSyeUi5BClh91B7kiidgliU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762459194; c=relaxed/simple;
	bh=cSoP1SigfyAfVTE1yh9nKhsboLdPjYBBxIpAa39ldl8=;
	h=To:Subject:From:Message-Id:Date; b=DIANXXnN6HfBIPk5bCefWOdG36QgmdtFGKXWYBi6l49Jda5QSGa6mYyGGQ1lk3684EURlJbwY3MJE41CL5ORWe5Q3N8KmZyfh1llM9OM6ydDkVkuB5ieRJz6iVfWEZTX2vjwZnkaH25NOO6NQyt8qjmprwMah5fm99bpo7HeYE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cz0oCCBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cz0oCCBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B140BC2BC9E
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762459193;
	bh=cSoP1SigfyAfVTE1yh9nKhsboLdPjYBBxIpAa39ldl8=;
	h=To:Subject:From:Date:From;
	b=Cz0oCCBbmXTnLkxtOPmkcD9nKCM5ZsSlAlcdbmRBmuAKfel9YKeDu/urLZ7UwlKFp
	 a/F3ZGLtEI3nPLL0YBDJEbAAvnHdhwa9TeqGSaQTlrI1L2uO8eallgTxT62COUKLXk
	 sYTveq+9gsCH2OEh0F7oXPmsroDuCTzGiXWsJ1FZdwX1xrq9NHlK9HMcWOybxb3kKI
	 JUvSUXq1cF6JzdnlKGevmQ14F3IAIrpVc+P+7nEE+ZzZ17OvKaxjIr+fvE9tSLVgTg
	 UBVvSjNZHAntEl3w8bvrr+ETvrz2p0yzHBbf3Ah6vpEZsYwYNo4bKcGzMvt8OR+riU
	 UeI0gYsZOYbGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024BCCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245919358.20868.11598845709877591276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70f042b7236a7dcf55d3f5252fa67ad061d2d4746b7e9471efa856a270d59c9
Date: Thu, 06 Nov 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762459193
