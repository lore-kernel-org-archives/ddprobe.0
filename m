Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CED92417F8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749632994; cv=none; b=tLL15Xu9jTcYcPlo9WvisHc3pHMrFte3ju/w/iVDR7l1yycK8Ugj2diWRZtxlS3Ic1UnW7Foq7y/lYcRJqxh9H6C8i6FDIjZcrFuLY/wJMlGWCaNuKWpjgy0OSiPIMDCb2sOmVPHKxsLmUUi7WDgrSon6cTxrU88hymjon61RCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749632994; c=relaxed/simple;
	bh=9+VTWj97hrGhsFo6LR0yWP0XwoT6YjW2oF/WbOvYlWs=;
	h=To:Subject:From:Message-Id:Date; b=GRRtyZf3qq7FnTaKP9sUHBL0H4Javs6ErENrcslcZDCe2qcq/sHvkn+VVCjnABUCJNk+w2yj5tvOlK4L7NO1/OsjPGVbyqfhYkFamkaoCkC1bGQGfTbJmHTmqE2w7FKUWc71lTLQ8OtGDLoE1jBZH9YAy7vy0PpRxAoSqdBipmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq5J/W8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq5J/W8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EA2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749632993;
	bh=9+VTWj97hrGhsFo6LR0yWP0XwoT6YjW2oF/WbOvYlWs=;
	h=To:Subject:From:Date:From;
	b=mq5J/W8Kqasp35wYbfKmd99Il5HWHgAkx3Oa25pBFxAAZQITVczg0JAOJaDTH76kH
	 IriW30Z9kWRmilkl0i1ZDB2orZs6ouC23kP/yiTEqMA02th6BYo8rFvy3PwvuCK+L6
	 +DqvCGNZl9ha0HQHcCgS1zBWk/RoZOiPzD+abTScjoFSmNob9Pfjhi/J2Gv9qcI3Zu
	 g0QPk4vmd9ZJELGYfDLbRAeWgD8/QI/aDhOP9pQMaQi0kg3wbrIVms2+HnH6qPBcsr
	 q7xcPFfAWPrpMHQOjheWUz4863rAG9/0uf/WS+yzgC40JUEsDUZ6qIok9+RlPBWwFa
	 6zca2XQPrqlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B5C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963299358.15729.14537379505318568063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512852596d3fe8d4d9c2e17bb485699b575a2f709369f40e109a76de300bc3b6
Date: Wed, 11 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749632993
