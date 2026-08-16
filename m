Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12B73D3D1E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786863034; cv=none; b=Dmh96GRnwfCWHm/fv3w5R1cXQ87bPwyQblacllSnYJB7EOAfbseZWJRu3fWvATgUHbSQXzhJCc3NAd22cDbCUOcgoLFqckryv2DOgGRj/Zb4nmjB1Aw2yLs88/U0TfeiWftkojIB9s3foqC4VTrKxjUq1FDTvI9l22gAN1Q/ZGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786863034; c=relaxed/simple;
	bh=X1MG8V/Vr4oQ0wt6pJo6wDHx9Z1jJs+u8DuvybCQy10=;
	h=To:Subject:From:Message-Id:Date; b=mol42KNEOKwk7Y6sZ6qtmX+zkpFlg1VWNythfGwUr7Gva9v6NkrQKQIvQPcB6LIaeSfOWov/OiKXs0oWPAh7HgPJs82oYlW8oymMnoHd70C5WC+IzHHrDc0pBkBKmqNSG27CLtDv11ljtLDYMg85SDT2M9ojbmxaF9iiWsRgmKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAL8I0hM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAL8I0hM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADB8C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786863033;
	bh=X1MG8V/Vr4oQ0wt6pJo6wDHx9Z1jJs+u8DuvybCQy10=;
	h=To:Subject:From:Date:From;
	b=TAL8I0hMLzgD5fQ+sB20SH3qgWWLgtQUvrSeQL+VxL/cKhFLHicdkcxPvaUj9V3m/
	 MEaSp2hdz2I/3JeuBwuFNJoiZHiY4imzUIa3/mikQAiLbtol2rDkoJ8oCaPnHVG7Nq
	 5zHkPjDApqawsAKl4PzC2PzDq4yqbLVLm6L6O7mmQ6Z3EtV/kTXv2LVpI632+SBPaZ
	 geKLKCr1dNm+UfKvZLR7cW/q5tShrR44JLIS+t97u1nbRLl3ouQKbHt7R2BC7cau+5
	 jwvuXIneiqie8vrWsTZ1QDaWB32gogbq+BUklawt29tm9NdryPk6zXGHBcAym3OPc+
	 zfJPJgtv+i5EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7820C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686303369.27446.3387581621674387520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13631b3f475836c49d809da4df88086ff98cf3494f85605088dbf114591c1fc0
Date: Sun, 16 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786863033
