Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725E72FFF89
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768366434; cv=none; b=KjL6MIYFslLZMNWVhOmgeNTRc48NLMr4Bn5BGMQXEttQAtEPf9oI2NUe6b5vVtRk0+Bbe+3hEu83CiKjMhY81V2NJ4/nKBTU3u8XfE6NwaCAt8Y0XktoxQ4YSangQR6GtkF3JyuE+ibY2AwJafnqCTkTYcBuk3zTwMxLTCcD/RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768366434; c=relaxed/simple;
	bh=IX9+Q+5DOt/hKrX9ym60bcDxwhuXQAjCWlKP3fYTsaA=;
	h=To:Subject:From:Message-Id:Date; b=nHd8JBBA6BtEy113QrzLU8qocVCzItDB0GewWld+IuDvviEjyhw8Z6h9Tg94YXevvxNrMtCzNfr81tT97B7bf7idfyICo1bjEfujYPFzC5StJjloSYHZQjB3xXjViHMTu3veQObZ9HsAY5LgjriNOocB7h/mreCn6dBPSulFcN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBG4TnJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBG4TnJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9DAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768366433;
	bh=IX9+Q+5DOt/hKrX9ym60bcDxwhuXQAjCWlKP3fYTsaA=;
	h=To:Subject:From:Date:From;
	b=qBG4TnJ6lUJr5L+uKvcObV4CnP1nyAv3GVJfx1cGShUDn8vNlgt4Y3hPedrcodu1I
	 SiOd5Hmvreu3YAU0n6P4f3xvvFlJCKYybt5HTT51eOibogeQh3nxcYApjo5TcILLGb
	 Vluq/NKECbTnG7/ejRqYa81iGMfhR/TZwKbPnDATdcH3Dt3npnWyYOv9k46Hd8RgM6
	 3Y0usOwKY7AO7it0BozHRLVgSIH22qmkYgA8MU4Cm/S/v+HqE3+gK2qejf18msRIvz
	 nEwp6sPlZye+QfPEGpMdB1qoh6fFHxaRyCBl8IxesVewa+cIsEhnAu4JAP/sDttsrG
	 bKoP+Y2iUXR0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFCAD31A0E
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836643357.918.3778416975591151298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2400016680177ded2b7a4e311197d269705a0536a290dffb329224a85ceecfaa
Date: Wed, 14 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768366433
