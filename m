Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5CA82498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727614554; cv=none; b=Q/i5J9q8fXird4i9wZBFQ+gzCGjhgRqppDmF5i633+U39CR6DpmNht5UDB5ZLz+xw01gD67CftHCXohJKFyUMhvrH5L+UDBBgShNEQRy7rOSI+ldGGDkG1dIDvCTdO4KfGVvvCydRf1kfEDkgBpgGobfEcQZiRKCSfLkdLw9zHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727614554; c=relaxed/simple;
	bh=J5SWh0m5iHBreJHdWrDW4Da2QWC++8pQh4uSdwWOzjw=;
	h=To:Subject:From:Message-Id:Date; b=H+RPS9bui8g6moF7M9BYm45+2zb0BXa5I8jW3rrLxMCN6osXzKxzlbhjY0/uvpyHPb26S04nbwtEwgdKyDjGeaSYPFVwAIrjNSlrbdwwPYYgA89R/EU77eLXQDER9lIHZ0uEPU0c+/VdCRwQxDk6PFCi+WmJBeX1Szx+FNz07mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMco9GiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMco9GiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FC5C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727614553;
	bh=J5SWh0m5iHBreJHdWrDW4Da2QWC++8pQh4uSdwWOzjw=;
	h=To:Subject:From:Date:From;
	b=ZMco9GiJadxamH3HywSTSdAyXmHpg6rRle/53KlCuLk4O9eru83scEBkbyXoSJ/b4
	 8FbFXIsC69IfY2OM9EIFrhlt43JQcbUUw4lpPu/0Odmokxhsyqs0QzCWv+gTOuUILr
	 05zTUU96XlX1VYlJZr29U68ngwAvkV3W7UOCbkVfoTEhpczbtrRqebGjqg3xK6a3SD
	 p8vnYYKtDRG7i31ARJjumNBRbP/tpcsOdNro33cxrIhHGIG+wO1M+bwsZs9ST/Jf/u
	 u95dTRLxuCF/3MeGHxi13F/g3FqQ9viEcQf7AMg6cgGJQDZ1fGRPj4jsz7fpj03U1Q
	 gK/MdwQAezdRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2ECF6499
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172761455360.6018.2200786693839190878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bc7d6e750ade1cc5740bd6f560ac6e05ec2780d45cc85269d69aed14bd368e
Date: Sun, 29 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727614553
