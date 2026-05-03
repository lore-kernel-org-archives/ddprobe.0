Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4135722156C
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777803454; cv=none; b=aNZMEychR0iyKEkbQeVAlORCmM7YIauty7WWG5vO+ceOKcspfc9VEjqvWqeNHlp78xA7mV0MmnC4sbx5k1AnNlwKchXQF0jVwFiJIUWzSoGQKIHHwedcC78yvl13h543iIwmBK60AF6YEYiRHGi9cMTg/ewmAAtUpDzAUdf+Bco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777803454; c=relaxed/simple;
	bh=fYoqEMW6ao4itYHN3G0NPB/r2sHt/VK7SmjtOVl6Zjw=;
	h=To:Subject:From:Message-Id:Date; b=VuYtAqhQhP0iJfxE3NuwCp1sIsAd4dGD15NSXpkBJrIipITU/Jw1QR04263hDbZNKRMz5e1JedwdBGmELsDjGyWCFgZ9sA3RwPKu/Ul1HhNhtWlvyTMnIkvSGvo/du/+6S8o32wA3TlRGlCQjirVzn6LfqWsXpL65qPz0QSoDWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQ7pzyiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQ7pzyiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC079C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777803453;
	bh=fYoqEMW6ao4itYHN3G0NPB/r2sHt/VK7SmjtOVl6Zjw=;
	h=To:Subject:From:Date:From;
	b=pQ7pzyiXSZpF6tnibhPnG4FyaWT+BIw1ZY42//vv0zGsM+vNQ8iIfHXOufHWdKsNw
	 tWvR0fOosJFN3XMJGRp/x/991BqkA1Fup8Hl4jP1Sw8/P6ao8w06nyfy+bZEQyuMrm
	 9NUAeQVEEzHynkl5chJoVR15ZFhxNxqU2lxBYAxAIB3z0sWb/lsYL7igGnYnanMP7c
	 TW/NqzRHagUThCnrBecZ/NRslxOHirrFcnFSITgBUplftfQypbiDpkvW22S8GuqAAd
	 iIQtE+nYsyH5dB0IbbehLOgtXRwab6XoErfIU2/5vJOeY6GMHjIe6EvADqGtn9k46/
	 ZuHvtTDrzjlGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA538CD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177780345368.7135.4349269673193425635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f4657a396fe8e5c2f61d0f3633a86040baee99ecee41c05105dab6a973885a
Date: Sun, 03 May 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777803453
