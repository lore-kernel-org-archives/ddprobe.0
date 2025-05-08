Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEB578F32
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746722394; cv=none; b=U5b7OTDNwwEQuZ8u4SvT1TrLro4aW9ANmzXSrakeVfqMMQdt8FcGNNuRdP+zb1Vy+96qgnpSpBOFQF128r0W6ccATF/0vAxx8GlqNxVwU1FonNr+y734WSDijdqEluR9fXqgFTLycfuROIY1NWpNKMP7YXZweR45wA+F0BWa/M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746722394; c=relaxed/simple;
	bh=Q5IsjepbA+MpX4bxLMCDb9fHasNc2yLkWZiTV3qhTyk=;
	h=To:Subject:From:Message-Id:Date; b=pu+j/qhI1Voc1GzH9DFFRKeE+nbFsWKIhWaWJFOo0xZm/GCBwcUXDssxTuZRrWy2exbAOX0KDvmXdbx5Wa2nOWiXYyIjvXgqCca1FVdClTWhuttIQhOACbKer0Hi3rfZiWRKWISXh6WZheVdw7SxDaiTNJyxqYTo4eS5BvLgico=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVqKrIBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVqKrIBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DEFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746722393;
	bh=Q5IsjepbA+MpX4bxLMCDb9fHasNc2yLkWZiTV3qhTyk=;
	h=To:Subject:From:Date:From;
	b=aVqKrIBlqugg8MVgeQ/IlUVtpXrq1dmdwTN5IdVUAnQUOKTWp0rfuvV8cFTAaMx6u
	 BEWaIa6XpC59+imY+vVUI3Rhri9QGSXENeFa9ss8xZJx6Ezit/m19qhOfRMxII04LH
	 2fUu0rjh628aIG0SJW62JTl2pKNsoaX5zNYn7/eM9zlalKnofz5zoHkZ+z55UCVa5u
	 srJm5qh4/kjIuPKCRoLQ0m573RcUVlTDYofNz9jRdBS6nubXZQ7U/ZVqUCunXa5L7b
	 dGaLXLRtZxfbj9hvFn6olkxSlUV98/qpKYOB8mQoPu/yORxfuZQRJaaDz0FSboVqNE
	 fDBeKQpxedXpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E54CC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672239357.27212.13207382801310217803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ad11e315619529c01167521bd874c501cb63908b12fb37cba66ee6d07605add
Date: Thu, 08 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746722393
