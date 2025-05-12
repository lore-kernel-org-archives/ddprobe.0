Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6C24E018
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747018194; cv=none; b=FP5YAyfJWLYmbfnQnz5A11HZxmfuwZIwXR2mpskQZdmZPUdEBkugG2km3eslZmTnfHqlut+4l89XoOpyj5iuMhrYLR1B8NcVf/XYVlpZuISqtMGXctvxrWFcpezlN4xPalHyIxLURaB2fi/pywNLWfOKhcdGxu3r2JsfOQPibbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747018194; c=relaxed/simple;
	bh=Y2oPYOTxx/NBp9qEpCDuL4gY43fbOiD/6VhrS1gFFiE=;
	h=To:Subject:From:Message-Id:Date; b=uS17/BzinLIymCq7VwUaHVVRHNYG9uJ5yY6V999js2Q5pF6Jw/evnCZhJ3gFJguHOFYBeLfB93bcVrI0ej4c+39LT/iut9uNQRFPU3xr5VfDSBGnwQq8lZktOjhscwFuGfDm4DgR7tEL0dX5hrAN8DkI28HciEuTKB0HTNuGIx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkC/tvWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkC/tvWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24C4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747018193;
	bh=Y2oPYOTxx/NBp9qEpCDuL4gY43fbOiD/6VhrS1gFFiE=;
	h=To:Subject:From:Date:From;
	b=EkC/tvWwvSXLWigCbMCRmjQ+njPRZ+L7kz3lngicQb4TZHWRZQ6gxDLpAy859h7Fq
	 T8oQJg7cgT2Y1gcbNiGfEgth++ySzarbnAHBFREhwp7EViXU/MdedzqYow9W7sRbj7
	 Yv2vrOludLjU5quTr5RWX9rYq3U01wy+KrOAv7coZQRlDF+hGVuahWdarXEugQ4PNI
	 MGmmXNH2CohNLmQ4piV9ElrfES72rQ9VCukIL17KMB2H30c1byQ7Z1v0riThx9UYwx
	 7vyfagx0Brk8hO9yn3kfuv20depEBS1IekpD2AZHy3jCUuQ03SSyLzqA2/wx1ikzTl
	 6dBUU/HKanQmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B289C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701819360.21318.7476984923950175738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f1080c2732c49637ab9c399ae528c3a3c248243cc337aeef71e03685fb025c
Date: Mon, 12 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747018193
