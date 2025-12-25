Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7C61D5178
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766664234; cv=none; b=TfzclhZeH2c/ukr1yN0oKaY7KgigDZM1pHutrWdh2BCSGGzF+e/+wdmgl9yK3ZvAgoeAVwAqJatNaOgAXs/lzqw5H7lEMU08JeuV7ylz2KQyQy+8/KcpEKRpQZ0N2ctf0rQqZb3NdiBLPq4Mu9W2Ey4yz+JN2shTu2VLzhc6Nj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766664234; c=relaxed/simple;
	bh=J1eFeYRJ9HZj9CgqjwkX3CNuL8oaDFtd0WcsOhEGS5I=;
	h=To:Subject:From:Message-Id:Date; b=NX9Y8YX5IfWW/RZowGMcxQC2kXz4xAQYJX6plRpZW7w0OqNHNfQdb9DdfPzk1v2oz6hVRDTZaeKd9lON7l2n69n1T2Q5XsV6BRmZt4UBgFFvF/JiK7XQrHu/MXimk1UIbAnMFHP6eCzXHWzGslO6f3/5sM49CZBqh6OEHvoh8Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTcXC3O9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTcXC3O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91F8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766664233;
	bh=J1eFeYRJ9HZj9CgqjwkX3CNuL8oaDFtd0WcsOhEGS5I=;
	h=To:Subject:From:Date:From;
	b=dTcXC3O97ge1xIyVzyyBtbvTtW8fy+MUFP93+h6hMthnJbxfElZk29urEL0JOOmr/
	 O1EIBRrEzWshrhaXWCVg7IGpizedi/bDa+92oX+yivHLNvvb1qBB+rwDl5HO9j8ZfC
	 AVzsZkdZAV6mFLUKohdHjjMt6sxfC15ep/QRJ/1ye94Vt+jTSFw+SX71yzcQpdXpJN
	 r95ZIzQXbIOB5Yd71bcqToGhh/kdpldqlfEUtvtUNyVFe+OSUnh25z0bhocTOng9Ts
	 7nTkSXqwWRV6ivqBp6HgktSJyLHcPEuIDcuVdx+4Z4UxquKAj3wbjN/nvM4Dt8JqaM
	 QGtRj1nrg49pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8EE7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666423358.6397.13423389684982943523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b6cac366c6fd7a8c397c58f3a973105ac039ed931a1b7af7dbfe4807580d7bf
Date: Thu, 25 Dec 2025 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766664233
