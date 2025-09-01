Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E78320A22
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756747794; cv=none; b=Ol9GyMbSUTN2yUbpuQnpNUw7AWNud9vfc6R28iyXjstFHdCvwiLljxk+anp9w7i0aBdZnmdIojW+5VKS+7fIrRfAVbFy2401h5+YcQFCJWDzIaHYgIkJh0bOG+z/wsGHWiKv1RMznEUYX8vmJaOg7MeRSYNvALdmwPyttEUyiws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756747794; c=relaxed/simple;
	bh=+0u4e3RfmfrY6C74bxxC08tYC7H01v1WoovT0DZ3U+I=;
	h=To:Subject:From:Message-Id:Date; b=nCrBWG+xkLgVH6pgl44iPCbv6WalePfaxy2XFyIk1FL9UQSfU3ZXLYZhFGDjyJzibZsGK7DeZ7PgQmM+AWXClG7iaSefL0n9Hp/mbW/PmC2jmM6sDCoh3BSgTxKKeU7l3WZS10EO2CQwOV0oKdS0bmPZkAq/kZaFPn2wZho3sUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIFhkC1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIFhkC1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4621C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756747793;
	bh=+0u4e3RfmfrY6C74bxxC08tYC7H01v1WoovT0DZ3U+I=;
	h=To:Subject:From:Date:From;
	b=KIFhkC1F0NdM8GV42fNwSqFuLSd/wgtVxKBhqNTqh2OD3BGfCi2ZwSOTr8nVVMq7Z
	 9+LtwLdAoBYd12EiPtIlExJUktS8lY/hHhIQL5fJBpCATPPGb5+Fk80UCQPgn5hzKO
	 JOYHIqvlDE5xNnD0Rjczc/JD7nsZTUsmgzXPwEmobRcKzEn86unpZvW3xJFta590BM
	 xxnZRc+6JF4WeuHPbj/mIDFij1GO7F1K0qMnyD8Iv5XXewBYNDl/7BOCTJYFDqeOyZ
	 9jHda9T9pFROmjDfqMBQZZtrbhKaihdLQh6Xs11vaau4rVF4my54Uvh8M70/mxB5Yv
	 5Armkymacq/rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B93CA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674779358.25137.4447330090561240355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b65a02c0816c81fbb6b5735c31bf7ea346b7974dc80058d94f9b85dbe766699
Date: Mon, 01 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756747793
