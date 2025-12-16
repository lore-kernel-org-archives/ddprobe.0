Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEFD1494A8
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765855373; cv=none; b=UZRKrtFvG7k5zp2sEjNoCfXBbVMJwHMZHlnEDE/AGEV2dzHoLAZfVH3iofjmzC2TzXNNT6JPIGegvJrEIPwJS0xddqAhuBFktu0yoshJ87Xudum/McOlVNfNpA7VlwTKfRY+cP+cEkiM1fIJBnW744Ri/bgDAFshpvGpsxkp6iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765855373; c=relaxed/simple;
	bh=dwrS7lPza7GEWLG8EDrpRW45CMkGeAcUqRHp8eEAyPk=;
	h=To:Subject:From:Message-Id:Date; b=czwV0Ws6q3GjErD1mk29AYs/u2ptpoVzFAx0L2IZlENpbrFJGblfiHgarK4w86iUuYo5d4OW71wfvcer2zBnp7D3J/IlCqMP9FcGQToPFKbypHm2oGiHtXGIXjyKwgPyEuKu0ZT7cyEz5xPjFLrlimyFSwt4NiJMHwvswipDdgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hY2WSUze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hY2WSUze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3198C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765855373;
	bh=dwrS7lPza7GEWLG8EDrpRW45CMkGeAcUqRHp8eEAyPk=;
	h=To:Subject:From:Date:From;
	b=hY2WSUzeU97ep+tyHcNAxSG0oMD2yrFTdBu2SGsClc7noWmy4HkLSCMcLYnXUKfbN
	 2yCM7xDAlulHxoIr/EAH3AtNTzpqUvpdLorOEqOuWoS/EmAGI7ORyXhCIaKwzQrhGD
	 YliL+OzDwIfWkOE2tzYzBXtMdQK4GmCtHkCdwX3xp3KvcDNk481knfBJhC6SYsTTE/
	 THV4V1RiWa2xN48gDkZaPMIiqhOZnXeDxRKgRpROTLDnR9jvUvBb4byfYV5ocgDb2+
	 RviRyyjZG3rYXmomEfte8PhHuArVB4SQoQapwbkjD9aw1kyfe9AiLXVg0kS9AWn4E/
	 j9luKI3vc9wfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92070D5C0C8
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585537358.29011.3888043200910694747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc4d4bcf51ed8a402916c288c1975997198080b78cf82b8615f42eff665c109
Date: Tue, 16 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765855373
