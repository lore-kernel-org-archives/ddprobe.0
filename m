Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E581D8DE1
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754230194; cv=none; b=R7AVccI3KyxpGdKs9nlKXhRa+NHFhfOxVUPKdzP0Aie6xTnMg0RzVT17ZqHL98YFnm2crCrp0I+KI1xOi9f4OEpfzb5CdTCfvf6K71Fa+IrJiyHhCQRf6/cHLZrg8OLi4UM/yNE7Ik/cAaKURjgjRrHPIgxXn/gBOTdDDZKgXx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754230194; c=relaxed/simple;
	bh=/NXx34MzJMK3h1e2C41J1K1yKMs8A32rN8KQIxMKvM0=;
	h=To:Subject:From:Message-Id:Date; b=JKCAbK9EOMHKTbNlEJ1Le9IWzQCa0ydtEawjdsGAsucHX9BPGkgjoNn9kU/5fNhFptnR36paqA2fzVgOcZfRXx97fx+XHUzLeo9dw9cqeto7qFAfz/Qf9BGCP8W4pQPj2jRfxuCWMHRwnN69AopAPp6CgpB/TwyqLYNI17T7qBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPjDUDdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPjDUDdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B1BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754230193;
	bh=/NXx34MzJMK3h1e2C41J1K1yKMs8A32rN8KQIxMKvM0=;
	h=To:Subject:From:Date:From;
	b=LPjDUDdUmq+RQMubDvKFZAsgPP2sHitC7QCMwRsY2qzQ8NyauixVvR6JzTwca6zWR
	 njkglzxkbKNPu/mORyapP8fT88007pvaePxL5prZovdtT3B1bswb9xFIo+p7lqeRVN
	 yVZnt60aVm0HQFlMKjtJyJz8lrSrTRQ6pm63oukCv1NN+B/xSBOwqfLU7+4z7bDg0x
	 S9Gh7VzWfJRp5AL+jhPi16JtT+zaDjwOoLT9Qt0JZYk5ZUzifrWqj1kvvu38SoqIrV
	 A/zYn4Vk7+3+h9hqPXI9mhaZbClMPuR1evuQmNUqLi/ZB3wtWxNyvGDEHXEmjVKrS0
	 DPVYGCkmPpIpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C9C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423019358.31076.14066407548502648461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8bfd5a161cfe0f20f42caca6ea065c1b413574095cb974c831a4f06ec6a99f
Date: Sun, 03 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754230193
