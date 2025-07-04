Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291E71078F
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751602194; cv=none; b=UAuSpvN6BKkAozm/frHE9buuMXF2Q2+Mh6IgrcWJonEcn89u0SXOCjewHjtf9uhZg90mQ61xe3t89bXZjdknrOnzGQQ5ekW96/nmOhuz2dxR9L9+LeijywZ6dDl7mPbJKGgO6lLt7j6MisxDrmixTRViel/l7uKgaQFMf0dXvww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751602194; c=relaxed/simple;
	bh=BAGtkXSJ9toGmv/3/EEYJX7dPxzluwlrIkxXEPeZzOA=;
	h=To:Subject:From:Message-Id:Date; b=cLgXS+p+gaxp0lj1LGaCpE3p5gudZPFe2Nss5fyTlOors0aoi9L350Rs0n+3xKVNBvaEdKH5AcfrvEs8QaBtGXWm8jWT2KHe/Sh87lYnzGkO5A3Al/Mw/XIo2zKTR24he3YK3MxIEu8GIYSyhbtxUDvnHqh6CDXMnK+odHOhfqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQfUw7Yk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQfUw7Yk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCA2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751602193;
	bh=BAGtkXSJ9toGmv/3/EEYJX7dPxzluwlrIkxXEPeZzOA=;
	h=To:Subject:From:Date:From;
	b=gQfUw7Ykq09wqpyqALXXQ5h6mLb1S9JED5x7A67pg+i3QAn9O6UGx1IEB3/TZjJbZ
	 DWrtwxQejXpD4kjgfOdqGViRfvZ5cCLXvtGHoCNGAKQJgS4GqofjYrsrx2QfkPlpBf
	 ie8aqiyHzGHixdXpGxCjpiYL0+WSmSZamVyAiWtMg0kdiDL6nuc3EyK+c3fHJt6M4W
	 Z7dzOfSAfPDW153AiyuBeMrtwQyirxoHRyCUShvPwd9UqHiL/e1E6FSz5Yv6l/H+5F
	 y8oxQkMR7wHp+FrlWVKQIk95wwUVgIdotwQn9GS6mhCKv8+NVkQibBXg2J/f+FtXlQ
	 rAJ6H3e93qahA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DBBAC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160219357.14010.14588581946353956845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b7647ce401644c9960457dfd8cb925d3c9e238f30cfab4815c980b6af6d4c6
Date: Fri, 04 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751602193
