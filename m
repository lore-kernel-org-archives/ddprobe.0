Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FED629C328
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781134594; cv=none; b=ftkJfyQhaBc2VuFEFUfoMuJ9qnoP3DNdzLfMSZ7G60OCbK5ygkSCICwjfXxlMMPaKxiq8yMr9+UIE8zJLUElbSBqQjtWBcnSIsegByyHPO/4Mp0wrpe0rjxY2iMiujtoDGJSvTERpW84xUoKEES6uEJ6wemKCi/prTl7SkkxCXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781134594; c=relaxed/simple;
	bh=ky7rUBtsyfzFRmXWztg6a84RVUWF2Ijk4KVJ6MjdZ34=;
	h=To:Subject:From:Message-Id:Date; b=ezMR0Z3mVNaYHsPooNhBhfnfDGPa5XPQG0C89cqjTiUcinRg9t/wLhPzUC3UrDMYImY0UfYFR4Xgiv4lhTw6EgjEZXchOvekufrz7INl8Dkp+ySB/EJ8isoGtalf09qZ9NVHIR7tTR3MaqwaOwEksR6fCDdAmKw+YJ9GHCPn3zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnmEMrfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnmEMrfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C27C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781134593;
	bh=ky7rUBtsyfzFRmXWztg6a84RVUWF2Ijk4KVJ6MjdZ34=;
	h=To:Subject:From:Date:From;
	b=FnmEMrfsVBB+LGRfvvwVHcuDteuNDGzXTJrWbzSNqDHlHBy7fTtzGnokYK+PLsJ+S
	 W29Yvx/qg8Vya5c+P0dTP5vhWOtINHE2lYO7ngdzs4lY4ys5cTAXds832FWZiTig0W
	 ID8iGdL9V+Caa/17EvJSqcfBwI4vwJmBjL1f6LYv4TjV0MLCsHK/dlCun+J26FQ98M
	 Z83o9zDMUR+Az0JBeo0K9D53bx6ATrBWZaYLQIpdVp+zLCwIdad6Ir9u58M1oOZnD3
	 i1u24/wIEkXTcSLhTizYbXDzfx04o6YkfH041q6lstdErXfNGJFe0I9l+Kyqbv94f/
	 1FEYZMyr3ALKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A772ECD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113459367.32242.6265497449181077048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85dde21819e243c154cb553af91edcfc54a85daa50ce0171546917e281418915
Date: Wed, 10 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781134593
