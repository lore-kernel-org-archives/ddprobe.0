Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF839460
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749524994; cv=none; b=I9FgrYpSjIBA/j2EH1vaQ0JQwHstS18JYCV5o/bCXmdbtEoroAEW680C7k6mM8h4JFzQlPKQCSsAMnUAOHtCL5LAYEk5iu2qem8fX+EnWN2z8tg1UGswax9vawLcYxyVEXZGq/yt8tk+ZJyhrXQa0CRPBbh5o0P3ulezvy52/G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749524994; c=relaxed/simple;
	bh=7a/AC0HH3AFAYiOU4/5fRFvMTPayDdGehiW2CsdBv9Y=;
	h=To:Subject:From:Message-Id:Date; b=hFLusF6c1jpCry0MFjpLQmeEA2NnSG/my+C/Na/PdSQe32sJE5d/6vBIyjAkVcCk2a1u6EGPGXFMp0ejeaoA2O2dWwsO9AM/4mL2tV8KulLhDXvR6KB8gRKzMeHKPg4Wca+EhkIzoBl24wsg7Znitfi+ZfgnRNrAs194SNtAQnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujokiPEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujokiPEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED8CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749524993;
	bh=7a/AC0HH3AFAYiOU4/5fRFvMTPayDdGehiW2CsdBv9Y=;
	h=To:Subject:From:Date:From;
	b=ujokiPEZVgbs37z144HtsL2RfzWt4SMBWqITPOEECGPFd6z13u2+FYE4dDRMk9Hlh
	 n1ozFM9qlg69AjxNa8ubBiFXfcJTngEzxaXiOcrPXaHJwCM+Elux5Ie83bsE+7RUJi
	 ghKgO/5k7k+QIzyJWLyZ/h03RDXPcZQGylIEyEOjYGh+qn4IhJ/2ztvNd3pgLGoJcG
	 vfGfEegphjCWoktughUNLO0BORZbxs9/aZnxr6Pxl8HfUiinySBT8MtPBxlOGv239y
	 H+Ks3z0wO9Y8+GVY240mkrH7gHtR9jDyBM6uabo1JK02+ttQ+AHbqzI1Kid8RWXShY
	 VgYghwkXIKziQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C1C61CE8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952499357.26604.15156769362841637126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe7151baf72db99df320c26c38c8e7fc16f24f7823a4e43e0e1b5ec871123c8
Date: Tue, 10 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749524993
