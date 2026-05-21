Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B2E2BE655
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779400954; cv=none; b=rOtayQkl64cWAL+kxeeS0o9lBr+Bbvk4wF8xWcsdkdoejAg1WHj1RF6fJ1NdKlB3ZefnjpLLHisAlVSqpDSO/qhqTjCfSSnZZPvplgFhixAaA68frFB4KzlRWyd4OeCuX5jWpsersFhgKIY8xpUHNIPaYoLCz387t9/ubKhHgmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779400954; c=relaxed/simple;
	bh=hluMqktmrMNtM7/4kiboNOBX2q7Drdh6KDvhfCfa670=;
	h=To:Subject:From:Message-Id:Date; b=hPKN3XmavdUYkE219xDwxw5Q5dFkUd21tGcvIMyGQV8xBnAXMqu11ir5r32OCRWyK7J6/VWlLVYs5FqZlBEtd35om/TIE1LnW+e5/sake6TC6V1yIRfIDIkvLXkO9dnwnTLWVSDz1ME7l2dcvkNih5wAkCpN0WwwshPzv1cucKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/6u4S4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/6u4S4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C37C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779400953;
	bh=hluMqktmrMNtM7/4kiboNOBX2q7Drdh6KDvhfCfa670=;
	h=To:Subject:From:Date:From;
	b=K/6u4S4xiOoNhallYXR7QPxnnBTuD9OR9a0CUlUuuKCibv6ESWfKiuPvmOtTEkXtj
	 g4aukIYTdsBepGadFD6g7q/yuCm9k71H0j1jpP7NLy8pgUG/g7OfDqDsk4sX/7tLZi
	 9jjCXWlSkKIik22Rl0/DaO6qaijtiPhoir6LDsGyFALjGIdqM7rOIiuDyGTvEyTIwG
	 92bDBFNqiwBi/ZosYlr7O+FD1ppJGXpTkHdQCS++8Ob3sHzmKdgxOgD52ZY7PXcjzD
	 nJrMSFkFU0doWiHFc9vj7ZjbIvQnM40MiNrM5tD4dLn+sJB5tqdPgqbJabmbazs+1x
	 FPHggPF7oE/EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5EDCD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940095368.18498.7031036178778195243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf962355bc0d25fdcb1a0a2611f70056acd331331e8f24f6efa87fa1a81b558
Date: Thu, 21 May 2026 22:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779400953
