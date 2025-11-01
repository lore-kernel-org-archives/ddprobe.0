Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F351684B0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762028394; cv=none; b=T/y2Ln/gTat+w9YZsdqY7sFfE8FPUwDD+MK+4+SmhesyPb1a1CWUPj596AYaqF0iLcA/etH4sWdna9tGIelnD+v6Wz0pmfqCnDtmD1W4UEqlTedCeo9LC6hWqCvLYYDJPdmrLfhVdVyw0RlWZ7jQFa3AzdKzWiMS4/GlyLeOEAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762028394; c=relaxed/simple;
	bh=d0kmsKeyHftRFLweeB94seG5+VB68IHXoVagucmk9pM=;
	h=To:Subject:From:Message-Id:Date; b=MBNTXVlkvcC2PmJe1ysuWjRG2U+iaEfHOYbd/c0tMg9sXsmYnBxft7nJQXB9VSUiB5m61RTDWYMbuqJgOrJbX6GZE3KZ4RuUXvUuvG7xiKe3fZDVmVXUyaSh7lYAv0F2FZpLeE/miJb9BXZAoT+g8NMrcb3Tvjc8l/sTmpwJPCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWzQJw14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWzQJw14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C07C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762028393;
	bh=d0kmsKeyHftRFLweeB94seG5+VB68IHXoVagucmk9pM=;
	h=To:Subject:From:Date:From;
	b=mWzQJw14LMuK4i3OX++GAZ2uqI3HoPHWpvPU2EO3EtJd/sKFO5q5BAZPzGFvx1cDP
	 EGWta2bQy0fvJxGy4R2bwz4RNol2es/+FID2w/sVkXYuTxplDtK+D/EA4Ct4n6Ji3i
	 cBHhh1kw/o3WdSUoru+GQM5+D/hi8l9EpefkX80wejED9MsxeGOsW9sz7m9r/GG05f
	 mY8KMgRacAurFznbv8M0s7UNOXUVsMLZibtWyGpofc+B9BJSaxaiIxlYLJDwzSEQ+/
	 CQnlLLaZ/IKUU5T72ti6of8ctznUlUNxtrQ+JuXzm6AgVYZgE9TWUaoFZTf3Q08idQ
	 Dvogg0H7SwFWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C0ACCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202839358.5931.10659932126686084438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775c88cbc6fb450adbf41791feb2def1bb984196ad12410d713ff12b95460c2e
Date: Sat, 01 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762028393
