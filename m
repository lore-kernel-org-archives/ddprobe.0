Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317232918D9
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747049995; cv=none; b=Su8WAicWmns0V7xXcjHKIuprySWgsnrG7DBKcSXg/Y6g85neZdy14mXDg3uNjviH9ARsddVMlL8ECySSX4czTayOgbktC8psGQXroi7Azg4ilv6+vnlaD3l9CDv3dQd84w3jpUtudDLtcmuHcopsnm/BDeR3781lbaZUwUgZmL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747049995; c=relaxed/simple;
	bh=l4ZsIwgI1MEC9UfEjisw2+gUT77WcDB8+nvoVT1mKhc=;
	h=To:Subject:From:Message-Id:Date; b=a5v3Wi2E58zX9gqpv+BCxQYbcXSXQM4UoPfCBCqFb5zAsfpYHv09Ivb3ZIwiSjkTGYeFI3lXtxhpy8BFK/kMyz0XjLKCL8PBHGGF4hHrPS37Elgbes6MubKyQExofQDXOqgTGxcGgxIua0/pfKo9S7aihbAkFFxHgPhqCzPBAdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+jhUupX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+jhUupX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DD8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747049993;
	bh=l4ZsIwgI1MEC9UfEjisw2+gUT77WcDB8+nvoVT1mKhc=;
	h=To:Subject:From:Date:From;
	b=u+jhUupXi4AYQAK6uT72tPYpBAsOHg89RQqdYX539nl16oE8LZOxheQboyoM4oBiQ
	 IfZxC9ApabzwANCX+oB2WyOI+H3lyYLKXihQduC/WSrNvTJdk9NoAxoZI1f/A840F2
	 31bQ17ht+JyhOmCRHBFY8ngyaj+iIuLyWhW875jq7bwlNo88gJA/42Axb8/mD/xMto
	 Qy+Gfrc5h4PT5SaaOoObumya1jhqCitOOw/YwaF9NA1klC/91zYX8yKwlxlcN2iw1B
	 ZtJJFxOKBamSI19usCEunHAnTGVS4cwdjySIagL+sSW6TQbTHtOVs6BLSAnnM0c56V
	 r5ULbpj3Ypmlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95034C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704999357.31313.6290245598275500966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1700a6cbe8d72253b754f4061cb493537628a83c8099a2491e67914c0cdf9165
Date: Mon, 12 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747049993
