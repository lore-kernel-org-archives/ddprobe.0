Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8D222ACF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744136994; cv=none; b=cUoj+k9mQmeDVxlrrQ4Xk5jgUCHngTUaIsvAQ+80fjFD8bAkSo9XguzEd0TkiVcfeI1D/iFWbBcSSt5BtCW1g7REYNQdN6Gk/CEvoiKuIYt9g3aa7xUM/xS08+2C27L6ivk+JSR23TdA+H51ZUFyakvaAmpc/3PxwtcMFv7YU5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744136994; c=relaxed/simple;
	bh=GdwV1F6+1kDwphqyTmRoYZyaJJl4J9vhOtWHSdYcZlw=;
	h=To:Subject:From:Message-Id:Date; b=FiTkQl+oRGGN+wOi2ARa9TEX0ORdE1zoB4dCoy96m+gvWXwutktekXM0zNB/nI4zZoeU/B6nDeyVBYJVasjYxlH9sUxu8YcYtrG55A1NCqgKRJaKWQyDOJvp1Dpx2fQUthaSp+nMXURFUNuwKtRy47OEP9jATO4c3QWJJLX2EfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfDcBLIf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfDcBLIf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27C7C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744136993;
	bh=GdwV1F6+1kDwphqyTmRoYZyaJJl4J9vhOtWHSdYcZlw=;
	h=To:Subject:From:Date:From;
	b=YfDcBLIf2LWyOtIl8LOEkSKYbLlwSo5UWkJhmyfyGcF3hFPszCIUqRuXAVfmcKiip
	 SynQ4jL8p5zDu/HejF58nEHaQ4SGKxhZtbrYWwiJnbaRZHMvcM5xYNLEs5EDGhnGae
	 A9N9BHt7DLzqXlFGbEzrr3ha6HKAw/ScaTrdQYPj7D7s8IY6S+jYp9+8wLDzxAtxNw
	 wNpqSg4qrU21YUVtvue2sP4PbjG23Z9OwCGWd3jvl/A0zVse37EnWFkoI9xUPI15Z6
	 /XbLt1kvysiERb7flx/TRKllOe66ReGHZ2RBGfBqPzO1EALZlVVIiowJPxaxGoPV/c
	 k3Jg8TDPJPtXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B0EC369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413699364.12632.16729426621523761586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2655ba4367ea049563ad5ef32473d4a3a823d600003419b2842a7fb75628a4b9
Date: Tue, 08 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744136993
