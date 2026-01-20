Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31A840FD83
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768915433; cv=none; b=sC1re10kz1ag6RWFJ69YZo0FIr325gwzeX/lCvAtVkd+t/GxFongTHHNBRPfEmoJQ9TeY7W0aFeJsfAyKrS01eAzPQz99e8hQkaJKsm10QJ0svaEoglyhv952OLKQkF2QlKch99y5VSUcqsXCc7r6UeeXt81cQ3Vlvzhxzp8OyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768915433; c=relaxed/simple;
	bh=mIuE6PUC3aMe653JuBK1W//5bK0uq4NQls/1wbjWWp8=;
	h=To:Subject:From:Message-Id:Date; b=JmgdLKDQPwn1u1AFTmknHGLMs+hIQJKogy5wRPwhmSQ5EMxnRX6JhEL2kTAtBIvPm5YtakG1FIWAp66REGy5xQl8b8okkqdly4a8WkwzrToJwNHUCxvv3Ci7/U7IwoU73+5wBhs7xR2OAmXdoC1zZ7Y++Q94R/3TxK14s6o2+Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF6R4DNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF6R4DNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA40C19422
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768915433;
	bh=mIuE6PUC3aMe653JuBK1W//5bK0uq4NQls/1wbjWWp8=;
	h=To:Subject:From:Date:From;
	b=CF6R4DNAMQtnQ/5271WyJQXT6ZjriepDHZONgEizUfKQWuOLUwzG6FlZQUu9KuJpq
	 MniQb0lC/MVpJImMCEzWd3y1J3lDWn9fKXOkqPSy2MUAx6CUm6iKdKf7bgxwqcQu19
	 RYPpFOvh933HApWNy9+9AsDRGc4GZ9T/KJudMD+mU3sAnxSji1G2vSETRaAZCsV0kp
	 Xf/FGbPk2C0IcW7KI9jwy/mlQGfOKbHX56KWEmk4EMnr6JIq1GPyB6DkB2v4+3RObT
	 RrMeuBqVhZuUIQvoqDl4sg+D0+5N9L79YwjtwnvHKp0Nj70OoZKTTfbioP3NNGR2ff
	 6iuDf002r7LQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC33D2ECE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891543357.11940.3545619587752573452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139d04021e04b188905511454def65cab6a02acef561c7190fe3530942b85330
Date: Tue, 20 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768915433
