Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A44A500948
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768080834; cv=none; b=eymH6JkrtSulpRxRe8h1+kKoj3yKPGIs9vUbn7eC5IjoGUUBoXw6ZAtUFe1Aa1M5t+QuAGS/numAhmuxDGQYYllpoUoW/ywEnXQxCGjo4U+9J5sT3z7JKp6PxJlWApo3PhrUrke3zoYykN9AsAWU6sIq1BWae3+tHaQ68s1yOVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768080834; c=relaxed/simple;
	bh=YGjsHrAxK22AHEUffnOz/kt9drjEu+YewuNt4XZRFNY=;
	h=To:Subject:From:Message-Id:Date; b=XFoaGmj+1sTMgAUSXqvc8PF/byhOIh5xhq2zJ4CQQR/h+CpTjllR7qj2MWfYUnHWXWXQMPxfwO79rL5XQRRPjamWOk32oZ6RG/Z3Dp0FcLdG8R3IPY+xGSHY1i2WaBISSJhpXlsNopoUYktUArQjicACnVZfC/GxCIdl5jjgKkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJxGXw0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJxGXw0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F66C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768080833;
	bh=YGjsHrAxK22AHEUffnOz/kt9drjEu+YewuNt4XZRFNY=;
	h=To:Subject:From:Date:From;
	b=MJxGXw0W0fxgozvR2jUEgjAnaJyOjOJLQpmmUGIsqUXVdCYgKmT3bNNOtuLSE85eA
	 ABlCp7IyXpHbe/pf3JuWI/ow8zbfIwlJ8VkcIqquFdXO8Y9kcsfZ4lQqUpbxzHlND9
	 1HwHwhAZtcx3wT/6yO3HzsPDg307vZkXoh/zLdt045BGS33dJm+GY1c0GRSUZuuV/R
	 f56zQbZR1Qyspn/YaNPgIpeC+cxVU/s8kruRtr1OpLqCLUwLMZJV+hCDhR/lvJGnO+
	 CsIgl3ZDtwtA65WKOL00eZw1uw4C0TR7/5W8s/iUPO1WVc0SNKLCjuOr7ZO8AzYcNg
	 fXmiKzEbo4NWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C32D25025
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808083358.2805.11220953284079049606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015477e2ba25e1b94dbbec212688f13acb592bcbc92c81a1afc8e26803961957
Date: Sat, 10 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768080833
