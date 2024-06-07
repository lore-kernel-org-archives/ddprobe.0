Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFD319D89B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717736243; cv=none; b=lEDxNyVzMaj0CBtARgUpoqEsMEt05AGy752odBFk3BoQmWFf1irdSTVjrBlIryoLSH3Tzlds2a4j9JXWFUSfn2GcYmAn57GYHU6aUmeok7OB9jqfR6LoBRCHxZzNuE4iCCuJTU1y3Qms9VuJCbXZ10a3LfS5EnI/owgJTvCEn+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717736243; c=relaxed/simple;
	bh=7wIX6ZnIhryGUGwoM3rIcGo7Qjqw3ZnBz8aZ3Jv4ZY8=;
	h=To:Subject:From:Message-Id:Date; b=dsQQzT6k6ja1VjUwfP9UWFVD8Z8biEtaVFnmfRqgAXMnu5D/hR8yWsxX92UN8YDrbzbJIqnVulO/6PnUA+WcKPwtkWHTtvj/jCGgtAxrGoX8Lir3i62O7oU5ICf/OE2DqP/5bdtn1o0gZCrVyuchmTu/KynjgMpBd6wpQEtRfWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=invmcmmP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="invmcmmP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DE7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717736242;
	bh=7wIX6ZnIhryGUGwoM3rIcGo7Qjqw3ZnBz8aZ3Jv4ZY8=;
	h=To:Subject:From:Date:From;
	b=invmcmmP1pXUevS1/XOX6CJ2Zqe42pyT6tPRMhdPs53qyfLmvb0M9vSfNK5jK1YZk
	 gwEWAwoCLmQkALU/Th1b+O+j0rQkM6LT67yhhG1LTRWRMks00oXBzxh77LWuIimTeM
	 rNDxrXsQxuCXeo46Bxc2c66a9ZalVnhLqjDGHLk4sxXjZg04HpRw2mb3SW9Mbvld3O
	 KoF1lzVyixjH91PIjLv8peSsumB6/IlhNDZTgUiDfx37zaDVQnFnz4XwrZxE2aAmsS
	 NWEkgiSi6BldWsyIugUJO3eX4/9+hW8j1WCEjZfC+6wjs+frdvUPNPE5GKd5z0NeaF
	 Ks/bydOVSR5ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1737C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 04:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773624278.27003.5875458453644124388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5bb688ce955edf9931973dba9897c59d05104aa101d830fdd56fae6ba6f556a
Date: Fri, 07 Jun 2024 04:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717736242
