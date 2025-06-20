Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5532EA73D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750444794; cv=none; b=CuAG5II8tnEpwplkc8gHZTYE7cT8lqGQ81cDhEKWu/Uf0HeMyuVmXDrO6wdlHv3gQJWC7fkiUCDiaYLEp79LKjLrLXtT7P6L/DzDdIUClSH/XZMCmZUfnKW2JEqeUyJuC6RuoG6ZKC/aXGOXytkcLm3M/YnzHzt7F2JXTRMAByg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750444794; c=relaxed/simple;
	bh=4Z6ZSsMxYOYeJZ9VyTVnhb+AG7hfJFXaG0VPiZoNDcE=;
	h=To:Subject:From:Message-Id:Date; b=q7D7bbhqSgWuByE2tA2LcRB/VStkMNFBUNUA5lVgie2rEDIG7IxPEL/kdwX1JpyrTZLDRi27SWCLRAROHb/queCQUda3diAt3qo5PR4oR19DW4BgAAJmykeODJa66JoQFwk+CNjMw/Hej06dBTFGK0dwBZtZVvlF3UmVZ6hWtSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8PHBR0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8PHBR0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBF5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750444793;
	bh=4Z6ZSsMxYOYeJZ9VyTVnhb+AG7hfJFXaG0VPiZoNDcE=;
	h=To:Subject:From:Date:From;
	b=m8PHBR0iupRBd+3dsteBR8zNc/w14/vUEs6P/+iciKI3eGFchgzWKHBgs/IF8Wx/X
	 d4XF1fp3F2gF/5JQfg2TLK4FyeCl2EKPmGU+0srtT5VtQrHVaNTxqhh3ozZcNSFcEQ
	 XINNVttCKQm7VZEp9jvV4Qjyw6wrO8F60RXK6Gaawij6sBWIsdJPKMghMaupYQoJFs
	 YrNxJhW6J92CKPO5EjEw3+5e817lkYopMnIe9d9+C+8kqGXsP4TSy6E5I5fAamFNt1
	 INaGCkFf1DfhlzbfSGIjryBeNT3oBjJbp86sC9LPqyx0YjkOO1DkNM0LoBPlpUP58I
	 2Qo35p5p/5q/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E30DC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044479357.16894.14292641894552400427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c4b20af692e847209fbf05b22cb16b115c1afec30bbb42fe8d1c8bba0a7bdd3
Date: Fri, 20 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750444793
