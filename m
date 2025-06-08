Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EDAEEAA
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749376794; cv=none; b=s+rcQX8GIfhTlxjLNDC/uyzDEZ5oRIsrb5RLYX15UBMjdCB5gcvCvQW6cFmJjhzofJnbKVw2kD4Q+6+/BPndz2kzdC9LvJs+/P5vyL7Rm26369PcRAdy9bGNAQLUQewKVAoaTX8prmKv2i+hvSuiixbPQp0JH1RZ83Sy7BqqWdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749376794; c=relaxed/simple;
	bh=3PCBsPNWaavE8ZJZCgMUkkuHZ32JhTDhnyuBMeFVJ6M=;
	h=To:Subject:From:Message-Id:Date; b=bWUU5B3/SPFA6w0qsZvAz2Dxzat9MjrS5U3PoycWfmGrp5Qw7uJTY58hUmysX3JBom2ozcFSZPkaYHbn/LHIo3t5tM9jX6nD70MwLsBiSDpBhoZ0PReRwnZM42JQD4sJmaBzzUvt7/IACchD42SpLgri4bTUQm9ehoVwHiXeJZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu4bfw3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu4bfw3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CE1C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749376793;
	bh=3PCBsPNWaavE8ZJZCgMUkkuHZ32JhTDhnyuBMeFVJ6M=;
	h=To:Subject:From:Date:From;
	b=Mu4bfw3L9OdU0J3v1wMamWgkn6RBtpHXWqp0KE9VP7rmaCcuGZW5kBOzB23qiuIku
	 JUvqzD+hA/fDUkMkMxPe4XdgOYohvYuJ/7pv9ku8PnrUm/Nqo8EOTjFbwGi4SDi1op
	 5t7Th7DMjBTMigDPoP0nwzKdynapEGLlHhaa42SFf5kfY/RurDm8sM1/kgwFG62oVs
	 vY6M81e709K8teLA8FCi1KzA4B6aNLO0PnZJeU+9W+8bEJ4rEgKj818kuER1Fg8Set
	 hIXXlycEl7mz8T+lXJUKf39bkU4bWhfVFzsI7eSj7tXlnVYY+//a8lOCyRxxCEYQcM
	 f3225Ehl7r4dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946FBC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937679357.24985.8234138048324542149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576965a4f4aa939ef4d0cc43ded3223c2ab4d7b107980c8d7899770cd1a0f264
Date: Sun, 08 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749376793
