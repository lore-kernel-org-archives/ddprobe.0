Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8434C91
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743194395; cv=none; b=Y2n3ya3U3o26uwm03elWZNZ62YAi8t+7Y0VkpCW231l/opwu5x9x20YXEBOqcYergq9hPnNTwBMJ4BHy0/aU8d1ME7f+wLFWqRLsNyTCU8fu901e+0mxYJWgPO21N3U6Pp2+1d2LkZm+McaYt19AVk4KZ+RLd+qUcpxjm0vyo3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743194395; c=relaxed/simple;
	bh=1bs2buSFFqYjTcJhmQ0G7/x43GLLPKNhKbBzupJCjWA=;
	h=To:Subject:From:Message-Id:Date; b=aajulusnoT21TjGoSPy1zjUns+LBUOVmxAB0qSVNYyKu9KL5A+yjCl0NKN9MMJ9EYq1HiOIsZfw23z+V6nqn0qTa3bytX79WhXoGi53FnJpC8AcknhJ1cQWhfGmQJ2IvPBG16gMyhX7QanPcj6S1+89ug/XjvvqK2AJdzgEEw18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyUZJt3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyUZJt3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C8FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743194393;
	bh=1bs2buSFFqYjTcJhmQ0G7/x43GLLPKNhKbBzupJCjWA=;
	h=To:Subject:From:Date:From;
	b=XyUZJt3oGIjU7Vv167wRbq1TdfSdSrz36yML5NBM/+IuxMYJ22PgSQHeW1VNElLmS
	 QY4DQ9Z1Mx7fOW+xUh975rfujtOpIcEFawo9maXDyOqJUmCXOAqSfeEUC6YAcPDBPo
	 fFWwTojk/eOtmZ5sDy1jTQOcgacBtwTTGaUChAGWOqsFIhQ3VMOCQGxAnk52S1b1eP
	 Iml0/V9dbDycH/G4DKC02wMQbMkVjqS/XQwJw6bOBdJcPpOnuXJ9ArmBb1aYNwA3BX
	 pN/Ok03BZmIxiQsPB8WU8aKcyGV9917L6V/kGghLWIURIcO817G0HaoL3S1qefeIrE
	 gjgMfHebJ4qJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A6FC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319439361.10972.13727532101915672123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d83f607f5359ce5cbd70cb9e416508e9442ca5d0dea4bbf5a259e41399dd065
Date: Fri, 28 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743194393
