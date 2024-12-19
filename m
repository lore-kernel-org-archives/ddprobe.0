Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1796354727
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734603354; cv=none; b=SCM6PWpbmUMIrXvNIW1+7+kziwksM81d2geXXM0hCZiPNwlKN+3Lag1yevPsvgiBtWzxeWGv48ZMSgeqerje6ALSAs+P+mETICEkKQpB1GB7AERLJY4OuK5kE5EmxYTkvP7PdSYRMesdO8vFU4cwQZ96V/okoSJZc7Ap/LvmI7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734603354; c=relaxed/simple;
	bh=0rDUvetL2oiZMT9p5ABEfaC4+wHVDl6/P9hMdS8Rzek=;
	h=To:Subject:From:Message-Id:Date; b=CtR2mUNLk/f+YoE74MkLvDJ9xzvEOBRVL46xNHYTHgyl5AOwOVbjAb9wzadqZyq6VxP3yZPnmjwpd/iEkROZvlvkPEIFPSxJkK/f+FvrBRXIoi1RpklTuCQHtwPlSv0ZgcngiuyosUpJixlxUrA7iyzbIyHZkqQD4F6+/vSyWXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/Y8OJr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/Y8OJr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDFCC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734603353;
	bh=0rDUvetL2oiZMT9p5ABEfaC4+wHVDl6/P9hMdS8Rzek=;
	h=To:Subject:From:Date:From;
	b=D/Y8OJr4gpFRpdjjzLDBM6xYVosPcw7Dpby9m1eV+UGuvY0sqFI13p+qlW4NK3vyu
	 d1kk6c4NnA66KdKF14GU6to7kmaHDZN5nzuxqkZ1Q9BA0C1yj5JogxF2wZ2vnImbIj
	 4lW/3o8AYklWTWcA1Qj1F98xO6umZOgLAF9wdfVUqzZv8cGo08yOn+JCq16NMizcVD
	 WIbrbkBDhMG35ZNG+hYxe7AhR+ndiKnEqmW8MtFGVYUyjG219h21kaJSB4atxBUaqL
	 xmqEqMzJJlFv/bx71OyaPecmTVd2z4Pu4EKLm2nylU2hfrobiiSUVsBEFny8FTpwpE
	 /otgU1bKnHu/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC05E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173460335358.6085.5594175470157434854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce9c7028cfb9fd0048d179a499cb7821a6b52fce03e7b7a4845aff48c74f088
Date: Thu, 19 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734603353
