Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1545C2C08C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769086434; cv=none; b=N5SgJRZ08BUVq6YqqWrA/qLv5U0/zqq5G4tfEJRL/+130qnrRvSxHIywg2kD7zSnWeQL88v3nEt1UG1AMzJu4rxeOFjWqDGAZ73EjLkTKI46GHmvX3IqEpNgjNnG+oZnrwVn34ntwF3GLqJ1T3MQ4mSD6FFoS114ghwgEZC17l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769086434; c=relaxed/simple;
	bh=Hx1GpcaUXYXoXwVXW5igzD450GwN2RPfNHElm09dfpk=;
	h=To:Subject:From:Message-Id:Date; b=CInkId08kJ0/wdILBSlFWALt7TYzTJXRD7+YAaUO5WbncD1S7GyF9E7tD1DaZI/+J0wgreWLHG480/zvEPw1lJt/dJUtq3d6XlOVySDMSbvjTvcnpUViwpCU3CWPBiMxQZqZOTQ1eO+8nJz7fFigiykEzcSAKwcJfX+gI3As9ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IukR1YDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IukR1YDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8EDC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769086433;
	bh=Hx1GpcaUXYXoXwVXW5igzD450GwN2RPfNHElm09dfpk=;
	h=To:Subject:From:Date:From;
	b=IukR1YDSxzcqqDCeq7kAbgOrBINpIawfJWkgqje8VFfiycCIu0dXVE8LwbfEez53+
	 16CoEcrtGY4SECDZbgt/MGlsQmuOHPyKoRlr64NI/ejQQzwmt//W86z49h7R14SET6
	 FGC6li6lrlVjl7mX0jFvEf3QyQtYRVBZIrkhCWfh7Xy/OSdEJp2L/5u1KFQd2ySY1C
	 /TqatREloXCsr0DCnR9b428ajszYICy8sHoi9MREb9ByGMCWNh25NTWqCPGl8cqONz
	 SDOhZJ7HpCG+SlkpiuHCaOARNewa2769Mk9bN2LJaF7KEGFo7kISikf40/pWGraziq
	 emEo+NBjNxw9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF6ED2ED14
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908643358.29230.2110257644704245852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23ce8188801aae06b967f64f2a43ad7c91d9358d2e4166af1d8db5af5af0038
Date: Thu, 22 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769086433
