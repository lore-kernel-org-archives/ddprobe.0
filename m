Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D4E14ABE
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782614914; cv=none; b=FJjFDYiqO/nOXuA2iNdpELjYu6kv91AoMFmOypXhXNJz+EOlUMuKrANGYj3Amk9R3apYZ/DA7YwxH9aWRyaiBOL+RnLuzbuouB0kR2CQXOLF658EeJr3I4Rc2oxxRvkcX4NgC8NbQHoct3259Af7mXCtEVNyKpjLrmNkIIFxOqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782614914; c=relaxed/simple;
	bh=pAEWFj4pmBDsagKzdr1MSaMqE7ehk4YW/8LQmtJI2EI=;
	h=To:Subject:From:Message-Id:Date; b=CXG0ihcuhc4gwxWumSP7loU1r3D1HcJa3mki1eu+kwo2rpQFbY6mSuCfho3QysLORtPY1Bn8pl9IccslAU2mIG4TTYFFDRq0/RFwhXf/cB6JM1dA8DN72RfDpx7NA60DcdM0JVUK+i9SvyUqNLdGI2Ww2HDMSP88Ih7zY/RjI9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4yzWeL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4yzWeL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB7DC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782614914;
	bh=pAEWFj4pmBDsagKzdr1MSaMqE7ehk4YW/8LQmtJI2EI=;
	h=To:Subject:From:Date:From;
	b=u4yzWeL09uhAfD5/USPXI93Wjn7O6GdLTCeYti2HSVp3lCoyWnn04GmdiwBUFnMbF
	 AOlGZ6pRcXMOq8vksZVYnrlX8I8Oa/m0wUOCySa6hMkhAMau/2/qeCRKX4w1i4icub
	 ro/Mpvx3qC+bir5aAPDC35qajk7Hg7lI2wlq84CuAgL1gTCRqvhPJxuD080ui3VjtP
	 mq7gERD+h5xwNXCJhi/NxPC87MJwrXJ5DZaQstUqUhXAtC5NtaFzFRCykxxsT2QiBm
	 W7hoLqUNkDuX43zurfq5mbNhRsrC92NelACaYwkZdEFU8OEl8g4JtiElIckyGgdmRB
	 SCZMZQvKGKEWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AC0C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261491376.1989.911456340546364230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391abcb4829b54844b41e60400f6c69a767af92d0fb8033afc8e24e43e1e9f36
Date: Sun, 28 Jun 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782614913
