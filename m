Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E46465192
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790788234; cv=none; b=PMat5MY1ip18nrZJQhhtSr+HcGe9FJ/ylTjnDUqHF1LvCSTo8+HZze2tBYdXqnqvVxr9aQTzUp8msFRR6l0nI5IQxP/nwVWgSu5KUtWqk8RMuhBvqjFIdbRquQZ2b5vxIC+5UQ7jbPzav5am+qDxG8kNzAwpv6uAegTGyl017ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790788234; c=relaxed/simple;
	bh=5RHYYOKkRbDwwffmXlIrZ7cghoWBySom7IXGqwOXKOs=;
	h=To:Subject:From:Message-Id:Date; b=Gs4hVm7+DWG3DLXMUqZ8LT4HKsMlSooyQhNx9C+ZoNy3GshDyvokXxDyg/kWSfKe0o/KxPAYFkaIz2Rben6rek3BpHXKfZFi7tFHUgPLCVt2jTWtPEFGAUZf6x+ihiX5mpWODSkBBhl6XGl3fRJ6gLg4GrKof4hpW/UX1MZqxZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtBZ+IDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtBZ+IDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE88AC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790788233;
	bh=5RHYYOKkRbDwwffmXlIrZ7cghoWBySom7IXGqwOXKOs=;
	h=To:Subject:From:Date:From;
	b=jtBZ+IDlwNYhLdvlCAfTb6qC8DwUMDsOdH/HbTlp6y/Nc3BMKYoewF9ExzQb9Iv48
	 wD0CTj898qBHcLDaJwGkIi2h6TTW8sC+K3AhhSuzxuSD+m8iQ18z9Kj2lcM3ISUIqM
	 jHcq4SdqpRKNRggIOh3nIPWEaA/q+bUkp3TOduSX+FJr6odxkKVQbAtkzCe/xD8nuE
	 jCfCzzAcPhoHwobCMjn3DWdiOWrWyh7F4tsv0p3NfQ2/swMopts11ZwxT7xaTg00W9
	 pV+qmhWhGew1a3b1PBqX8vAVxVrK2NJUhCbdpCyrbEChMY82bX4MA9a4MerSDaja//
	 O8WZ5CHQTv1Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6EFCA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078823369.13953.2324531806444262624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ead60d1415b5d5357db9789b6b612acb0d90e95f513f8287d8d2c2a9a1f79de
Date: Wed, 30 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790788233
