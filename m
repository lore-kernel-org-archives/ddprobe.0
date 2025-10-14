Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294282DC79B
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760434794; cv=none; b=K2wlGlL8EWcJmdXj26hcflrsN17ol1kOWkei5rU19E/7FycZ7xnSMSE4yJJeKkK63GVv3B/rHazCOSCIJvrC5kQqAPCrrjpq8ca63m3qbGG3p0ybFSXH5TxbaQXoCwYc+6aXArfhoULIulPwVCALkNy/aJNq3VIKf1hiVPEISRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760434794; c=relaxed/simple;
	bh=1AZT9h63g4uZyuxVnUrod23RzdIG+XUgSetYe20Fpi4=;
	h=To:Subject:From:Message-Id:Date; b=OLXA6M5SjZAtJpAUTsRyWyFUEclUdaTHrCiz+WdU9Ad4ErvORUj4ktO748x5CuS0T071GrOumokYZEWj2G7vPbru++gX6pb/6Rnueb9bG/0dwDMrqNDqwivUGsT5Zi5x4qN8bwVGOeSwwhPfgsM146bOIcNew5+DJENH20f9xiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hfh3T2k3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hfh3T2k3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DE1C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760434793;
	bh=1AZT9h63g4uZyuxVnUrod23RzdIG+XUgSetYe20Fpi4=;
	h=To:Subject:From:Date:From;
	b=Hfh3T2k3fto9gaUzZA6bgPvMfeNfmAzfORDPbRlq4syIAYi9czEJ4lVFOs8fIzTHV
	 Cqq77xmOGbkZiWw+6ygnA63Mn3haKnND+KY8OF3A59iIKlCynptRplF8nUN8b8tejA
	 KUDZqUbVw5zSmrv5FZH6YYbgi+TOelJr/UA9tR/xlJTmXI2zcRq1WcIRAAmGageTXA
	 JuiNXOsIiFkbzidgh74j82fYPefummu6bJicOqPTlEplx1mrbIyxxZtnBpfenAOwfW
	 DFEEPTmZTVnXKPwknBeyBGALAE2W4HFkTA8mFe/LncUWMvzJl4C+Y8/2q51KeboY8n
	 DC9WHASGWYo+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4ACCD18E
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043479358.10976.4249835216675877191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc9646db108c569c0ef5a424e3f02c3f329dcbb9cc691f8de632ad4855fc2025
Date: Tue, 14 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760434793
