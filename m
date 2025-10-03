Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA4135942
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759461594; cv=none; b=ITfFeuY+Zy7ZKb0DEBzPNu9ihTJNdy9CBkzj8JWk6+5BOQ5Y7Qbjw3IKjmX7cSmhx45xtha+JNJCAC90raJHLd06y+OE0MmYIrqVfBytlYGDBQoyiALfojqrkouuaVfOasFtC++wKRoILjoIW3gb5qhs9i6A+cYVwNalu/L3Ens=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759461594; c=relaxed/simple;
	bh=n8TJd5yIuYNSzvrAnY+OLI+NacsQdu7vDvcWRNrC85M=;
	h=To:Subject:From:Message-Id:Date; b=GD0jCe9K/RlJUXiE8iiXSlfHpv5qyR21YCMXpcTG3vBkqYgGmCTKQTZc5Rv0OceON4Kyw3FIxojzPxqt63fdkw0z7nTsFkh30kZ1zNOH+2PSmC+ZutePWpo58EydE9716xsvBMspxLWTp9A1bFB5H/Q7OLGhunZG+tilcI1YKOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV/a/S2R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV/a/S2R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B47C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759461593;
	bh=n8TJd5yIuYNSzvrAnY+OLI+NacsQdu7vDvcWRNrC85M=;
	h=To:Subject:From:Date:From;
	b=DV/a/S2RX9G0lMPjRINBnUCFz7KYddpwb0cN3235gXt+UBGF4Cn1/d6qXsKiZ0Ma9
	 lCxvhf9/gsWDGfP7nwoxzt2VduL7zmVVJb/yN/ud3zU5PqnQJnAWzmgto6fywJyvaW
	 SST9fhrD7+W91LLu3bi95cleEGrZXDik0RN4tgP6DjTlKqmdnuxYQ7DRdY2C5+HzsP
	 Zq1xo2yGv8IeyD0bJlq/fxfjGVE269c+cZJDNFzcHqrFlStS9L04LJ3ZjAQsbJcoja
	 bj0yMsiPsxqfhWaBXwALOv4Xwg5VvZq6VZ930+YzLkDyLFAbw1B9aNSzrS0Fvoh9s/
	 Ey8e7AgBZuY0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D65CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946159357.3683.1565492436001548195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e7ad24d06edcfc005fa6eb81d50560f61297d956b01141916f9d0ea9842f7d
Date: Fri, 03 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759461593
