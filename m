Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CDF13AC1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758161994; cv=none; b=hndYDuzNDB4UmWY969jqWe6FEk877kPzy6Fh5eKFwSeBQk6hCAvWVgiz7ltx5tkI5V6jkOjaNba79WD1HD9GiETgvJkV5EhN2Xpa+eFXPpohjs3UDd+V/UHbbEPWkXuAOvC/IgbKtyLd1MWVnH3bAxUgsrvmvuYYV9+d576nies=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758161994; c=relaxed/simple;
	bh=Cde/FDDzis9rG5KS8H47Dg4L+BlN1V04v3JkoYxHIbI=;
	h=To:Subject:From:Message-Id:Date; b=Tj1cwkiiktLxGver1DwQRCq6WkSrx0iXFwg1Lx7OYs14aazEvGSHuOXxctNs6Z1QvLeZS1tNw7vroBe5JcTc7TsAfgJhrl2Mtfg4MMweaktBwY1ZjWSJ661KjR2TpDPswNh/OJUaNjHoDxJlqwnbCuYXriLmZPfWEVKd3D7lVbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7iNHhxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7iNHhxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AFBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758161993;
	bh=Cde/FDDzis9rG5KS8H47Dg4L+BlN1V04v3JkoYxHIbI=;
	h=To:Subject:From:Date:From;
	b=B7iNHhxOvdaWSu+9ZCW+CA5TVMMhuA7iUTYcCbSc2bJyPbIBLgZuRbVFqWJ/pazb+
	 ggb/4diaGixtupUlie5DzDC0q4uAu1oLBrrQFEczIdrP9nA74zmeVel0NHXitLu6c8
	 yngFmS746HSt6aJbszE6DqX3nPt6bdeIEd5IyZ2ZkCoJ7QLCTTqmLUyICPc6LyK3/J
	 SP2b+ofyOelTguhNCi8TEFs/WqGK0xO2dGmFmsmKxhVYDlgABYCyhKS95WjCKb+net
	 LK/GqhBR5kfJhqnJqgxk4vdEV75BU3GtRT7uKbKs2lS5Y2TcAy9ZlEr4ytYscia2lp
	 C5dWSFer7w0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90398CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816199358.19984.17118310143328821743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefc7c137097850a053bb67d99b2085498f247b03c8f6c4fd7ffd81a3e0cfc3e
Date: Thu, 18 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758161993
