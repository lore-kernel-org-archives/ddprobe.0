Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4994A1F8F09
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742562594; cv=none; b=CMkv79aT9Rzf03KUkGyPQGEqBFq99IVU5sykhW+iikgPd4dQw941jWxlVXNeemv01KjGEkK95+uLyGR3SwTPGt+uR+m4RXgwe0CtHVwrWcgAmkWenjycZ+XTqEhlkq989ZqnpCxk/yEYyvRMcua3nfz/ECjyHa8on0VzbEe44ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742562594; c=relaxed/simple;
	bh=2RnzPfYmbUGb6Cm7TSRSjrm7jYYCBWx4cmfj4Mw8RCk=;
	h=To:Subject:From:Message-Id:Date; b=dvyoMlLZkMgi23LTKOmCpwoWsieF15rBWTzxr3MfOxL7RnVDqJoaMpYNBEl/bg2taO/Gv3DNrbtlP1ljUqO7psHfcUSb2MStpeTyQPuEEDco3jzfDYBzYqGb2dOREXZ+bUhVPHgDp2H0AM2VvTgHozHyUG1dNblBEdvJXqSp2M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG2tK+gA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG2tK+gA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6257C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742562593;
	bh=2RnzPfYmbUGb6Cm7TSRSjrm7jYYCBWx4cmfj4Mw8RCk=;
	h=To:Subject:From:Date:From;
	b=NG2tK+gA8CygXXODj3xO0/dB14rCKuo17/2d/xrq2FMYE9jMBmeKXYP53vO93UR3n
	 H1GmCVEYKFQV5CVuJw72ewKapWCJqoCggdYdiKrGTkB88TgempNMym90M0vRs9sSXH
	 CurcDpf+EaTI1+fDUklpsIpylrKKWQHpIOgkwdbH424WS/lfvNikZkASO4MJjjEtRj
	 R/lAk2sCWx5m6X4b2AQSYjNCiYkYVYhPQG+rZQ+QihVdc9TY9bhw77MXJRYF46j+OJ
	 qEZmtkivFn+a7n32StmjThCn16pjPNwi9MTZdBAcrzxpFD37cceE/+EJBaxF6SkOki
	 emvk22+gM0UHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61C2C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174256259372.4825.6580201094105349182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a3027e722267ba9a5e80c4546528bb8f4c814b2dadee69f29468fed59eb777
Date: Fri, 21 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742562593
