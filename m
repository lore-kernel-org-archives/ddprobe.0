Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9CF13790B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751213394; cv=none; b=IhnJRtlImjyxTYF5PiFF06pC37rQfWSDZmEdi49ACfQxxt0a0Igp/i0TC7H9J1mOrwf/2KSBVonhSfq8SRSgOciXA7PxyUFtC57ILbqC+WW9ffR4XP/CF0WJzg9f2J08wLQ9Y93VbqEB0yluQV4QhcSLI4MEF3blQVTwLPDfxJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751213394; c=relaxed/simple;
	bh=4lA7wECkkVcE6WVxSN3wpnXuEtLlKQZCG2zd4WWm0ws=;
	h=To:Subject:From:Message-Id:Date; b=giu0z+JWeXD2Ban4J435JFS41RVkyoVdYzu/ZdhbCXjs2/hfHI0V2j+obtTG5IUJ0tPMJ0FYHRqYU02TGdpBU+0nukFnLEJ1n3XL+h/GP1xWGhNEKSX80BRhQPv0+PYRtE9gm18kS8DsnQQ7rj3dzDIulWKP46QOd2ykk+pScro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfIyVZNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfIyVZNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77E3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751213393;
	bh=4lA7wECkkVcE6WVxSN3wpnXuEtLlKQZCG2zd4WWm0ws=;
	h=To:Subject:From:Date:From;
	b=WfIyVZNA6sx1VI5z06LrXJnVjVl2dk8s40xfnjE3xx43gDykC6GaH/jzp+QHTcTyn
	 7Qo0UGoIJ8gPgQ6KE61eZJNvqeKdPYprGmmZpGCAimazQRSeChiLlCW7LODvtK2Z3m
	 KTGYgjC6/fbXEj6ye5gIqkj3gwhewi6FgExVqgeTz6mCTzOsa1wQj+N9YffeMLcBly
	 Dm0yk+OFKiZQISui4iWJxqa+RozAvMMJVQO6pb/OusbF/cQ5BH5CzKlNTWR1m0tCeW
	 CRhxSSz+laXMnKtqjX7if4jm6X0KY+itdnilrkpNhBlaAvWbAxaonn0c0YDDsxrPsS
	 0bJKvTJvLsTsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF2C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121339358.1460.16662895167969611879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f9cd83e7c69e2fdfa8dcf7578511f7b691601959746708dbb080a3b7846a91
Date: Sun, 29 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751213393
