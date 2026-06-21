Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127C3221F39
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782076594; cv=none; b=X5ofHC4M4lsTn9oDfGPuAa7+X4z4gRZTuNkJuu0WzuaqNSmEpydAZKAmD80m690KxKLVGb9PTBfhVybD3R23PFq0Jog4teKtKj0BJCjQR95xi0bIfI+VAYWTtLBtuDHwIhZyKewztTltkOJH65Ew5cDs4gZHEYq3+cVndrByxBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782076594; c=relaxed/simple;
	bh=fXNbNjgHoNpmmR4FWmzXrdy2qXUwPAjulpwovAffdTo=;
	h=To:Subject:From:Message-Id:Date; b=gRczh0AFjL1EJuhT0uxzNZWrsGk4EOykgooS11l5w0KBYpfEYXxACbeqO/gCI70NrvKYS5/UMnXWin0+BLyVdCE/gjxUnd0Vghf76atq5dHv9k/eXj6BgWKUeVh1fA5Nki09BijTyLVJMWqGGkIYS7BsmRRdAbNNfT/jJUMUWfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqyly5AX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqyly5AX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43AEC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782076593;
	bh=fXNbNjgHoNpmmR4FWmzXrdy2qXUwPAjulpwovAffdTo=;
	h=To:Subject:From:Date:From;
	b=cqyly5AXqV4e7mAEvYmufEprZJEQIaxKQqUBqIsFexGmSVlRDk0TXSkpiVuQQkgpa
	 rVde3AY+J61ZlaffvhQreYMoObRgLwY8Jd0xhKSJGgb7u6FJrlwHKADpyEuQQOCI7+
	 4Erc5hb0mjVB1YZ+yMV1fxlFe8i8Ht337y1huLiloRKZ7SZbTNCJ3bOhfFuQFVJY0f
	 7lDGNFrQ4N8ooYlMhO87I1+Qu8RBWhKdiaWYWp6dwsVVL67muCQNmjamg55P9IkBNf
	 cI5zkfcT+atAfagbWKmkbFCdVJzES2I6iBc9TGuv1FH739o5J8vWn3YiZBJhy9FlHd
	 9a+rByxi/oE2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9793CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207659371.26656.18029072965271450827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754c7f9920c835e414db1bd5f4e2e9a88eb020a6ae872de9670e2bab24527fc9
Date: Sun, 21 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782076593
