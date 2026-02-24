Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B9581724
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771900494; cv=none; b=cTQE3FWQc23WQFvQS/kYdlPSr6scGa6ItEwWvdlK967sI4xk0SlbUT53zdFs7VSUL7obKboaXthElBd1WTFe5NRJ0uZaJ3WL2vXwCzfjcULaYYBtZRkjGrhHZ+rcHgmmzbiCF9YgL1krmpiIyX7RZH4slYmo5lKccO/pFyqO1IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771900494; c=relaxed/simple;
	bh=ZTBnsH0HkOVceQirbuFHPL29n7HQ/6FHfwqgSy22LzM=;
	h=To:Subject:From:Message-Id:Date; b=fGycP6NUhlQcVnop5UTJGKMNp/XtQ9ohwDtkbam0lfgzmkX64BX8NZx9M3/JvNmJJaNkaz6bGa5s15UXT3ednjPbHlRdPKpfZcnujeKJSnjVfedX1fz/dM08t1UOMDH1C6isawKsJZYwokYNGrv+9xGrzXHNlazk+N6N1UbjYLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0lyYaoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0lyYaoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C60C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771900493;
	bh=ZTBnsH0HkOVceQirbuFHPL29n7HQ/6FHfwqgSy22LzM=;
	h=To:Subject:From:Date:From;
	b=Y0lyYaoTrHEZT/jEqeq3fENTySJhl3lghrHXwip/24TVasWII5Vrnt8YshjJcFAnV
	 qpmCH8/ORsnuzGjXqKfyvklwbxMfFMTzEjTPegexqN8GUo7Mk483I5e5tGIJyBNLr0
	 XZSzXbVUPlFcI4JeN2j88m0EZ+CNoav1LCq3q7MY1CNUVVp76ZXtHON/osZ8dotexA
	 O3Cbs2c5BrZsDe/Q6aEPJK4QKYS9QMVifLUfblrebqCh30I91mXg9bWYyO1VOslqJI
	 ScyCLqqy7piOXRJpYzNYBnMZc4kTiiBiY2Com/tRw6xGZsoHtEjk77RPKdT0KTxgUa
	 AwI9CHQpIwEqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9230EEFB7E5
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190049358.4187.3810847392433407246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7acf5d33bfcd95e87cacf1e162b9eb4e6dd08c7a31e7d3013fb6ca2607f782
Date: Tue, 24 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771900493
