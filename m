Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E16F496D42
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789071634; cv=none; b=TpZ4n3Oc+70djKxatPlrGoDQ1dwixr+eKL5eQL0KAIyGduZ4lxGnd7Doiii0ADHpsc89FcnBzzwbZ4CJ3Haf6nIBEJoSGygOTLbUUt65HbQh1eEyFAqyG21grECi9OqbGRhGAaGz0/KIUBNY+EyMAdrv0cazAOG/8oOazklEbxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789071634; c=relaxed/simple;
	bh=z0UthXW3HiS+TnpX0vD6N38N/hAhxG5fM35ZnkogQDU=;
	h=To:Subject:From:Message-Id:Date; b=rekwsyqPlXMMcO4Sy0TdtW7sYp/AwIflVfQ4FxUzlsBcaJnNyoKIPBOOwRQTeph4tvMWj8dUXvrkP2jgVbqnBO8CTpof4sn4O6BE4HYqN/sNPD15CEt3keBfhTzZKPzIBregCkOWHxxnqMSlsJssp8tfQQj4ZEeo2jxBIxiXoz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhtSPzuy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhtSPzuy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED92C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789071633;
	bh=z0UthXW3HiS+TnpX0vD6N38N/hAhxG5fM35ZnkogQDU=;
	h=To:Subject:From:Date:From;
	b=XhtSPzuyUbLos6kms/8dAhyouCo6icJJxkxcRrKXR2T5izAhmUpp13D4Lrh1x91tr
	 88uKu1lEv3pIqNAoPIRtbhNe1Zz/dPD7RNPCdfNHU9tS7nNNBHYgbvF+cre516rBWX
	 TOgPsFXATgwlq8u/+LSe+zcUUsSdYGa1952s65QEG329S0JBgr1/oCliudprCLBN5M
	 x0sS7J6xG8m6KCZYB9ULFf9qLSrYycFOh6iTAMBVkGQRlJ3tpRuu7axy1VaXb+GmTs
	 xxs/87BCq51UCTs71hizZ/WKDs5YByxexkbYkoNOR6V5lULsAGNJvw6f1bmqfq3Ohw
	 ovnrqpgeEwEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB91C88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178907163369.4548.1300073573011766382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1433edb90e9ece201c739be4d1bee62cd271b05a1a9799e4291c08b97b57e44d
Date: Thu, 10 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789071633
