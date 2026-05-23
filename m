Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B938258CE5
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779574354; cv=none; b=SqSOqT0LSKST6l9dtNv49SYK4lh15OmsEx/WX8l8Y44olLvGWHv9VgWDmlrdwDlg6dut2a+NfIkImBsraJd2sGx5QbtvEoSaTN31uFw+ENwD7qVnZSbgTt8e9hf8c89F1Vlddg6jTghW7mia78cWQh1uwjsITj+z2eTa8sMIuoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779574354; c=relaxed/simple;
	bh=jlSL+JyUmmXRBBDMCQYDk19DCkCYKvq7LnvD6P6xh7E=;
	h=To:Subject:From:Message-Id:Date; b=rW9Pgqu5O24fdfVIRUWKQjVhOfJS3lecShxZy/GqaxAO0G3bCVZO4i0MUGqKUCr5WCHr9w7T/leFPdnPIQWK78cQe/OPlAEfYrfHeYXRnTwk11/hkdaRklyVabhzKDopeUw+yty8hS7/tChZaU8KpTmRh0rtmLf6swfgj4uYfr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1HlbSHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1HlbSHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1BDC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779574353;
	bh=jlSL+JyUmmXRBBDMCQYDk19DCkCYKvq7LnvD6P6xh7E=;
	h=To:Subject:From:Date:From;
	b=C1HlbSHG8ay9SZeO0yAyc57hggWGlq6xLw3Gq+5Mo+sKzcR/qb3Y8CFrcF85P+nR0
	 D7LDCGPvuwcZnvW8F9ajj/86wVJdjjkNuvJYgd1IpNBokd9POyDzzYcGaz99QSfgG0
	 s3oqqffxZNUejz1KNyySy15wZUjJkOeSQMLzEDsM+ss6wbub41y6IhtnlOQN1jB931
	 nqRimEC8H2GwQuIbHUqWFwuTgUVNtSHE3DEaD+Us94mYefnOi3i5kL8jnNoViJj5h7
	 msq+kkgdeX/8BljlC16DrA+dJND74HECNVnbIdXFHiO1dWxxdlYTd7oiClyXAhdJPQ
	 phQhGmBZf4dHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE259CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957435368.30691.722978594076800607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69b09ef3b434f375801f739968dd150d5d7e232f37f1f9faffab602ce672b03
Date: Sat, 23 May 2026 22:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779574353
