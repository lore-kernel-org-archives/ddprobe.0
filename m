Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DFD31B833
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792271434; cv=none; b=UY1sDNAMjEMioLp6jyuOiMnBJrxSKqKm8llSyjAAoi1a6xPjKGOfXsqnQXGn8ejwKmwCHEMrNSlwli4PcEyNpnCfjq4r9zszBtXnj6+9HByL0lu+nsXcsnMY6C5cabBs31zML9yYB46kjyPKqY1P/Bw6bB5sf9SY8WcGuWyOmAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792271434; c=relaxed/simple;
	bh=TI3Yl97vJaozuYaQrWRoZRkXhoVYCjUJW8cVNh6cip0=;
	h=To:Subject:From:Message-Id:Date; b=LPopwibw6KSlJyuYZu1CfpA94vMqvHvNUsWiY6212MJLxtJg2aJpTXOZ/MJ8LSMKnnPQUGO28dIIJZkWs9zLmpc+WtxgYR+5a3x62iz5d/OPVg6ntc13VQ5t1YlWwSs6XPvg/AxKi34dOZxIpcBXg9eawp2NV+V+i8kfohpcAvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpBS1O2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpBS1O2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E137DC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792271433;
	bh=TI3Yl97vJaozuYaQrWRoZRkXhoVYCjUJW8cVNh6cip0=;
	h=To:Subject:From:Date:From;
	b=qpBS1O2TOu8r/NPvIpi3Cr8pYiG8hqRR9jeBKjJ+jhNR9KhzpVXv/0nuivW9oD9nF
	 m1HfG6rGv5HgAOk4mS8lmLfV5sYUaJcDZCCfQe8ueta9i2JvVNXxYN+1TvS6BKeUUg
	 GSjDUytVnyjCZOalUncArfPOrdfB6Z3bLQGZtpaBElEIGbaxWWtJU5G1etd6y+yhbn
	 uSh5nA3+mz/NlzI4D8U8obLQZSebUoUPDBbDzAi5Ln0ux/7SDq5NsUdECfsrzVF98M
	 JOfcTTpYgyHxv1qX0PqQvo6lh3QV/kbTAAYld99wyrFdEiYFWG8sscCeGv9387iFyI
	 k0tZ4/AhRKreg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB7ECCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227143373.17582.6093120842700741712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b61149626e71e497c1419bd8e397beba38d8a7b1ed1acfc5339a1fba1a3bf80
Date: Sat, 17 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792271433
