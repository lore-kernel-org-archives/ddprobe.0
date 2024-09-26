Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177E91F95C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727347554; cv=none; b=knwJQsJL8LH0TXvni4k4tJApl07G9+NFl8d4A6B594XMfNM5d6pUFRB5EZp+7xUydsPtjRFRBE00iH4pgrcJ4i6+xSTr5PTrHRBWLf5bUpBocN4MOPckiiYHGIcrSe7GmbNznqeUUMA/ScbHE0mjkPA1vUfuIU9DrwBEro7Q6/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727347554; c=relaxed/simple;
	bh=PgkNHr1eTWmMvnHQyAW/MBLhuZHY1QlspD9O0LFyCQQ=;
	h=To:Subject:From:Message-Id:Date; b=hQFG8h9UJluBTs/dg0+Aw67yYCvvoQZAoLnd9TA3kMbtDNHkYQKGbwaWgsDyN1spBgDZs6potFmsYBl/vZTBXC6OVUQtS48SE5DdQvGj4ri62jIPM4wBRq5udJKfSy1j2OV7/xUJk0+/w/I2M8TuIH8pkVKxUdCLTbNajA3U4ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6kLbuuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6kLbuuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D9EC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727347553;
	bh=PgkNHr1eTWmMvnHQyAW/MBLhuZHY1QlspD9O0LFyCQQ=;
	h=To:Subject:From:Date:From;
	b=n6kLbuuwN1VYI0pz/EHgfz1jSzD3Ruow8Y7gD1vCqBI4lCKfN/FubmlKJUeSLgdQH
	 Gly3YD0vxrxJhtoknwo6rDQR/D0XFujJbpgDgu1R7Fdp0c/brNBADeguH7qVUwLM9+
	 gIr4h7xfh1LYjBCYRBfScz2v/872+CrtQrg6jSE1vEgJN4bFlPqn9PnV0mTmsY0ksh
	 A/9+pUt1bMUxlsyLbMStXWoW6qjSDEQyfxJFiozzakApo0btMlvsvXssQlNAlxBfS2
	 eHb+bitrRGDoYK9Fx4EIuSyQj+ZpkPcabvEkUzze7TTEztLEqwghL8sPQU7PUfGqiF
	 LLx5NdkYgJN0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A18CCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172734755360.6642.8888131388957255004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525d14a6a81847875859bbbb4d7a1241a4ca5dd6fca59e408c4f6f82df081835
Date: Thu, 26 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727347553
