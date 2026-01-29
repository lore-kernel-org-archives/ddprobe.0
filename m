Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D01A1B042E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769651634; cv=none; b=h+v8WN9BBoFWnkdsaxi3HkThK//zTLdW9OyfULuZKt0bwxG/56mfROCcunxJhRo7aVyL+qdyCpT6dbgBe/9cDHhVR3vJDR/mV/8npWWPxq6o3anrhMDwGqytNpE8mJOYofsrAs/VkQJm2UGnxZuGYE5kNyjgxugxuqVg8sMt03s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769651634; c=relaxed/simple;
	bh=geLOxSfCQRkDyFwfQAOPKcOt1TKysPo3axUi6IQUk8U=;
	h=To:Subject:From:Message-Id:Date; b=bKzTek8MJOliLd6Ixw2U/aezSxvPvA3ynn/PV6JOaijsBSvZA9RkZ3mmmz0I+93c4IxapY3bVZjlZ9zh3NWXKcGSlskNMymXmfy1aGEYXBQLvD7/qFjvHSkExMnPssTG/o2cSl9DaKc0iJyIF+ZulxLu/PsBkKOS0aCLsKF/H/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OeU8YN/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeU8YN/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15D8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769651633;
	bh=geLOxSfCQRkDyFwfQAOPKcOt1TKysPo3axUi6IQUk8U=;
	h=To:Subject:From:Date:From;
	b=OeU8YN/VvFyjIe3KDD9qxTQ67ee4ZRJjPnha7h+/LjG2RoiCT5L+pQ2SO3UYbjip6
	 CFf0UoT/3kefQXH+3OuTKHU39RINFH5YEuaRDQcVDlZXwx4KYqn3yr5PDlx9zolsZF
	 sZiVqlmiv0qiAwjburx3UATy65sG2GlnDfDXePjygQPZWdt/1AXxWxPLrwois7W9lA
	 n8MNhbS74Wv9/VCXNAzRQAnDpVa9ZDn34FnfXseIXnO1kL6oLOT43+sU8Yrk7fe2GG
	 oflcm0Ctibi0ISNR9FUpHm7VFlcyOZgJ+zi/8v3ALyIxLSZK0NTNyoj5ZDJ1WWrukM
	 RmrMHfUWV8IVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90936D46C01
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965163358.20560.15290369813510393067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fba97584de08069e6ad4fd8e7e3ea9f1a9fadd6aeefc92c672d0777086f423
Date: Thu, 29 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769651633
