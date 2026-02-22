Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D13E1A304A
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771748094; cv=none; b=PDwxgxW3+K4e19OYUF60F6gcmmVuTqihz5TWJ08Y7phrYIw7+OdXqACjFnfpri21WBrSpM1/toHtvTDMsh/kCfi6jTF7vPjfyQV+VIU1DupkDBkXUCxhyC6u/07MnQgcMkwXlTKUFXaAgL6NtWqkU3oDMicGTS8nw8EmwxVeeTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771748094; c=relaxed/simple;
	bh=404SbAHUSp6uVnP6BB1kQQhLo25IhYVAWd3YrunXhWw=;
	h=To:Subject:From:Message-Id:Date; b=bNiCpq7u1qNl62SvE4dzpHBS3NtRrspZ5qg6U+Ahhl7wXQ/PGU1lG6tNWD2q43JeLN2PEWtl0lwTIZFYaSCMMFTxRsFgXAbDLYqu4wKOQz7hlHb4lB3LJv2fMgQty62U1T3zlVjwT0fYq44uWPfdhMWzmgorCiv/SspwclxNF4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0W+dayE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0W+dayE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC385C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771748093;
	bh=404SbAHUSp6uVnP6BB1kQQhLo25IhYVAWd3YrunXhWw=;
	h=To:Subject:From:Date:From;
	b=A0W+dayE7/8/Rx2shW7I4D1qQMHxA4p8fMJSdUO3o5akf1ofoX0nUelsJRwujYkPQ
	 i01cj2RcGfB2OC41oX+FKPpfqrNcLPeKGHKx+CgEoElU+wOD28gZp2+bVzWHV8u9az
	 a5KEZxMwqDEiktJMEXTF294E7NnTgGpNjoyPmd8YKp9HzBm+NkXEeJeXilp9mATqYq
	 ub8STBAmXp3HeNVPuGqNPo5JTWU0h5ChNKUafEj0kg/mI/gnt6VCuX5cvR6oCxgdoe
	 CRuw3yu73fwwX/4w5l7S4hE997bfqsqiwmhV7o7URtrUzrA5E2atmJGlPk0yN+rEoQ
	 sd52HSVJVk3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C90C624D4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174809359.31405.12536628663658210190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378ef04457b81a410f43b5b21ba674aa99bbd0e2eff60f6d8f8ce883b9ad51d5
Date: Sun, 22 Feb 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771748093
