Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0F530DEA3
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775451334; cv=none; b=U3dRKcPBhmb4WBWe8FWvS/tLXWKI1l0xPDKeaw63/YgLhlKLhWpnaPM11dsXOEsTSR98WUjRZ7HtpHw6aPxR3aaKTjfQMpxE1EfIkYYtW+TTcJ2nssSE2vp7O2zQvhkxCilE6rKz0McHGT8ZLs8DQrS3qVuNCfppTXZ/lAstE/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775451334; c=relaxed/simple;
	bh=5voGA3FjdrLkursh+Rmm4xTA5nQr+mRFfYR6yAefLVw=;
	h=To:Subject:From:Message-Id:Date; b=qyXAI/mCBtvCRdNPVEhC2KizQ7MiWkGiNqtj1cbv/PhHjOPGCN87cnznXjb+7E9XnnX/3DJnlqZ3SwfSNXBodiEPxZ/BQk+skm7fnmr/gE7JWfm1RuGjKRqhH98/1up4IkHBTfBYBbb6sdBzbVcGJsz9v0CT0iWwedkXsR6xYF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBZFAgSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBZFAgSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF84DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775451333;
	bh=5voGA3FjdrLkursh+Rmm4xTA5nQr+mRFfYR6yAefLVw=;
	h=To:Subject:From:Date:From;
	b=EBZFAgSUz8c0d7h6FMoB8TvbqBPMP0SSX4l6HvUh8b1oFeWq+lETPuVBfsJtg9c4U
	 lacRu0wPVtBWNc76iLom+wSfVO1tCkg9YNB+0yZHdRZ2c/LkWRu4HAPX3uiFnQqaAG
	 2bmxFG/8QZ0CQOk4P4qrY87QXXVkcos+qRoWKKv3zkebg5ndHmT02v8ua7flO6xg0Z
	 G33D95XOxTVwXsEc25dVHyJz0NZyPXsrnm/V5r1PxHUikG/0wMVDWcu/rMPcWeJ765
	 KqEBPB5gKelR2KxPrRz0ZZuS03hzst/YQPSG2ahIa4BWtT004jCVfMoHOI9tPUYoGD
	 oZ570LGBP6zTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF19E9D835
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 04:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177545133374.8712.17707797150773806501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57b30c4e6d2a34013001726a0a338a53017ae8177ae77562e655a2f04a2d84f
Date: Mon, 06 Apr 2026 04:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775451333
