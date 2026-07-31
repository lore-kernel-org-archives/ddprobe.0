Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947883F23BD
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785497434; cv=none; b=riD9jmMDQzzmVpVnGWmod+fd25ZM81T41knHBZLbfgSD8VYBCr/X6CPZnryObElMdplXNzw5lW1lnDERT2zXvHJb8eQbDNbyGSn6b7jjjx2ERk2N47EUD/oQuRjLsmFrKNHlXs6W9xe4d9wYi5A/gDfXRCLkDxM4fjVx/A4rw1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785497434; c=relaxed/simple;
	bh=Gn5hbxYx/Qm92MxMhJz8Xn5ddZgySAt17dUHenXGgW0=;
	h=To:Subject:From:Message-Id:Date; b=l69q1Ip5vsRkGMpIbyemF8+GToUgmRHUEhzG5db7AhD0tBUogHnmA9O++FsiJqXiywVAGr669+GSLbbRZFQcTRcavfAEvveeWZux02ogHn2oN8qViSkGII5CvNPRE7dTeDPwpJ8CCsJf8A5oPhHk8Ft4jrZVThNpLsHN0NRYO+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxZoshNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxZoshNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC91C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785497433;
	bh=Gn5hbxYx/Qm92MxMhJz8Xn5ddZgySAt17dUHenXGgW0=;
	h=To:Subject:From:Date:From;
	b=GxZoshNgeuYMoos3mt3DbvfVvKram0yRNpMD8btELymAYoluCa6nmrt7kTJqSPkbc
	 nklG2UYyfQ7y2QH+RfE5G4bxIVp50VqA8bPDjAf8uCVZRDqb1YakAB7tv5nptdc52W
	 4zqUhTlQaixE19snLc7IukZMvu46aBMZfxhp3bdOyKbnCuXUyg3Ej6nbEZnE+XK5br
	 /kjOXlXHa9zalJYL0CZ9E4Cw6B2ffh9ODKTRBwTey0rVjVA0eGbHqbwqf/LtVF6WaO
	 NvQglqIOPHRcY3reH+hrWJvLsAN861+SzXyhhGpjrWuSUHS5dggcFNRXfwOe53c00i
	 YAD4wqrYo/5sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57D3C5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549743373.2380.7682534396018876158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034a199477f5eef23895ebb8fa60d64a221338c4b74599cea21e300471ce991d
Date: Fri, 31 Jul 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785497433
