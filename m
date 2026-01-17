Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C0E29BDBF
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768643634; cv=none; b=QqWu+V3raGfX8r7i0mnlaGrB9v9X0c9317/Pi9cfOf2zroIszw3rEP2RzeSxCQJMT0MLFjvH32M0/ieo4rLEJd7BS/80oqCa0fcZzne7QteOdOAkFP6nbyQO1axCmUw3w0w6rj5lJJpaSPWaFwmoyj4WLA1wiyaq9yDEfs35as8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768643634; c=relaxed/simple;
	bh=CfmHUbQc4t58cXvEIWHLkOJ8BIN66qr7pz9HHNMKbg0=;
	h=To:Subject:From:Message-Id:Date; b=hdjcPL5+i7Xxu74b4qEz6zqWXN4MwBaj5Z7oURL7aTaKS+l0czLFEwpkvcRaELN4icwMoQLYe33WHIJvxbwn1HxuHQPK/JRjOM/Gflw4AHfFnTfkP4qQufBBrVWQuruswjbbO6wK1v/MtLMf3eYH5+xQqoX5Q7P50oTS/ceceqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhcvWZbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhcvWZbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5997C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768643633;
	bh=CfmHUbQc4t58cXvEIWHLkOJ8BIN66qr7pz9HHNMKbg0=;
	h=To:Subject:From:Date:From;
	b=GhcvWZbR/LjcE+Fpz2JrFL4M8BouKqpee/fNW4Wt3Sun9mS3DlPFEmw5nDv/tjlUK
	 jPKo2CeHNLLdevp9XGk6V4f9MH5d01Vzafd8j/fjIUKkWbm/DXRN92UfQF8PY3211d
	 3k5zPwMWoEw3HFfuAq3HgHrzCZT0OJGr/IYpZipdcoceJgEoB0CNbkzeAPXSjpkPVU
	 p0b6+VpEIpR5tcrpvBNLQDR5b0rngnXlcNosvbn+ZiEKigDDfeM7PEzHmMhpHxrrcq
	 gcyb0XhIh14kugGQtQlOvOYMihBlefhMxqnARUA+jZ9FV0xvElXVMIhqWB2BUD2HpD
	 FaRMuzuJ5gYBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE8C9831E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176864363357.25437.6972170205159994783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2bbc711f6307f8f61ec67812aaf8cfeff349ffc7b2eebe35fdcd6bc537e7fe
Date: Sat, 17 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768643633
