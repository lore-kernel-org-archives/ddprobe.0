Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D5928312D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768961634; cv=none; b=UW9IqR1sAM8zZT+ZsZxalMqF1fkaWaOWjLTK5OhvQMjAFkEHpF16Gin6N8cVC4XTJe2i5pJvLoQAJJ+JGEtw0m42yAMZ0NHLOi8usaNX/0vwV373uRA7kTSnFoyV9Yu41SIfTxcuovxn1xXP18R6gin3j0JUvs6L35X8KD+3Bes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768961634; c=relaxed/simple;
	bh=cVVhpvzYNmfvLpJme1+1DU/BY5XF/w3pCnFmpd6y85I=;
	h=To:Subject:From:Message-Id:Date; b=qkA0YJRfly7qcjwNKNHGsbp1SCzn6/y/ANAEage60WPJu4PSm6GCFv6LzDZrhhMEaZDVIFl2d5U0+G4LUufgv/FoTuThGBp2VCRdEu4W2ensR02Rp7N4i5IX4G2JmVS6lqZb1T0EOTAqQpDPiaPHTHam3Lf8gzIA3E2v9fGfYyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8D9R/h+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8D9R/h+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDADC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768961633;
	bh=cVVhpvzYNmfvLpJme1+1DU/BY5XF/w3pCnFmpd6y85I=;
	h=To:Subject:From:Date:From;
	b=b8D9R/h+3L0msFIU+Yaj0/svmU3BFoQdM0IIE9CdLAS3coPiCeQzpoZoAyT44dH3J
	 dvB09HZRlH6pc6dGFFSei/fvdaYJxa/rwsy0bPHHHUHODsN7b2VYlLw/n1UQKkatLW
	 UmaVoOoqESzbWXkqCKIamZIqyQDlsXX4ID73Iw3upglRpgEwM6W4WTFJ0IIpyqH18P
	 fQIJPzrAE3bjBJT0cmHiV5A5ogkXuvmZcPlZ8USFKovZWyarNJvbPLaKPwG2os68HB
	 sOaqWXhnrXvRzEgpG83n2025TwhnkPzSuyMBNsPCYR4WdrGZ26WugjqsXPJAGyK1ai
	 KYQ2OBvBPezJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B7D262B1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176896163358.30399.9522364156997518399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c38e179a8b6be9b54c78aa07d3693e4bc5a9db0534e67063624fe6a1e06087
Date: Wed, 21 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768961633
