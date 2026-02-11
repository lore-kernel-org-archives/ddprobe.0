Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC2038F9C
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770794094; cv=none; b=e5hYnnlfmkh1EAy7sKNwORjg6R/WkRoYjbM0QZz7wL4wx4N9n5Uk7+5FTo8d/TNNGJ1etHdsxQYs5cFaoGbyT2qZHGWSXImLvlH0Lnnf2XH1+9cDTAdFnwq7VrV9MX0PL9vZ5i91Kv7a3BFz5BtPRpTOtBGJubCgOf/SgICmz8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770794094; c=relaxed/simple;
	bh=CmA/vZRmBV8Z+BlqX1nNVjS7ICi9vFzzgKD4mJYK7PE=;
	h=To:Subject:From:Message-Id:Date; b=t6YY40ne1g094oc2zgWWMR4t8o6ew9IsmoY4n3csBor/ksfn6fHLVFhcDjR+EQ+/LPL2c65pF+UfV64tn50I7uCHDsTgwczk+L+cgwElz5Fyl7jCwrVByrP3bb2iwaCxVviyX0RqZyLQUUFJsQTJpi1CNrq7Q3yVSrQSozibiHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJls7SRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJls7SRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B27C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770794093;
	bh=CmA/vZRmBV8Z+BlqX1nNVjS7ICi9vFzzgKD4mJYK7PE=;
	h=To:Subject:From:Date:From;
	b=IJls7SRkBwIiaB9vcM84UMDbs4bdFY6DBoNl4d78Tu179dQF9ngDNxb52a/Qc8n/p
	 efVgynj481zZ5lMmhpFd/A11q/8f80AS9JnizEFxtUJW8c2ndESMPfQq5YWlgpKCpk
	 WRYZ40aAE2ZdRSjTI5Smgn3RZTOy5kg7vKzescO7+is7Iot83VepQFdDlZvQhMnFD2
	 ViJCL+ntRzez8mdwvdg9pYkcJ6Do+Kx0+vjtafC+ttmbJplNDsR3hDjzLoQLSqNCVP
	 rKJPITc0zG7numjMrunhTaqQF3MzWAJSAV7XbyS8XBaYkFAe4eEpW11vBmEa7NxWX3
	 JpCpgqTWrXajQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A073CEB5972
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079409364.11178.17128837346566344568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d0d8c754ff17c01e742482b020977798042cd338042e01616b0f4e17f0b48b
Date: Wed, 11 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770794093
