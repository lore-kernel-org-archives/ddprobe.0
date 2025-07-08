Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A0E4685
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751944194; cv=none; b=qEPLbgIm2nzANmNf+pz/deulQKVWJ/E54HJQBMieCZ5LuD+flG7MB5UFVpoScepZkN0qNdg/g0tbOOjjoiP8ZYnE+4QsXM0UR/YtoEKx12FlGmjEEkLI7nUz/jJtTwvXZd9CQ9+3tzO/Nnj2iUuJ9Kt/n7rSueGS+aAY4CmRWS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751944194; c=relaxed/simple;
	bh=DeY73I2c5QWqJjKCxGp5COGCdNhdewxnkM/FdVASWj8=;
	h=To:Subject:From:Message-Id:Date; b=j/f9ox/I0QsoVKXJD6UR1IwnFIwh11BJoW7z/rRIoOthnQ9hNDxvD8gaWil7EJRTswekyg6lebEmOvWR/ZLs8opb6BPHCEaswMLKtMYzJUjE+EJ5/QKnwSW6NQZJxhvdvaH0jdLL5Ob576TAysNM8pUYhxSS8rdTJHM/hA5sgPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugm+CFWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugm+CFWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C4FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751944193;
	bh=DeY73I2c5QWqJjKCxGp5COGCdNhdewxnkM/FdVASWj8=;
	h=To:Subject:From:Date:From;
	b=ugm+CFWSUfFcp+Djmrb64hgUAzccZqziDrTjvai9bd6Gjt46XdF+ogOhGmUhd7SjV
	 gFALQLJ3x62ibEWvbXY1vGFd6jeiNl+4MFw/ovojmlI76W9eVLDhwqSqCEN1Si6bkr
	 p/CFXAtXGfKVeqptWuY7KhSA3KN1Jsjew2Afa403v5ViNRfEfkRBVHSdHmrMcZqz44
	 57ZRAMnQqXUJC0TYf4B4n8FfHIYrICFsPC8cl/ee+WMzQuoATIBDtyqt09x3bZOlJC
	 dsRkh5lUjMRrU2kIAf1eKcf72cVeLOcXtUkOop/XCTJ+Te5d6ohMS3aeO8VQ2zVsIB
	 7eWH37OYaUWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9253AC71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194419358.14041.17341665983606238936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221245878cb3d2d366eacfa17ed313b3e116c06361ca800283729dad08a5ae9f
Date: Tue, 08 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751944193
