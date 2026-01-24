Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8041EF36C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769217834; cv=none; b=ePCmT9ZVd14zKWD4aSbG1R//ad3wwCjhUPJH5mrAZ+IXjuuzuBkhJSRrDMNz1abBmo7ACWgQQ11gfijh55Kwc+acg6WmI3JU0sLEnfAXYOnJsEJGLCj+ce+CTL4m4Dnp9wQs0+GcLYjM+oEiZKvCF80pGshqXSZq+k7S0KCpnBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769217834; c=relaxed/simple;
	bh=XzCVU9TWnnbR26K+0opL1KkERKPTtfpKmZHu1PuMyFc=;
	h=To:Subject:From:Message-Id:Date; b=LfW42k0lWo32fOSsKZ9TtiqqMp8OWUeDxp0no3LgToGe+vHd0BYNl4D/1DchvyofWsazRQO2k3I9RbTwiONMTbykmvx4HchBn5DNYQT1LJOoh/5CiRmF1ym2iOjSx/hjrx6PSXDBb0We8XvzOcRDT5Bz8VaNt6gSXIuHjDjH0NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoKlKd5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoKlKd5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A3CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769217833;
	bh=XzCVU9TWnnbR26K+0opL1KkERKPTtfpKmZHu1PuMyFc=;
	h=To:Subject:From:Date:From;
	b=YoKlKd5PF4EV9mEKv+QHmGXqI//cs+Z3Am7ril6SS4rgyvFKddwi02UQpYNl9Nt4Z
	 zCkb91xpMZVTwUgywMuzVxKe1v9G/NQ943KkuLkrpYgJRNjbpWrNfW3bCyHxGQm9qa
	 DfzH8RFE/gKL1XuNkha8gFYaHFIlBrVvSFaZix8Ao30TPmQhkx0GuktisdvWWE/9EC
	 sQRIXEhOLBT7IAsBPe0yx3mEzudfR2OeqCYEEEq1cB/CRps253UDnI5YoIvJDqHpsm
	 FzIR/gIKDXex9yFISoCjRjbasLT7uz/JmQHE2zXX7AUrZ2DCT5EsbLS9CbURtYbQVS
	 cRGj1F+4sLGfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C7FD778B1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921783357.32085.14830304942431805557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae7ef9f9f541eaa8cd566762f08eba5156c02997df00f17d0b7207fd3f30ae1
Date: Sat, 24 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769217833
