Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD00307AC5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763527915; cv=none; b=hyVkxsn2Oo6o3RwPZ8xVSZcbSp2prd05wI21AUZuvTmUr5IWguO9Xiw560uREPsWmu62PLH6gibIU0LoTVQMridmaJDahx/tnNJM6HuJYwDs/Kjtwof7PJVxBMKNEALBZ0Wd1QtIaNAMvVG7aRfJycPZm4FjdM2c7DP4FwSwPVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763527915; c=relaxed/simple;
	bh=Fleb1b1psgq2RYvSwlO84+SqQYtYErhQAlrMNdyTdUE=;
	h=To:Subject:From:Message-Id:Date; b=MoAfhgBWN2Monxq6EzLi4OUa0a9tuHVa5+YI6DQFc2hw/uoCBQhpwH1zBs3AKHn2YyZ/LDtHMQwXs9qvay+ehXJVbTFMLkUjbvKMQIBbwpOkkDcKUKRbHaE4z1KFKLVY+XP5j0h/6VjxXSWeQVpUmbkyrDKsGTg19hdXeubx71Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhBWZ70X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhBWZ70X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7936C19424
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763527913;
	bh=Fleb1b1psgq2RYvSwlO84+SqQYtYErhQAlrMNdyTdUE=;
	h=To:Subject:From:Date:From;
	b=uhBWZ70XyBk1XSK/kOaZgx7hEZo6bOW+TI9dqogk0vZiAaFqrkom5ypzDSrfIW1c9
	 Zk3zIiSJWdqmk03yzTBkM2RKY6QKFK405zA+b3+5Je3hZdRBVrU2Bx4zu8zleHEAg/
	 Vh3TexBGmz9Opunj6N+NG9MXZkId7J5XaKYMF40M0xn4jWDPP+2wKxWKqtLfxJYGDg
	 449o4Xmr70fm45MwIBhCZPaAyAfpZsYYqtDx3u8I92psPGV0nO3o+eLCDwfA/jU50J
	 TCovkfwQaxFPDNHNYd83lTpU5eUSfQyXvAnRzFlRZfLSBRthDeVaQokcWVAawfMAfx
	 HvtpEOvoMNBvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91282CF256C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 04:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352791358.20215.1195757299776991945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f514ac72933d4f6ea446553de071bab0b587a85015da5024f140673ba8a5512
Date: Wed, 19 Nov 2025 04:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763527913
