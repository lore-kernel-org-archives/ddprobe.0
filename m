Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F62204F94
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743954594; cv=none; b=B/Ic0T7q7//HAGl/Aem+HEi4UitdDOg0WRwJoV+dxXF+cPcTf5yrZ6eV3VeqjH2YCoZ8iu2DZGQTUnNLaFiF8upLgPyWsqoqToM/Bd7aAgPtlUWyQWsONw0sQI3YgD2+rJ4lJYqwaGOygW1gVqFVF4m64OwL0BeBlkHeYTPTt9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743954594; c=relaxed/simple;
	bh=QBBdiTsgZNdZM1k1B62nrJYz4IQAS4is3O112OEW6No=;
	h=To:Subject:From:Message-Id:Date; b=D1FZ1c2sL1UESXT51KXWbBPRlOI4m0l4WGi/VrboflRINqixxT6WZFnHMRCu/wOriA0wB1qm/eUSFTWIs8BF03q279Af7UbukKIJmfGQa2GdIVzbpj7vWCph35EqiILpfADiAQ6QIuVj6Um2RUmbNCekA6RJyBOPbzxr2ossJ/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJocfjh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJocfjh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E0DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743954593;
	bh=QBBdiTsgZNdZM1k1B62nrJYz4IQAS4is3O112OEW6No=;
	h=To:Subject:From:Date:From;
	b=XJocfjh3AN0yV5Z+aGv+8cmEfmJ78aRouXwhTWMp4MO1eKPnnUDWi2fRR5yB786Tq
	 fB43B1Ig4C3wSj3sI3OUiqqIChGDFN+2dno/d5Rkz/rG7KMkYXXA2kGxiGYpChQTiW
	 avdjYVXEveUmQkj7TKmpwSNOerga47sDF/9CgdbF5KVF6+qlmX+XIHD0Z+NqtWU+I7
	 EI0zbKOMzy1/Vyb/VFupp+8u53EctnIyYjr/PAOamSm+06mbvUrmb3PdBeR9DCWb6s
	 PLUYbqp80XSR+BAYdzXLFV6LnF1Y61E7fBZB2DrSJyzdvUTgcu6SCVC7tzeVu65bgm
	 5LR24Q71BVsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F63C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174395459358.28061.4393886271468717899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508a9acb809c31487cadcaf4ed0cffc9b4e0b876230d9969f3fb556420bc52f2
Date: Sun, 06 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743954593
