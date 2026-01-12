Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078DA2ED175
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768238034; cv=none; b=BY7xmu8+irIpHxQ0shZapgT94B3+T5rolnzb9PLMgwzjkUfvGgytoqy2fCY0QtGnLkr236K5qH7LSWo+4q0aThlPmtnEJp4a9JvGG1tJH99tRL2upzeQFYbMLWUJWTgWCNyeau5f9rYreturHMOl6nzKQKWpOw2fOrpoZYh+BU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768238034; c=relaxed/simple;
	bh=e99bcAEUukgcw08AMoilFJR5ReX1luQLaU+U5Ozi/zA=;
	h=To:Subject:From:Message-Id:Date; b=dhAMRmwZVvksglV+vu0G8bNTb8ShGb2CEFyfFPdbm8HMQJVYXGUzr23u1QOs8QQm1l8hTUVO+pUH8b0UXNERnrrEBxFPh1Ih5i44nvxUNqZWa3gOPk+LAr4Lb5R1xDWYd/AGVmRe9AicjV23tRMNSMXNc4Wb/pB4tUDQWj6EKyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGfZsZ/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGfZsZ/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69ACC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768238033;
	bh=e99bcAEUukgcw08AMoilFJR5ReX1luQLaU+U5Ozi/zA=;
	h=To:Subject:From:Date:From;
	b=ZGfZsZ/+hFhFCjwPjUaU9MNYjYnDX3Kqp/Ega4fgGnel5qdRd/ZhIORYxkXYnDH0d
	 iJbbF0JFkjrVK80Uo1BeV8S5+neDplkNIcw5XCFmdN7bBI/S/S8IvVBRMG8QAWb9+I
	 pFOeEXkIbcwzZfpz0J1zcnbi8h4uiyDPvyKO8NF24JxvvECfOwBPSZaV69jFXQ7KTR
	 N36p0gE2DspD9NdpAAdreZ3zxy8vFsb72idRasT2tKbGTl8FU0P22CdixCFo2yjPW2
	 9Y0y52zs12K9JyEjn/rS7EDDVbKT/cWkv/9+Igg+BW7rJ8k/IFdP2cbgrMNtaLa0Ds
	 DTq79eQ6kYVRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F3ECF45AE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823803360.9519.16392029319889302243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e6b90255a7ce0565de65a633fccc16b858aa71bbd47718a5c409b6f5089950
Date: Mon, 12 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768238033
