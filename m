Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7596132
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705551497; cv=none; b=til9lOeB1L3bFauh/5Gm4ZKscS/r+g4I0pQiuAtnikImKBrdSv9t5/gupbbbeVOm4N5qYfv3MgUZ5QLlsIrQpfNnV5AgMEVZHjAGtmDY02tN3C2UjC6xGmoWA7wv0vNGBQfInQHH4Z844q6syUiYgJyT4mur+ElQGrRB6aMXpOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705551497; c=relaxed/simple;
	bh=Qz8wobVZFK5vS3i+AHnWhpoXzTEpy4TsfL875IlMnGk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=OWgEwmr1jE6RPMf82EVM4TgQdXbY2uL9qsDLciP2BqrQ9ot1vPAxwf6yCvIJRixUHbaIm6+WsKuADvT2NUEryv/FYDCiSPGaYlP0sxdUfzUBy7RidJaFyOFwV6qrGsRtFMIPCEXdCT4atKJqlHovwNeOb7PY2JrsvWlnO1jy8oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/iuLUDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/iuLUDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 799A9C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705551496;
	bh=Qz8wobVZFK5vS3i+AHnWhpoXzTEpy4TsfL875IlMnGk=;
	h=To:Subject:From:Date:From;
	b=F/iuLUDnR+xHO7EjLUxDbD3ektCvsMDsffhyaXFH+wHI62N4xMznV7u0vIeJdfuc2
	 84G9iOMP8D5kuMWySW9LD+H8ksgQdggJLWZ1+kRd3rKFCLVoADRpBq0diJVd3oTmd4
	 7SYtWwCEwryDvGM+jbmG2GI1XBeQUuhblw6nFs8KqfsZP/7szM7zKb7DfmoM8We95S
	 Bmi72LsLLUbTDlrJcXlxYG2xqLd/3BLdkKDCNDs0PpM4Eq84mSDV3hiEb2s4iTDYVh
	 x0zw8QG9hHHTRs//kXpGzzKBHtv8AzVERLAhMgXy7Zxcm5Q7QAb9JgaHHFRRdtEFbN
	 oOtq6lJKzUvMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E99CC47077
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170555149636.12661.3770840062080693696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98289ecb673d753d21ba26bc4c4ea38aef8d3fe053ffa7100a9a46d1d78a7a3
Date: Thu, 18 Jan 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705551496
