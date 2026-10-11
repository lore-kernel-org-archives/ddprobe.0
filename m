Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD8D399CF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791722434; cv=none; b=ESYohzjV43UM3N/uPYgdxMsrrAIZsUnWL0SG2PlcJc1IUS0nKV873MwBX2TV8M3Z2yTM+EGan3vmvRf9wjIL6hWHlfnd2Q/pR92vuM8qMqR1Es6xYhxLeoWgbacf0or7o2BIe4oSGPZEWxpKX54zVQ3xPZN3JHgmowMq1MwbXU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791722434; c=relaxed/simple;
	bh=d9pXRQkk4dH6ibIWNv1bIVSEZ4QYkU0aI1Oh6G0XAIM=;
	h=To:Subject:From:Message-Id:Date; b=tezTL4RDtyB2AbjYl74T74YquGKb/qonAH+97uGh5kLPxDx7RMH1wdt3OGmd4o5fN5oddeKqPA6kopzN4WGMjJhrvcRSwxr/dWpk7Qy2HPB2N9XrJGm6kftvdTkzZsVFzeQD1AfshfJ6SgJoi6OqoNdTzEC+SGzgsIlY5cDo3bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUfmhqty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUfmhqty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AE8C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791722433;
	bh=d9pXRQkk4dH6ibIWNv1bIVSEZ4QYkU0aI1Oh6G0XAIM=;
	h=To:Subject:From:Date:From;
	b=WUfmhqtyWEvVJCgBbqgsL88J5zGxxG3PpIygXj5Hh0sCr/MxegGg8zPi9NmFw1iuM
	 ukKie0MJplGIleSlv5ce2D+6HAD2LrofM1rklzL+nUUtiBpwHlUmTzQrqoMhJfQfqg
	 QRqwEOMafRVHY65MUUc/1Otd+cr71LKGw500Q9mjd8osDwDkqbBldoh6iVCEp0Rx2J
	 IlWl4X9SNw9RDRtqce6UTUjsbXi6F4ApcRgLzxLQAeNL43469Q3w93g0U0rBrnyrfI
	 RUm97VUcb5FgOB8/XwnJ+n628HLtnXXqAgzgKa36+jiuQfD/kNLL9OSIrFuJU1t4pK
	 SE3M6ALtAu4Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A14CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172243368.18279.11160835567721331676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0984f00a7461f6a8655ee7b56ba6da0e61e3e0ee6382d87f96361eac84c3f9c5
Date: Sun, 11 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791722433
