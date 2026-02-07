Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD6129ACC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770449034; cv=none; b=RBUyWc4AALAUcis/STlB2l+CjEWztQdqQAzQyS+tgGZ3J0gybV9Zq+8z/cB77B/Xgc2af6I6zF5HtF8UFiweZJgFbSx1JQIRcM00w1P/vsJALy2/36KPD+0CoryjI+bAylB1LxyeIjQ+lwnSH7OSZJqE1d1u9ohG4W0aTMhKEEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770449034; c=relaxed/simple;
	bh=0ffPRS/Tl3wHDVk/GAXT2tGhWSslKDS3E/fpNpUeL5c=;
	h=To:Subject:From:Message-Id:Date; b=b5gEb2N21UG7hg0sZyCwSl7tt3XZvIUZoPUjPis2Fmq0iaOEaMBgAhoYlFO4gvnv8zBrv5ojO13L/sZmSg1smagpdipkRmUYLkBJkAY0lXrOtZT9GYPiUreDbLM0cHxBB+PO973276CTtTLPgEKH0liGQuD7HiBfhcIU3xF6IpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4VhJMGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4VhJMGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC59C19421
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770449033;
	bh=0ffPRS/Tl3wHDVk/GAXT2tGhWSslKDS3E/fpNpUeL5c=;
	h=To:Subject:From:Date:From;
	b=W4VhJMGu7qn4jwcypzj/NFOzNbrbRGOjoTeQ7gV/JcmUU7xDUJMzqsaC0Nh19AGDY
	 oi0/xj8zBq8vEQ/cH0YgKm1cBMwyZ3LxUtt3fmsLVVHrZzxqxJQUiu7rsCKzjdXtcA
	 7OwkgDxUnUjDwfVrZ/6o+JyooeY6jp9rBkcmzQVbUEfuvR/uiAhd4IcIGUzhpNK5m9
	 Jj8C1X0XbJ4svOLv0NzIW26thrzNPb2zQfGP90bYwF1XEuNXewCph64x5x1/Hxmt7j
	 EDjq1pvn3yOuJplIeu9/0zeJey+xzdZbsr8bJeA6ZwrmdeXSQtlcRDWzfT1/ZHUdkV
	 j0T2MAUJgNr/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92E0EE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044903359.26699.11259979318002681706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8ded53282262161ebb98a52b9ce820c974c768c73543169e942a9315900668
Date: Sat, 07 Feb 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770449033
