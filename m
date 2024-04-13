Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0C017997
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712975363; cv=none; b=hN06ZW7nltJrdE51R7YsEVAN+smZIoy4KrMr5JDUeuhkl02CNgj67NW5I7jikebzHjWuwBMGfqbRgn6jOTy0G3bPSlsqMZ9PUYQpZXXthHUEraqYnwoFov8u47sZafTP7+Lnpg5FE7oPRjZf5QneEfizo7RZPbNotdYmlF1hl0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712975363; c=relaxed/simple;
	bh=6epsNnFFO1CkXOPbfbIbKCrpqoG+sPuO7hy6pwPJsXo=;
	h=To:Subject:From:Message-Id:Date; b=LaYr5/nYWHyTHylzSxXJguqBnchWLUHPimEc1X+zExdI9Vz1yYtKrbs+dggpklfnp+8tXtaVJaaJ1Rqto2cbMz28jUdTjjTfafTAxIQCAL7UKKLZsqwkK2CF+xckY7rdCFtBBHWwFoIvWgypUbdbytkdX73pFk6fL2duo8oJv8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFJIvwFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFJIvwFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CCEC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712975362;
	bh=6epsNnFFO1CkXOPbfbIbKCrpqoG+sPuO7hy6pwPJsXo=;
	h=To:Subject:From:Date:From;
	b=pFJIvwFRJ7KqA5nqFNi4NXzxCKta2sDb7QwpsFtaH9ADzXdANPA8pGdeREwgM9SS0
	 v0l48MbSLcWUc1Z74XqHpRxeLnUZhiZTT+b6RLMPtHC5yOAWRIL3kjU8eAeie679nO
	 z/0TK56dbxgGZgaVsW2RtRhjL+mfyUQ8IZc9Dr/hc/y3Qc8FMPZ5aiYcUAWlStefEB
	 SorEuYYywqCZltDiwU4FtwCCrhA8BP9cQwQMbmwWC/60IJmM8UfUeER1JmdEpYr81p
	 nm5HJvqAtG2I/rO1VMiF0/RZd5wF93zW/c8oI7SmxT59N5//nyIqZZQXLXnc6oc8eV
	 7+SwYJQMvr63g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0741C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 02:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297536277.31347.17742819993148804442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4730ac23673738b2c8fdd7b40beed97f6b91ae64f8891182f1a60e46a4a7b9d0
Date: Sat, 13 Apr 2024 02:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712975362
