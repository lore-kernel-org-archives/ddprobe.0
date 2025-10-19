Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5363597A
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760860194; cv=none; b=rVb24RGuXzig6YMGGQQDNeWbUU02fkLDrjCtnXguAlH351/xeMHPqYiIO1dztEuVb5Da2ZpQvjJpgpFYcpMP8dTVl/zwP8++SSZZc2v5UWa+bqaANbIl52ogq9QhGOMYLFcFkAysrxB59iqWNHBabPd4rTlOo4pdhLRFlfv9YMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760860194; c=relaxed/simple;
	bh=Pnq0e6Exs7V20RwzQWunmsbSO84tX8YKhVGWI1LpsKY=;
	h=To:Subject:From:Message-Id:Date; b=HhRo3Etq7VXY4Q300E9z4D0dSYTbh+dBMUuXBIiFjNe8rUHwcOuf2JnOT4XwtonQgSWcnAMldo4RS56XmHHt7jJSJY99IvoH4EocNVyhhWMEknDpRh8ERiTnmUOTr4FGdA0bys9skUq7UnbzSxS4TYh5t9EOAQPRBMbQLymUMYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XDnEO9Z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XDnEO9Z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E77C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760860193;
	bh=Pnq0e6Exs7V20RwzQWunmsbSO84tX8YKhVGWI1LpsKY=;
	h=To:Subject:From:Date:From;
	b=XDnEO9Z3so/kcdG/niQy7KGBKgW8CSvwjhYRj/upgpgelStBZjmk8rdUBxjaIdi5o
	 U9dY0ai3Iwrq+jLck9Rec9RVP9vPrWYeV3qub0V9wb4wvtcOxyThU5FjNyIWYIoRLu
	 9cI9kfeAoXsqEAII8C9xnotri8sQzbxY00BZNr3PYO4dIf+GoNbHuH9DxtsPgI3P6Q
	 EXvcIh8ZNfQBOgPdrr4sfeDNO8zZ/jnCefWnEVqVY7bdYSYRJML2dAkDJaTmyrkoTx
	 wge4Uq1Elqkn6q5ofMh45XYvcbFH0Kmuyen/b6MOOO5aazRklKrI/uTn7RqrensVXT
	 F3qy3c4irP1gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9227FCCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176086019357.29958.10870902126998856437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29560d1c012fc2b24baec6a8634c75226d2afeb3674c0a3eeb369414b2cda597
Date: Sun, 19 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760860193
