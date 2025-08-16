Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DDB1DFDE
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755311994; cv=none; b=a6imbjTemDNDSz5LhtMVajPW8ZjaRX1SeFCqMdokZEfR/n0VQo4LshAdFI7ohq1KTXvO8lm9sO2jW1/7ASTgL5gl5U1cys3i/BapdlBsinoF6rkRtbvdMxan3J5Nj2rFgt8bdO/jWvGqllEWh1efQCfkP8LT6d4tswhXw3NUM6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755311994; c=relaxed/simple;
	bh=AYIuhe7kranN7llHkpznk8xy2gM/uWpU6WFQMkazbvg=;
	h=To:Subject:From:Message-Id:Date; b=A+KDBIZxs35Gtuj6DnC6oZ8V7UI1dm7SqaofZIIGC9hjICp9kH2dKdyWgQZ79VhEwSWCpWJYXaE6EOq6pntt210QWFgVIm80y5iXxsH6m8A0L3xF3Pkp0o/ElIYW3k+I6p92AglubkXracYumqzrRe5OMIdDk3DbvB5syfoFYcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWoxqugX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWoxqugX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8780C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755311993;
	bh=AYIuhe7kranN7llHkpznk8xy2gM/uWpU6WFQMkazbvg=;
	h=To:Subject:From:Date:From;
	b=pWoxqugXhX1pa/nw66rgo7Pfw48JtPkuAklloa5MtSfs4/ghYPTWz17MzIJG9Uhx7
	 OZ1x225pokpO9RHrQPYWYs+lJVh72B86Pcyk9nYVmz+Zok19m8WygJcUun6wRoL880
	 KqtZ2PO+gBkDGQkeyXQ3TIAMdZU4cvgAs4ydGmofAzu6uwe719A6l/hcki12FonF1O
	 B6CspAX1yPZgUZaxNnWmoXIsDG61OJmcJR268ztEbOvp6v3hh3vvVYaxogDEpkicZE
	 3pX9w25af6HcxQMbBfpfMCT5haaJCJwFHQX3IiYqVcHtFT/Urk9t+TATAEkh3gz2tO
	 CU4rfZQy8S3kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95383CA0ED1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531199358.16244.3904768764667552551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc71f0e7aad6ffe77e5d3fa9b0e27258284443177408ea44a61ee559f799d070
Date: Sat, 16 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755311993
