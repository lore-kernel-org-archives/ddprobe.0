Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4690010949
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715545343; cv=none; b=N02RgB3RrZoy2DCMACNttWTQ2qNxNmkJI8pOhTJtKy+zSJPQ5Ezn7zIJnNABwlP3zJqjkF7RdK5O65a2SbAIHh/aAQBwrTWIWJcyMtohBn+1wxfP4eKU+eu3pfSxLoq6TA5Q8bD9QdW0wcpC/yHBrTv5OWPkknSMSDUX2o+lDKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715545343; c=relaxed/simple;
	bh=JiBc/ep963x33mCCVr7HLEd/fZu6RZI0QiXLDd/ceLs=;
	h=To:Subject:From:Message-Id:Date; b=him6CookrixVpxUS0aKXdgyWKJEHOro83fzDn6MswClrhXMoDwJ80nMWHqTHGSNJVwmjAaGquV9YVILKTGOXFVdCCN/UeX2MVAZ2XaclO3wPOBkOvnx1e1Y+M+TyBsZR2C8IFdLEINR2JSdKpif4MoY7nEaQKP5DcGH1Bnml/l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxRB26Uo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxRB26Uo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15E2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715545342;
	bh=JiBc/ep963x33mCCVr7HLEd/fZu6RZI0QiXLDd/ceLs=;
	h=To:Subject:From:Date:From;
	b=GxRB26UoFJuL3FdGIRoGh288VNYXwvJ/DMJKu9lZPAj9WEJ7dVtTeYkJwU+rukMJD
	 CovldZKQnho6wEI8eEUJ6KxhX/5QjRVZ3Ws2p8196nCbTtdCkMGvLHVtVEAFB1XQBK
	 4XG0yuVobNZ56uGlYIEfMof7thMoZJ1UaxSzyBmBdNwASs3QSpq22G4m0Y1CXCUSP9
	 AGodWD7NRswiEOLreecRXoQGFTbmiKjZizmb/UoS353Z3crO374LlO8al6fTuhHxG9
	 7RR+Cz6RaFkr76a7wMbtKI0kvkx1pG0oUlBd+but+3FVst7/XNdPSmZXsViZqjZzbH
	 6t1oEQvKpKVHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27CEC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554534275.16131.14128646651220257919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc58eb464a2d48dcc616833fb05bfb37f5f2791d53f59a3f74f15065707b1133
Date: Sun, 12 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715545342
