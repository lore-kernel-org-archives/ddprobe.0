Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C11F370D63
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790716834; cv=none; b=XnFCa1fIR05SOqyko8xxULBisjx1heJR/+cmiMpdoTMuaMN/mbCoYQPD9Sg6gNQmcVkVIOeI3nkKnO40RD4oAJiCJ23oLTAhakGTb5EI9ZV8cauz0PmygqUcSiWCyY6jcZX92QdfGwgLO7cmGy33vpta2nDH27fq+7cRhXMBXMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790716834; c=relaxed/simple;
	bh=c7FjWo6DP5NOuHZdQlVTsklkRYHQw8oK/jnfxoKk9yU=;
	h=To:Subject:From:Message-Id:Date; b=CGkhL3r2uElLjaCD35+mNVDv7yF1qtW/ckhi0mXsGqpoTY+n0tyFeVvK6Ng5KUjdYW4Ilfb3S898JGsgkTM1NCDI4CagaPx9KIkbKtso35o6lYjm9CfyJb8zFWcyu+i5LKss8P5oZJz5FLtujbde7HMbPoYFUPsUnvzGHVHR8Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgQHZLhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgQHZLhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E9FC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790716833;
	bh=c7FjWo6DP5NOuHZdQlVTsklkRYHQw8oK/jnfxoKk9yU=;
	h=To:Subject:From:Date:From;
	b=RgQHZLhwXAJSROa1ncguzNV6o9VtFf9yyB51vm2V/HZKnZnC+Gvit9MvurxMW0+zM
	 FTc+7qfx+AMlXCs34IXUgZaOjV5QTthcRPIsWvw7PMYemSEb4lL1AI43R78uQiKh9m
	 q9vVp0pzhAUKkxCxxVfzK4cypSuuHJFYYiNMKknz3XtGTx5sFRXIHco9i4q2eTS5WU
	 XLgzRrL4JFh0tkUwFLWLwuOyKfczKJCUF/X+NByvAqu9MCVpOsnNA5GiB0YYj9Nq+s
	 Tb1oAQTntT87eRj8JsHH89Oorf1sKa2CnoIUXk5WveuvU2ySCkKmfOu8syr/0Cckxt
	 nrOwdJUczNoCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF1CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071683368.6780.7564832210646354647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6e84f43e545f969ae271427490c5fba78a082c58f8612e5db4e5007d246dc5
Date: Tue, 29 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790716833
