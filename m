Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADE422083
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783815514; cv=none; b=p3K9mP/z0O64nClhdq08nQj0ttstzeQ92kvktQwfrN5JffM6NaEWSpwLPVbUEs+7Z7UGaJeVvroDyJQ5cENToknnqzRadr4s6UFQet16hKirVW4F9oKWs/IXj2OjF03Rub2W+5Ws5TEM9Oh654iNctX23MCgmv8mVCdMEVMwKmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783815514; c=relaxed/simple;
	bh=4Z5SBasUeKCCp8YRFSYRk4QDLmt24RnL17Z3Tb7Iuok=;
	h=To:Subject:From:Message-Id:Date; b=HT1IAC9s3ULltgBAvKsR3E/4WzNn0NQWkhwgXBOxsln/Q1/ahLasXnUAKZpodGNA+3u6EfGlU/+gd5ktEqKd+Hqp3zU+MM1W0IPet6kSe9rBXGlaPFLfJbdLgLDXgJu5kIcQIuxXn+pco6xIL6LhqXbsUQgQkI2Z2AqmPZdnQUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcNCyfgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcNCyfgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA23CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783815513;
	bh=4Z5SBasUeKCCp8YRFSYRk4QDLmt24RnL17Z3Tb7Iuok=;
	h=To:Subject:From:Date:From;
	b=mcNCyfgZEAYUC7nPTQuYmUgDeXTKIIQkkNkyDLpK1aDyzpW+P0DZJq8rh3IfZZDUY
	 jRPHP5oA3WXMKXJLuYCk+M6PbtcGbDYCIgDoCQYWhq1dpSU1hhlFZYrfIOoLg4zO2Y
	 qo7Su/jgZvvsso497VlkosDZiMtpGLPj1SCm+1kvKvyaODo7mw7pF9/ZoKSa9duMR7
	 hm6VMQU+lyBkUqTqqxS2BvpSEseeVxzEIoA5zyLhK3cTYdwVZhPY4JsLaWn0sxZ0H9
	 yT6rjgNUaznKc/8R63S5MWOMwQR5KZIoLj6y16AA2VNI9jIqmbWy5ypPdEqBQak5Dq
	 5iPU8PozY+iAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A820EC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381551368.10179.9757389697484785509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53da3139f14afa33450bf3260a5da02963216a80bd73ed1adf22983b507ec68
Date: Sun, 12 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783815513
