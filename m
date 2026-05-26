Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C74221FC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779762754; cv=none; b=hqcQhb2XFoy7MnIK0usUKCUSAglSBwqQeuj0ITcYaxj3nMIOeRr86jUUPopqFWJ3rD+ZiQ9fbXcX1w4maMowEZgSutFf5ctvE/OYbAGh2OByeu8+OdJccKPGM+lrFy6hIZeAxuRfBRkH1x3t6Vn5BTpo4kGLmfffBt2Wqt1uk7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779762754; c=relaxed/simple;
	bh=IITz25qjhFA2uKNEo2JJtMe5gRKNhek78KYS2wSw1O4=;
	h=To:Subject:From:Message-Id:Date; b=d32TpUEiqb6Nuu7deBivRUALmP8VP9BGiGZWxITmcWVvyBMZZBlwvQeHJSMoJeP1uYatqn4zkMY8L1qps0ceE23oQvvWcc/RoqZEjQsYmtxdZjoaUxNbnyL5yYpKpJsi/6UraM3awVqPd/XkNua912HPZoOzD5voyzEw2M/A6LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpJOUKZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpJOUKZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14D8C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779762753;
	bh=IITz25qjhFA2uKNEo2JJtMe5gRKNhek78KYS2wSw1O4=;
	h=To:Subject:From:Date:From;
	b=XpJOUKZF+dC7+0fkqEnnOR083CgfROEaXIpopxj7A7Z6zqV4WAO/NtBxOvZSpjasi
	 quiDdgNujkl5t1JSEZ5Q/GNdvo0c3eYuubSmmdNRcMFvhmq/VYyg6TKp6c8Er13lco
	 7gbCQlZIRnmEju9kx4rHu/lUcTY0AqWizoCIsLwHtJIBhrcb+izUTp1xx0lAPk1e0h
	 8EF0XgkueZz36UTYp4WgaCK1RBydQDKHWxcQrtCLmVFMBu+al7vpRce3/tAmfPl4BG
	 OTiE9r8eUkqpFz66YDEekQC3bXngDTbiz84agmpxwDcLsZcVD/jGddjEG5kkF+AVcl
	 OhtWg/k3wLnCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CA5CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976275368.14541.14558857512421556743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0aca98cdae249325d9e450bc2dde82445417bd6bd5915e6a4cf6443f01a4e08
Date: Tue, 26 May 2026 02:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779762753
