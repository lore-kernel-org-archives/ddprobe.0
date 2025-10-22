Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1042F5319
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761117594; cv=none; b=MH0xXhXtYiiSY1Jn9bc34LNBtw6aKtB/2YzObUh0KOthuGpPExJApCxDLryfHorF+jVvYGkQWtHGdVfD4fGtKb+WvOgv9+vHVi2EWudQDDMar+EzuzJ1GyIM3Uk/JTTY/kVLECvaM3nmFeVa3qJdBX7ptaFxru1r8pBRVbh8O4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761117594; c=relaxed/simple;
	bh=pdUEhHoLOXgeE/jMydXJ6SX2YWeM4xjGrIwh0l+VupQ=;
	h=To:Subject:From:Message-Id:Date; b=F9FDv3kMgexbVQFUe/bT4vcSHYy1O0Apsn/8FGeGNzayAD/iNZn6VYcncXGG1GLXdkMJJiX8FGR5tNOnUsQEvNCvHFZLDvuyjgTyoA5qzq884g4OTGr+VmYbtyiSiJw27cKPQ0vEaFaQzIhkYTk/DqPea/n0VH0JcGa2MsCIlNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oThdN8QX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oThdN8QX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5867C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761117593;
	bh=pdUEhHoLOXgeE/jMydXJ6SX2YWeM4xjGrIwh0l+VupQ=;
	h=To:Subject:From:Date:From;
	b=oThdN8QXJv/qzQeceY5PGTbKnExkTGEj21kzJqm9mvggzboNtahjl9P06Fu12jJ4Z
	 8iiV5Wz7UcZ6HlINCfiyRKKfFrJRuCWu0i0NDJRxw+wm5Kxmn9P5W8KAhgHW04Bvd0
	 n4v9X9ZpioK8xKaBr776Lt6NFdjKLwHrk3mYbT1BzvqG0uCpjExzipS7QZTcVq7sGI
	 TRy+Lrcy2LOV1EJDW+VTCjNcC1VpT07VzB6YAO0fkjddkpCZ1UyMI24y03+Pkoom2V
	 SzYJVtw+ChPKunX32eHoexORYvYxiL+FfQzVWwMapf95S79vem+SgQwd6zUQGgmlNP
	 Ju6rO+x8vKmEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E7CCCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111759360.13366.17676414322282704589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e00eebecb7c12a1d665ba5d20303a3c78acbd8fd42a90d8b3d5b54a92d5f69a
Date: Wed, 22 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761117593
