Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FCF344D8C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784773174; cv=none; b=czSo7IYJrQf6+o0Ioq9qIrOu6i9ofwFoCurQX4OWb2QC2hx6xqkpT+KiFsLdNQPmiutoiBJMpEv3xmY6CNBCXAHhayucpdHBhAfZFoEqFLDkKquTVUxGa4thiaX1VruzspecUD2mtpgFvODWMYFZ8Xyd+XYrfQRakCFi5LOlyLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784773174; c=relaxed/simple;
	bh=ex1Mj3pP7PH2NltTlB/KiGd+UdUBqt071Vt641TFv6Q=;
	h=To:Subject:From:Message-Id:Date; b=LSalUQiTx2lQE5uVaMmqf6AcsUOeKJ53rc04FmdS/kMsUPsS8b7oKlfzxatgS1eM3BBj5kp6SLENy7hWD6bzL0+vX/ZsHjU6ehZG6PC9kl7vM7FzMvKWdklDVRblUGG4IGG5fhe0ACuIuMdKAcApWTPWGTb7Ev7HFFY77Bzg5yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mx/8AxfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mx/8AxfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0325C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784773173;
	bh=ex1Mj3pP7PH2NltTlB/KiGd+UdUBqt071Vt641TFv6Q=;
	h=To:Subject:From:Date:From;
	b=mx/8AxfVq4h43ePJC2vM5fxmN6IKPiO5/ajy9gz/FahqYeUE9rg1s3ZIE6/ZTtqKT
	 /ToYtWWrXRPFc7WWptcROzMEYvVYPN7V3cpXXC/8kVeyJv/4E1Xc3T9T53/vPMET3/
	 TbgrxLjKg/WsZGT0C2v5GFudXXG3Cr8ZR3Rl6dqGAwZb4Q8X8ikZ+Hcf7qaT5BWfzI
	 PKdwYGj+VzEcaTdeew/SMCMFCjpwNOnG/XhKulAqmk1NukPo0gnam9gGw+NaWOr6DW
	 BwbmHZ0aJehCbAlfc4GqhDdQ4qXkq8yZ4vLMVu1Vm6lK/TrIK45YhpTZYAmF0DyH54
	 xa3dqM7ZbZyBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4A0C4453A
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477317370.5927.1363393359571826492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af1be73ba7ec31b6976ac85c581ef28b84e68d31312f5974f19de431f1d5360
Date: Thu, 23 Jul 2026 02:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784773173
