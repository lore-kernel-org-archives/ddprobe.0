Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E3FB64A
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727020554; cv=none; b=ZpqCgKZVGt96ukBszd8rmIKahGlQ/A3ABLOXToBA2fElSQIp9hCS78iWjUjNOGqmHTnl5wkpmRpj0ArzW/DeaWUdpubgM91CIM7yCUBdIfUQmGWudAaGnpbRGDqbLaKKyfYU9ySVDxxSBHiuqIgxEMnUIjdSld2WM6MfswJO0XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727020554; c=relaxed/simple;
	bh=5prvwOOFpQ+J/RzeqJId5lTv2qJ55EfjOQfknS7WLIs=;
	h=To:Subject:From:Message-Id:Date; b=Dbcnw91knxpCFYY3K9RFQ0oR5zy9RpC7lnNhOJiJcTPRe9HY4a1pAtVMo2KN0nmdehT7L4qFuchVpxuRXc50FDx3Atpz3WLS/TrXOvKgQ8XI4r/gJWGObao/L2l9SA6xS1+lbd/A5zn/JI/Yo8YPfjzCapcb1PCuxpxlrQzV18U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiBBOxjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiBBOxjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C522FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727020553;
	bh=5prvwOOFpQ+J/RzeqJId5lTv2qJ55EfjOQfknS7WLIs=;
	h=To:Subject:From:Date:From;
	b=TiBBOxjc9OGsxyRQ8LaTgFR+V00wV5C/LPmJ7mOAkJfQ8MN4ZGF1Fge1maNsAsfGF
	 mXceQgwkRiEyG2dZuVuiGIssIqK/EyIWF5aCvas/L8j2UKEnsi5TctWrxVUJkRmj77
	 i4lqg+PJXrTSSRyZv3SpbihWDJ7YzdW5iHnuNdTE+JCmxmwVNZaBLOSWgKBVxj4JqA
	 Nx85M+qLeU/ZZ/o/dGFBuJEEfYw5oWKZeFX+Xl6qb1m0FgoyInMj+aoL5XVQeLHta8
	 Nd9NDIvq5qFGDtVXnc551YLcXX/ZaYCKF/txag/kJYRjTtFI17iS0gNbOOC3ZTMV/t
	 i+mZT0/SIJzBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A838FCF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702055368.16297.8471211960965949992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e1d99cc5eac8111a30ef8500ed93417fbf7d51ce32d27bea4a3668c75e0374
Date: Sun, 22 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727020553
