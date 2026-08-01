Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ED23A254D
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785611436; cv=none; b=MoAGKm27QoCJIg8Y02wQl0XMxtHt6D+NNNBTrNdAkYj9eEXkltAalSDjtunTwJjs3Zvwmegg9IIRobgLixocZTpSa4ONt8lneJ0CltcctzypI6n5a2cPj7Db5ECx3qNjCuSfWUbpAGuXj/18rpbBCVOaB3uxZFo2Z5ntU/FmuTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785611436; c=relaxed/simple;
	bh=sVoEfV9Tn/2dyF5wpubmk+w6gR4VFRT3fBqvBxGLE7A=;
	h=To:Subject:From:Message-Id:Date; b=uSXvnUPAA/WeObrM+MaiEL67NRjDRP8UXoDKsAhz2zEQLRHcguSQBIu06XMxa+gyrZMP6p45TxbUWOFLwwwATBpR64Hm0A43YLR+7zVArZOEpUVVB2D6VXJn8O1x0g2F+EaWfuYpVzzQh4JzVcbIxeSC/uW+ltbHBQIncdQN268=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Udj72JVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Udj72JVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E83C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785611433;
	bh=sVoEfV9Tn/2dyF5wpubmk+w6gR4VFRT3fBqvBxGLE7A=;
	h=To:Subject:From:Date:From;
	b=Udj72JVSKP5dGAKglNT9RJF4UCqYoytsSXy2e/Z+pcE0NVGCHTHDdG+QSUXcnzfhT
	 eJ4QM6XCvnNfb192YsUMJv7H/7mXPfxCddA+2kTmfx/StXXA3QguUSx9Uq9P7cQO7Y
	 7dZGHDzoEVJLjGHkePQ0stA+7vlJ0LGnva6qEWrFoChG3OUxK9YPESulX8ACq4xYL7
	 EVRf3P4lYjF80PcDDYDTkR9x88l+E8m987aMzG/n6HA5aycMbAdQNWwo1U+av988Sp
	 x1tf8FZiaoV7h4W/w+2FXGnd6HdsYWUVUdSF56dr8dmBCi0Fv9fvv8OIriR4IrzRLd
	 ZFmHqIZdPQaGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23A8C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561143369.19670.10176913053875075652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8840826cf7654a01fa807fc87a480d83d203aa9bb3933a87498f03f184c48d
Date: Sat, 01 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785611433
