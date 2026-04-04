Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C0F3B2BA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775291734; cv=none; b=VNkpRHVYRYsYy3i+0N9Hiew8JFQT82ZqdRAfmFxx/TJgPhgvuOkb6AwuyQDOfkTDLBkkUd85RTSHlCQ3nddRAMTKoLRtSrLEeCteXmqqmhTLk9OUXK0SG6OnJt6NetnBeurXOUo54uEpbiY5lsK2csuyW7jNa+qSJ3ltQAHVOEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775291734; c=relaxed/simple;
	bh=8XFC4FhCUSFKjhiAJHkUoaHkm/hiGFslE7p5pGnT3q8=;
	h=To:Subject:From:Message-Id:Date; b=jw5vCZEqpOUzKvtYcwBmtfMSJn2RccUg93IKX51H9WEkWL98VfLGXTjDVg0lpRH2KcWLZN+hysXdv/JvuXP0ixX/BC79EYHPPO9rrmquC7jLNOjBUIwMJtW45A39fepXFxsmcGvN0sjz4e2e6MRUkmqJQujmjv890gx0sqGFlH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr5HbLh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr5HbLh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7D0C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775291733;
	bh=8XFC4FhCUSFKjhiAJHkUoaHkm/hiGFslE7p5pGnT3q8=;
	h=To:Subject:From:Date:From;
	b=Xr5HbLh3LIC0+YdaHL+fXmQKvEFxMslTSABM21CH3SbruyPJJ3lW0jpuDXyKrmVuU
	 wAUw/j6Mq+GLpaSMd3zFUjLF7JYbhX3MocCDUrEzFZhcQaQ/Vnmude6tiZOVIvSQvN
	 TWAuZtZTa8KpTklRer8V85zGuH1aXaoUPfFS3y8aWY9P/htYJPuzJAuZIpEwFzZbun
	 01nYTQ/AInrgmnamJRE5OrttkK3xepLnb2UWiEz4/NUAC44tvWa7T+b0UN42OpyGLP
	 OKAqnFEaT6Uq8c43D8aUZ1teJx72MvJRYCd7HkDa9WV++JVRUpjibMUZ9JznWvQVl5
	 nGKzyvHaA3VGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA93E88D8E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177529173368.24749.16757344256164187297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c704b0b89277dece2285d94c75309892467482b595e2b9f68b1e38b89935cc
Date: Sat, 04 Apr 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775291733
