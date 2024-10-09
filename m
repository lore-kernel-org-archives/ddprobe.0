Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAEC188719
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728464754; cv=none; b=FfqqzZPTDKIzGDk/KyAMGZt9H05E/+znmt2iJ6+4pHgwtUze+7bspqHcUyOEIxqmqEWo7pFisWXjU6KIBYoPa3+C8LtyBf87ewhPqxGEPzhWLvcgY8GtiXT7MpcB3ZTAtG1WduaoO20A6+5LiB7jePEa/cNDLVZNQuGTpwpxRDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728464754; c=relaxed/simple;
	bh=gg6UXb3ZImkcfKNbKRMciRZV63yRsq32A0/IL29TsIk=;
	h=To:Subject:From:Message-Id:Date; b=qfBBQFffNy1dTKMc0DPKrxDc0wMx7tQkxB0BtXmZP6DvU9JDr2s6TPPe1+0+n1eQPPw3UZql2pleNOWosoDirZPY+wMPidzz1csRfpOKqgfN6iCdKG2nE3HHMw1VmxQZ/4K48U/S8GLMxE1SGrxKdyhzLkfuRu1mJ4bNXdqSan8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQEsxUZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQEsxUZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46C2C4CED2
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728464753;
	bh=gg6UXb3ZImkcfKNbKRMciRZV63yRsq32A0/IL29TsIk=;
	h=To:Subject:From:Date:From;
	b=jQEsxUZiKcAdWfAUO9v/oxB+jFEMPaLjNKMfZfFieLKwBFFhXSVGlF31VkQeWzBli
	 y5bIDGVy3uLxn1kaxxknDvbndv6RwRC4D+wc+CzfFzDNgUO4Isfn/1OBnOmYMnyL7s
	 ZR4SqmjWaaDJTMihBTyLGsi/YFW/E0xmOZ7Yj3fPHbnJHY8akWfMteybaK6EYHcwyT
	 7cmib0GgzOmuoJ7rRetu1LEqWUa5QxQvQCA1+5ypOrsfpGI0I731TiSGLxLX2kwiBC
	 UlGES6h3jkKE7cDX8kgF64wJWP2iygFwSLp3yYQBjJ3B2fL/g64LjjpwBFdMNs/kMP
	 3/o57fLK6QwCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCD9CED635
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846475363.12260.527378863069575679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72576ec1aba3b1db39934101969751ead7ea267f04095b81b8d6fe5445c832c8
Date: Wed, 09 Oct 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728464753
