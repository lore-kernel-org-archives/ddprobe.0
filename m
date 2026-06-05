Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3984183C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780655674; cv=none; b=ADWZhbkiPBcgUL72kpcXg+pMp/viRYc6g9G1ScBjeildbfhbfan++j6jwG6EWBDSxc55CxiKH6AKwf/8URQITiFBlAAYOEGBryEZ0F5NZg7ar0ZATuZ7c+rTCq4Jj5EXgvvm5KPnnt9AbauOxpqroTR4dj1Yx6dqLKBpYwlwF+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780655674; c=relaxed/simple;
	bh=hNkFu7cShptGKPQwnQfMdZWBJ0DzFMGANO3eNvBB0G8=;
	h=To:Subject:From:Message-Id:Date; b=LOLOjQaaRQtaRQOlmxXX/JqeJ8DJzCr01ruPrPz92SykmNzY9eqsKv4mrx7FUccxtmUQHm8IPdDyuVttaW6mwtkOaCQ6t15ZEYKGggTYVZnh9m6Erqvaaz3J34xSld9EigcjehBI9s7YFC3xyTy9rj5d1dFx2xWSv1u7NWUYCYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrnE6x4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrnE6x4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC4B0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780655674;
	bh=hNkFu7cShptGKPQwnQfMdZWBJ0DzFMGANO3eNvBB0G8=;
	h=To:Subject:From:Date:From;
	b=IrnE6x4XixXRazufrP5CeqWyTpn0rJP9cr49vVlptfkN4BHZKZgWYQ+5dAllj9URG
	 THmrmgmgx+U2/BKUfxCynT0AR3T+5ZTSQwsscr0k4NY4QE2GnMTbKodHb3gRkTykB2
	 n73p0JCuGYIecqCDWwm7k92W8fNt1zJ64QehAV+JbQJ0pqxqE5Hr5y1YePQiQz6V5G
	 kDC6MHwai1qH2F1Q7ZS4fWddQtWJwKn9BlsrRJwAyIBq/zYt2TeaZWkY57J28vIfgZ
	 tsS4OKlzo9j+iFd0Ho9EAX7DUheweopcfieLVq+6WGAHs2dQdFQHdtmeFuIQ0kdWqL
	 W5d2HxFu/+/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE07CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065567375.16760.14826273874403112062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd4fb235b4638c09ac9e2488b20aa04f39d598ece42eb66f63c5ef22db65b43
Date: Fri, 05 Jun 2026 10:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780655673
