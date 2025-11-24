Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C37C2BE026
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763959914; cv=none; b=G2xJzdV0zGoRoImZO/3RFhQnZjrmJLr9/xNnaY29hZ3CRMgDsvMV/o+/vi3NeUhefE63dNb8fj+HQlYwVkQWwYQ5ZI11cLF0+rtbcF343ksGB83UNmkkaDFemDs4dwPh+CxTAHlLVt2163emW+XKTSjAAR0JptN0o7vk99SEZDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763959914; c=relaxed/simple;
	bh=PVNIIzSSbhVUFYYrk5kI/h+4vN1zeMwjYvFbI2gf6pQ=;
	h=To:Subject:From:Message-Id:Date; b=tyc6M3R22byZGQO/qC5KPw/AB3nYcggWZDYZv8H4D8hjd0rsMTy9xIRE+B+uWDbn2nIxN/mrNrbph5I7roOJRZypg1IGrL6yu98Dfse7LPWvZ5ox5BiAjZaYhTWqhqI4kO5HZzkZlQRuD3pxc7Gx8utF+I6H8IVo4FGD+jWf/TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0n0thPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0n0thPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A210AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763959913;
	bh=PVNIIzSSbhVUFYYrk5kI/h+4vN1zeMwjYvFbI2gf6pQ=;
	h=To:Subject:From:Date:From;
	b=t0n0thPOZG5x2EFNCd/EoECIstkqzjOarjYiKy4bor4kMddgGI5eyFROoRHyTn5qD
	 /1CYSG6KZiH0xIdgUzshtkyy0gr+reh8cLLJOuh4gw9AUsXBA9JJZTt0zLzolFh+Dx
	 c/6asL6Kx/d2AyOu1jE3NOSb+6lyVKHzps17A99lSMFCYeyFg2Z6QKaPTmlqFP4FFg
	 MKn2Soc7vY4pb16AsX74AspGQqrGRjZCu8fdxypNvR6jQY7SO11mxqhwvUumvERv8E
	 gnhjGaSpaS7lNvXhEc6UaXdd53RJDsan/LIG/5aKyH5l+3nR+rfzfFx4tSu/AiGdVQ
	 uDZWDdF+TLFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90487CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395991358.22074.8693083212674704768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f095807111c38a5fbdf89bf42df243d51520e0e394665863db26745a0a1877b7
Date: Mon, 24 Nov 2025 04:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763959913
