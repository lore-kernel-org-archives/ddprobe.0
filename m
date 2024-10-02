Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307A41D0155
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727873754; cv=none; b=hmIoYxbcYG0YRmS7XWMs0kMNYsgWh34DYUG0hYcKjQCq5g/idkw6r7HBebn7MWWIx6vA04HzvzHhyMYae3fjK283qLWrNzgdBxBLJGnaSKuBKE+9gKHDS5Lt1MzJDGW9C7o23DTXV8eii2MTV6xe8ais3lsrVq7QJ9GP+Tefchg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727873754; c=relaxed/simple;
	bh=SdU//Wg+ECJVsIHPy7j0qjQDuGqa3WP/fSaUzN24N/A=;
	h=To:Subject:From:Message-Id:Date; b=Y/aeMevvzWjw9XtWKwnXkCsOkYN6ktt5YIj72wmGeBGbKsgDygvtRVDODEwhLgu95L4wWS4nHUQcMfoFQuCET+XEB+IIfrzpdxq3bkhRhZLjCWyMY4QwOr61focwD13NzKFyzx7B9DmpTu5xszJIh9n3t60oOeVA45fgvnyJPdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jv7gTsaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv7gTsaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5002C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727873753;
	bh=SdU//Wg+ECJVsIHPy7j0qjQDuGqa3WP/fSaUzN24N/A=;
	h=To:Subject:From:Date:From;
	b=Jv7gTsaR+KjQqqKHzKSE4FEw/W9+nn+v9epWyQGkRVbEagH/cE8XRN/3BAan5ryb0
	 UuddD+IzTlQ2+u+ZjiGzEdJ7LNJxoQNK6b5KEAw0FRFy4pyVe5paG21E4fXKCQ72ca
	 ps+dBLOPlEzVreqaV8RLMeZJxaDNQnhxjWpuElFAqnvM1+56DSyrbLlf0jQ3kS3lIP
	 T/WbDExosUGuPKzFApZziaJ92xhAaRt8dVAvfZm9A5uWMzO5BfaGnSITJ1ikwC4Z8N
	 JZQg3Xj4xTRvcYIz8jQt5NKYDYp6dK0A3AoUjHtRECbxiE5ghfRqFCjGKnVe03r3zk
	 TcQ3l25y4OxsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C54CF31B7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787375360.3151.11188670017684253182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19d69f0af16e5879d5e99493c4eb9737157b4a66ad9e9e8e9c25859d432356c
Date: Wed, 02 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727873753
