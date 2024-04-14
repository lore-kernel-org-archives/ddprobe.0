Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6530D2F23
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713058763; cv=none; b=jObcBO4+wIKTXkKzc+TkOlSlF7EZ3xO45OLPQrWbakDxBTGn92QYSMffGzbLfC5AWV19Qq3jtyAbaMhtemdyboDGxskS4Cbe9pSuUShmzNKcubYo/9eP3rG71MAYGjZPrE1TxHXRbRZmX9kFjXo0+eDyxwcvJLk4BHZEKz6zQD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713058763; c=relaxed/simple;
	bh=LEmovvPdI/susiFgVeeannLwJVgUP3wMPXOis9jiJbw=;
	h=To:Subject:From:Message-Id:Date; b=Ge6wBmIhCfGnThROYOry5k/DON2vuxdisJNaDLd62lZdBxDP5J99LWRYeLstxCIvZuE87SlxCD/86z2QUX4o2Ah6ghXMbgrjrRz8K6Hf9hoUM2Z1CuC0PrhCJG5hVwZ4EQuhCzqxQ8IZ5CU5gWD0gO2pi8200okyA+UYxsa3UuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpyx+oRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpyx+oRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0961C113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713058762;
	bh=LEmovvPdI/susiFgVeeannLwJVgUP3wMPXOis9jiJbw=;
	h=To:Subject:From:Date:From;
	b=kpyx+oRq158B4/RtPHUqYaAGlo9cqIYJZLa9juUl9m1Z5KV/lOtLZri8RTFKUob6b
	 EG0KSsvTxV5mVpDqsk5ZfAM0KabZE39YLu/jTR5PNmdvlAzH6iPMzYFnmRUAm4+/zZ
	 AN7jexc1dIRQzOeKk2Rhh2ZmCaLnbMzZByBP5ndyFeNttYYjP3mMZ85nmNRmxX44ru
	 GhrI0ZlY6ONnc9OQbT0/7O5SkHorySqaqb5Yl9mE9H3MZK/VEGI0neO3jR5Nda0cJV
	 Jwq/JsixN60zko6FeA6iU0Lzqj1wkwtLpF9RtIJ7zmW9rYqp1S7diVFAFauTb280G5
	 gjTg9AaQ6RBvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC041C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305876275.6758.11017962826568958857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4b44a53ac494b72fe5885260e2ac93abbaf61d9e8dab13a976a45c1aa35db6
Date: Sun, 14 Apr 2024 01:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713058762
