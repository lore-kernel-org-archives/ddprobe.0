Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4192A23C8D4
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739009754; cv=none; b=JVpzK2KAx/PO0yAllGaajel26veBkM8Vxk92PjRtbm0kMcGl6RavHvEXSIMDOjh3XiOd8fvbumn44KXdvOBKJkgOA9nPnvjqDA8HacbCFi20AHvBlqGaB3cdnKP+evComnM1+yUBUH6qJW3W2H4bnufW0SPnAg2jPjBc830YFTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739009754; c=relaxed/simple;
	bh=2Roc5bscAKHTkYmEpNGe4WrxAXjE4154Odd51OB1bhk=;
	h=To:Subject:From:Message-Id:Date; b=vCK75LBVxw/XguP+lcQSbyuD61DdpagwA1NS8xByzHpHFSmNVp5oCFfE/o08MDUeFsgoC5EnD9l4xLLl58DBH6vl1Z6TkjEb/l0q88AxMMovw/tMXA4ucjWX4HoxQdHkQTBO4rHA+f4X/apYLs70xl5WPdyYODzz3cnm7oB+ypk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9MTQAls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9MTQAls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC901C4CEE2
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739009753;
	bh=2Roc5bscAKHTkYmEpNGe4WrxAXjE4154Odd51OB1bhk=;
	h=To:Subject:From:Date:From;
	b=u9MTQAlssL92yiFGkR+arkx5QjAzsr2lpld3BhfQqVj1SPSVozGLjhnrEIMn2eI8T
	 PRFvRQSOi9NWsc8Pui65rQ+X5a+dWONH8rrrVJjRtIIAI6+NmOs35pdsfxmH/2gtPd
	 ZKZNM5+Ctj/nx/XQ5r1XBmKutfGeyk941lcXuQ7LwZxJf9UxIZXiPKN5dQ66ScrfwW
	 INCnQwIX9VskSZ9CxvonY6j553xD2HHvyZDolainLjBu259F7GtSWyn8X44n42JjH0
	 s/s3XySqiuwsoxZ3xdtRGkf47lSgQXxfCcIsz1+Fc1bPZ8isG/eagi2WnXOKhp0ORn
	 am0Vgqo9knPiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B43DC0219D
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173900975362.29008.6666642597030154729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f91044536b6733657f4162232a2c096b49694b9f42674fcf2edaeaf94cb5fd7
Date: Sat, 08 Feb 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739009753
