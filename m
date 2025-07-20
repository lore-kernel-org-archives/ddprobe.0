Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C78F43AA8
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753048194; cv=none; b=P9F0ToZy7eZVP38Oqc7cQl1Fq5XrBn1RALLxma66RnATVxMZVf8wvyyZnzR/3xKtbTuDOViigPupjI0hUzDp1VApYoQdQUsZZWifzQzXh77KqFItjBnZU+oU90W4EwNcxJk41x2eU0ZDJ81taVeGfd1oh0feaeN2T29HZSvMTAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753048194; c=relaxed/simple;
	bh=loRsRDeBLtZnDtOGXofWVXFSw7tsk04WiUxGRJynXo8=;
	h=To:Subject:From:Message-Id:Date; b=CacalIjpIn/AWWMJwcnYL3N5rLzGNt87t9/taNbyUec/6BOLbk5HrXrmcE0yBwBkTSUAadOFFrP2kOquyDbrhtk+s9lFCar8R+qgkISu96byj0aYbg7CV7t9MuY7GahoTKjFN1JZZARc5ZVrnFs7KcQi2UaBnDz0hJbwpa0mEu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SI354Eg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SI354Eg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A413EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753048193;
	bh=loRsRDeBLtZnDtOGXofWVXFSw7tsk04WiUxGRJynXo8=;
	h=To:Subject:From:Date:From;
	b=SI354Eg7oFpHGyubCZBAy8H0e8y2CbFqzIJAfnmhI94vO6HSIo1RPsG2orehcL4H8
	 Mfk9/PLNr57Vgyte5jj4y0rDL3xgQDQjnafNkDsjT6den7QLbC7JjlZtXODONjjeot
	 Drd1im6gXEm2uDDdqIgsO4PaPNsAFpTL037jkcDAV1+untRmMt0somDJBgr0m7mNx0
	 SFY2/Jgp+6WOIQ0VgqQa+ktoBNym3WhIx8RwbwjJuVZWTJREsFIItsQrtApU/DUcrN
	 xQW3GCCfTysD9GrisR9suWjQzvH8uA8+LW8I7mBRUUNEu4SsHW++gc0/CyetVxZcB7
	 n+vIhal5GreBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95474C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304819358.13415.1410056868995035411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28cde77fcc3b61915c7e37f4c37611df03d32b1c265571a6816f652868e0edee
Date: Sun, 20 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753048193
