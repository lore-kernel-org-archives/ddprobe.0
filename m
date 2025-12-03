Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED4C220F2A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764752575; cv=none; b=sw94TJBh0FRr/nodVnIKdqD4w+G0jpowqqkaplUgvtlwQvN0yRb1riyAkgUmpImYlmofrG9dtEli+4VZzXNewL5XGTNOT8idGgSjDQCUrDeq/axFA6sDLUFJxpkBo6hsQEQoccSvqI9mfEJR0gYEQtHRW/szrdatXPJE27Nmkcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764752575; c=relaxed/simple;
	bh=nDyamlcdNSOKgoze647MlSqfgujEt4UtBSYxmk1bEaA=;
	h=To:Subject:From:Message-Id:Date; b=HsRnZs/p+PPV6PYeC7OIQ2PV3JD28WosQofkjY879ooOKnqgVcV1Vssea05YzvlPKm69MDfj6+u+EXOQXZuRdqJCwqCthogHC0MvfYYAb6zg6+G46rbvKjSx4SEmjv9ngL8ImN04gpQ6X8EAzo9v6RqYM2S/bleqs/Ty9z0a/7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3S3vmu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3S3vmu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC9BC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764752573;
	bh=nDyamlcdNSOKgoze647MlSqfgujEt4UtBSYxmk1bEaA=;
	h=To:Subject:From:Date:From;
	b=X3S3vmu1K0uE9izfvKNxZsiEhS47piw70NCFZsAXEkFjikuoMxsPB/bWtYUEp7voT
	 3gLVq5V8bEpSVABbKKCvr7azoFWUc1gOe6H8de9lQmTRnsIJbc5/BHCHojPFgm6N9+
	 YMSD5P4jK/xwWi/BnZbSt3x+CkDQpPWLXHL6K+fAR8CI9F+N3+ncIVcPTAbvu2nRhR
	 zE9Plzvmtq3J9rD1M7m13imupR4OKTwzfR71aHNJkpJA1qhF2wEqeGt6slQIZuHvFx
	 4IdxXK3h/6AHNKvm0ff2G4sCSXUcYmclZMNfRtfWkgIg2LzIf0PtqX6OohFUq1QQgs
	 lcfPnJ+BdcewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD1D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475257360.17437.9082742529090772339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60579186251331d99fd104a796b7a183b8832ccc4e0be2595f67a5d5c288e979
Date: Wed, 03 Dec 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764752573
