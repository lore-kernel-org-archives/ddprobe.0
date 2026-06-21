Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B383258CD9
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782078394; cv=none; b=dSnoDnwYBbZx/I4fb9ufsGgNWpoRbDz8oOeMM1O0OVL+xAuPW86m8nHUXbkFVLzO0zh8l7kt1VD3PRCYdROuaLdMogQEETrV/fScPnbHRAdUjyV7lD+xxDVWHV7JedJ8m4NAzWvmO42yq9XnDgjzpBlakQsrSxnuoiQOPFc4Kb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782078394; c=relaxed/simple;
	bh=XacptfdDy+aYj3ivTsFfHD1l0d1bum9f7lJhY3h71JA=;
	h=To:Subject:From:Message-Id:Date; b=s7K3BHwkO+ITJch3Ny1+UTlzZVqwIU8bmqCv0qxhMQzZpVX+Co36GsDhDcTB8Jq32tarZB0UJtKBlfS+Z/BSAxSzIawhglLzq8/215VxcRL4ZhZHW8Iny3nbcO3lFqzYlLHTKFuyaFx+3hl1VAoQShqr9dr+fkQWyqCOxvDLw7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX1aET6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX1aET6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09C3C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782078393;
	bh=XacptfdDy+aYj3ivTsFfHD1l0d1bum9f7lJhY3h71JA=;
	h=To:Subject:From:Date:From;
	b=cX1aET6T4z8iPKm8XUAcESK4lRCHC6TSCN2EfaE1u8wuiQivz+PNArzzF6DeNbqks
	 5eIFjvRduTSwOSAR4opHN7u5gME8eb9xjyfKFyeBsXQF4uhHQ0udHkROpGL71sRmT2
	 KWtURJGjEeKZyTSXWhzfkSRiUed/43wzN0IFKHBvf2mK5/mH5QJFObcn5t38PGe0gI
	 eMjbAc8KIy/+KS1wkauaNrm3zMF0eQxHvPnvNBAtgb+oeHLU2uuGuDr9cGFOer/ySi
	 4urCsRT6O0AriEwSXOfU0JguzTonT0u3jB/w4ao38QR2goaREuVomWx4usXG952QC1
	 mski8NDjywxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B466DCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207839369.24203.5292405363006520978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5b516cd70c61bdf78441d85b6c10ec2097f879e92060d702e63f95ae6e6475b
Date: Sun, 21 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782078393
