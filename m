Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419C3202C41
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740229134; cv=none; b=RiNjiytoh7zW1Zp/dv8gu9hyh6BsXa0IZ8O2adjcMpJgAVvBqBqpi4GgHhcyktEyNvZ1MSOi1OObWVJs3CyQvTnP8nKE4HjC53mbo5OMmQM++Y9VmJ6ta4q0mqWNLPvmBsdZ+jDlXzuBb4rnVkVI5wxqdm8hYfVEJJxF9C2nuhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740229134; c=relaxed/simple;
	bh=kyR7eKmquUzoWn0ht4nhXtwujQEpNKTT2UJElUAcu0M=;
	h=To:Subject:From:Message-Id:Date; b=FGPSyWQnS3E4RHp6k75/HegBLbhYPbtqRi1KxK8dPaj/hLmuFcaB7j1f/Vj6FOXzNjxF9zTXO6j8FKTk1KLQGMzASOfytMjsC7kyRw5OPQJf4IzYVzSMd+7+6PqEWUXvnHvKGIEK3jcRckS6ueM1KkM6EOk9TZ56DrgLhJzA9kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NerLA7z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NerLA7z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9424C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740229133;
	bh=kyR7eKmquUzoWn0ht4nhXtwujQEpNKTT2UJElUAcu0M=;
	h=To:Subject:From:Date:From;
	b=NerLA7z1u24rNOzFQrlPWJEnvEljtOE8r1aBzk4Hu38A7FlAAcdzwIPzsFqbf9+I6
	 VSLjEb83h1AbzmIVnnp70eAhUOszljMXwhNnhnYVPN4AX/gbFHk4reX9cFy4tGj5YK
	 AF1zdkuE1IcoxDgofPGq9PRJFVE/YavzDZeaU2NwUkib+PoJ+RqFsFk9/BbKkgbJWG
	 ciDMyDQWt/5n/k0EVM+HkNYhR9yKywIYvP8pM8/aIX3tkZlwDr0LS6ihk2QdgtzgBx
	 48fmiM/f+A9xqVljDDzOX7kheZ5ySR1nlgz0BOwccWMGSVtxSsIRu+MzevKVS/AGK5
	 SdgTF3aHWz/LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A0C021B6
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174022913360.18158.12470561695494628649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8d394da523cc018c3d71eb9204e10bbca4953232f9d7d6a5f9801418617dbc
Date: Sat, 22 Feb 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740229133
