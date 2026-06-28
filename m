Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4963BB4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782630514; cv=none; b=jzzHmP58W7Zwoe8b+icidCsIypzDiwFU0bbUlmtMWvQAgBaS1vGBNBZfuE/Gxq1UQxNvD3rAPM7WTL19pCMh2Zfn0wpj2eAkRvJf25tAyfzV3AGMdT/TY3XGHDQ/oUYfaT4WhrjH5Y0a+lzBHzXPYyvr7vTpCQBjM7li0eNXG40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782630514; c=relaxed/simple;
	bh=nwTfL0Ym7yjnUp+4UuSBBfFKR2rRNi/83fe/RHFHTC4=;
	h=To:Subject:From:Message-Id:Date; b=QXxbeVCcjjT6KvUt/VWmJGnDHDKSv7we5bAPMFwEnQnyOKcH76zL4zYqBLg+GKro2lVlvcpJlICjlFwHZW3QdxLW3IQkhuZuoQzJyxdqEqchsCRbNWAbnK20UtIs61BTZcv8+iFRSZYF6V89pXDxnSehGq26fW421FPDjNJmDmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5nJqURg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5nJqURg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62C5C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782630513;
	bh=nwTfL0Ym7yjnUp+4UuSBBfFKR2rRNi/83fe/RHFHTC4=;
	h=To:Subject:From:Date:From;
	b=t5nJqURgZbVZFhG2AzJmr6txMOTsro/c8ZqAU7yaVoNz7jEb9R+dX95+/4EidXfG7
	 wNMfwFFXxjr4KRGBdT5BAUOSmgz4zThssK7vI0lylPZZwIh8hlPoD9yEq5sX5pM68Y
	 1jG661lKvaRnrXGXGqeu3qwhUgf3MjtFgKHObAjp3I+Z+sXPnH+OAed/roiWb82TsJ
	 LVDV1cdg98ylW2W1ggsVy9Hk0IJBHwheAYd0jdzZxxkl+YQwx46b2sAuqgfjy6x5tj
	 02MCztQcEmdk03E0knlmzegltYEsbzv2kQq2mIEbs/2Om+I8XdWOXsooFP1T5sPYx6
	 U7i7JuZRgbTPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DD1C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263051368.19230.4859926694716969398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ecd23def4e342c1239d998ea35ce5b1c849c21d70f41db8268c1fb4bf7053b
Date: Sun, 28 Jun 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782630513
