Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204F21B4257
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772849094; cv=none; b=vGqhS4TLdzqfTJaOAILkT7nNrlgfsygJlOEUZ3QRmg9jjpbwf3AIgmw1z99WpYN3Mlp+KsgkxyfHESSgkLgpR35IkrpopjHhS7p3WKdILF8GXu5ajVBjmH9cjYzLfLlU+pe3L5svx798pUCEzQmOg/I5H+JtcCPltTuUwRiUzw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772849094; c=relaxed/simple;
	bh=yCm+X9TjlAi6jySHyPPegX8x2wMkmdSpkh+uZ8HvjxQ=;
	h=To:Subject:From:Message-Id:Date; b=aP1Q97+tVB408t+OS2eEF7GWxKr8XYucZzI+4WNXU253TFHi/dg+cdTC1KbDRhpwWIDu1KNLLR8KVUkWiY/s++3lxkF0vMsK5WehlqJ1yjfyLWb+MGlLAiSoHnIIlmG8ClR8mvQXBKsHkDcFeDi2Mx4BxRKb7tMifxBBSsQgV2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZA0fjjeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZA0fjjeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B932CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772849093;
	bh=yCm+X9TjlAi6jySHyPPegX8x2wMkmdSpkh+uZ8HvjxQ=;
	h=To:Subject:From:Date:From;
	b=ZA0fjjeOK5VgZcUc6cu2ChB5/VTs/H8hW0IMSX7jrLcgJjjLSnEpkvnxFMLCJprdN
	 k6vSVw8EJLYSSApyV7wRfQjDXZySlpHwSzJJdtz1wg/KA9qKlYHJQUWJ3ZO3lltd0x
	 F3CnzzhYbsTqP5l7pIiKhDop5FyMuJKMQaMLbxJCGuzAoNDe/eAoXL1OxSk9heuPpi
	 Gn0pzAAXfIu6aj57Rt6aG70T4x+JrhwRTZK1yOfQH5otbXy7Pb7TXsNifu33WZuSLx
	 43/98PE3otWFUJxmW/kEIr5UEk5KMYCbzPKRidqUDYnHryJMLNw+ys0P4Ph7N/X7R9
	 gRFtHzzt8CTug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFC7FC9EC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284909359.11604.12627777757190756329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a9354bcf868b627feafdaaa2b98537651fa44a983bfeda80b85e68c5448eea3
Date: Sat, 07 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772849093
