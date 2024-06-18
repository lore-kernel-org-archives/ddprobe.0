Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D5B13D625
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718754563; cv=none; b=SyuhZTY1z05y+eqYnfBWRyNe9frg1zqtgDos9gtUc2hnvZddJaGJ2RTmYZ7zVZCg8/G/ZdBNXjY2xIxYVcD9sHaYhiPKeqMs3qxIjolqRmI6sdbCj2QUFB7iPIoBN/IsUc+7zLuHFDl1dZNXwVZBgL9m81bHgFzJiYz+3rrvyPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718754563; c=relaxed/simple;
	bh=6wF0c3HGdkPdk+Qox/RLoPpnD/RADCk1cCYS8JSiCJ0=;
	h=To:Subject:From:Message-Id:Date; b=RSDfW7bl4pUkamVR4k7v7n8DO8ON9z71iSW+3OC3rr+kEyvjZhz7MpkfZ7Ix2Z9xzGIWbZQVRmEKl5o4v7ilTJlUgwnyZQtGJ3TaYmx+ymESO14I0fKve18VDR4daA5F+alDvRjUjOwCvCZEeAOUQ979nENTqf6XCy7fxhHWTDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctERIhH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctERIhH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDED0C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718754562;
	bh=6wF0c3HGdkPdk+Qox/RLoPpnD/RADCk1cCYS8JSiCJ0=;
	h=To:Subject:From:Date:From;
	b=ctERIhH5TwzA2jPIhK/X3IZNRoHDIzgfhQQ5+Z6fyGCcjMZMsCxvSlux3kDxLY+eh
	 8H9uiifrAUjcl3hxqnc+nLZUDQBCpCqUQPb7xSdcPFuGgp16nDcAXS9CkWOjHbYymm
	 SzPaqEqF7zGe2wg/TEjFq+Lp5cC23BtgJE5teFW8Mirbjo0Iz6ysdoHZOLN/BfWqtH
	 d4jm/P+JCDiNLpFx3GNllosIinRIo4lLvC4hWSNyED1/4P7iGxWxcOQRuKlhyTfiot
	 o3QRhbZ8nbNYeHC4/6jkifx4SQX6f8mjwjEcI+j6AFs9wYYKk4qWd1P58PZjAU3GA2
	 jyI2JNkU1NTfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63C6C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 23:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875456279.29859.496528188274013126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38c234bd0204de06fdf19c7593939495e7f58ab0f4bd231a73ac73f77f653af
Date: Tue, 18 Jun 2024 23:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718754562
