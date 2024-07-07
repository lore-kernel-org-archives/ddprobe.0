Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC9C5C8FC
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720379783; cv=none; b=Z1OiVLJVL1kEF5qAUpjZ4FtNsQqHGY9MNiw1stHnDeHxEttUKlmPb5mzDg6zxBzCKH17eCCTw+XtC7OZVCQC5BbFY+qXOvPxPezwE8PuMiPEuig1OesCkZkG1LriRsnATgZxEvDTBESiL1yczXO/Az+h45k70YGXSB9eEsmdtRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720379783; c=relaxed/simple;
	bh=+FrHnJSUzwh5Jcoqwm2xPib1/1420fQRZUfPINwU8aU=;
	h=To:Subject:From:Message-Id:Date; b=foQoPjSmN5R3IcZG3qVw7XsUSxRy6wA5Xwb9QwsXkHsuzfKglCYaYr9qIwtVBM+H9yHlkozcIzo3S/2+zStiP2+kwBQlxT0ouBFwLAcPk59xQCgbrj1NGlAZfWmBDDNlX02kmYJofxMNNzr4nFEjEZ1MTHH6V9ufqNc+KU6oWNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUUDe3+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUUDe3+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2526C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720379782;
	bh=+FrHnJSUzwh5Jcoqwm2xPib1/1420fQRZUfPINwU8aU=;
	h=To:Subject:From:Date:From;
	b=fUUDe3+/8skX/yrjypZPJjdrIuYRJfQVdwDr8MRMhh0LIpm2V698DJ1qnJL5N4IWg
	 NBjD0OcKjEd4OKYwDwXYotTTOrHYIW+Ac9Dgs1YNL35ScZ8kvX9yAG2OD0BUr0V/FI
	 mQRnHYrtNwMzia44gZCnPXUcT768PJcG5ojfIu6GKHEq2D89pnOCPp2/Sn25oIlL1X
	 m9XhwCx2IfnCLzCwuUVohViHtD7sJSB6YooIBU28rinPrlnfNKe/gGghv+vMh/jL7U
	 RL40tg5stHk+It13gE9wOiVxUpWU4CemPXB6HzTlCpuwUiZGM+I+IKCQThyzYq3lYy
	 N+9MbF4BX/WSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFADC3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172037978276.7819.2302466191193308041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e797783212c16b5e3d80f8e2bd6b0862223c755d69b090b1be78255e415ae993
Date: Sun, 07 Jul 2024 19:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720379782
