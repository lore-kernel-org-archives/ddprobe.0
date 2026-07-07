Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F592EEE61
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783400914; cv=none; b=u341mJ96XJ+l4D17e6trdfjcrjgtUDtI4XsR5f1MseaKYdG66C1R0dw6xNNEQYCmifBohhWpCArVz53Z97UJuJG3/borbqdYj8B+ifIJ4h8uRV1xz5DLBkcQO9zPSmUxpTcxzN7aAvRydBed6mN2H1elePCEohEvpxXslQbyYpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783400914; c=relaxed/simple;
	bh=aWV8ZovJ89AstXkaeuXWHl+BhON0C+wuPybprHHkE7A=;
	h=To:Subject:From:Message-Id:Date; b=Ki7K7hNXb+yiXgLss6MFtbWXWn88qOY05LUEF6z0/MysD05vD0XA+yKsurjn5w/o8lJVgmdDkeMsC4S8Dn05mI6UZtzYDtPkULPZlOHgq7V8Lc6E3OWdpdhdlgrtHbyuObFL+3sk9/GT4D23r92+K8VZoTSUrk5fkjjvw+ahPLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1kpYI5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1kpYI5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC854C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783400913;
	bh=aWV8ZovJ89AstXkaeuXWHl+BhON0C+wuPybprHHkE7A=;
	h=To:Subject:From:Date:From;
	b=N1kpYI5B4vaagAwNx/nPO4opDidtvNj1aZim26+VJ+HgkdsTBz4Y39h3fEK90+Qta
	 170r2NFf+8JaXg0ZEYUqKcfAG8o/6YdnavPGMORFrcrcz4MTPyc/JWmcl5hIUZTxO7
	 hO3JHGz40jvQkOiOEUqWcJrzyHj0Mw6CI6aWL881wyBI/N/U6KHD6YWoz+i3N0FOd9
	 M0g6EJgNoByO8ssI3RGKWDcbsvk1VmQCitw5dXbzAFbA4N1R6STmBfDhgUQg73Tb6c
	 MKkT5tvOyE8uzzm8HuLlpQrJQLKlsBIHV6zBJiVYa5dVMkgjI24sOCkYsV07939dMf
	 DrquWHuP8Htfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2979C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340091370.8359.10424444425402066821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbf838e3e7feb43b98fb338cff97d04808c93eee74c66faab3eb2f74b9434e6
Date: Tue, 07 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783400913
