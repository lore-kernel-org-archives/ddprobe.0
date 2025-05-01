Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449D31F150A
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746109794; cv=none; b=SSswiBdNqhzYYcE/BnWBYyrmmxCFDjUV8w+ZCMGzS3Xyl+3RNLW47B1SAm/oGzddHWW66+6uIjF8kIlOaxQ4P1jHBhVpWfSYiBcGBqHgRjmFYRUPzDk51cnYHBNuaUOLDAYzaAfMX2uCjwWhl3XjSKRXyg6LcXtHsbXOZuXC9G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746109794; c=relaxed/simple;
	bh=1RljVM+irN6fEdva9XDCAmBVMKG7OcnBWMRoAgLPJiU=;
	h=To:Subject:From:Message-Id:Date; b=bmMjNNDUvaNjjV/Ww9BV8+tCoZk6rzQuci8iRljz6N5vKPwg3dpWNa+F1AJ79wQ6ndkeRtAK06gTUH5GpgBFq8KxxFTTiztYE3Rme0pBqXssdywOpQNX3J2rpYC0zp4VzOlFAbfN4ILvyOQGngLeGaJlrn3JFrGXRFQxbrSHGtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjOg0yVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjOg0yVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E817C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746109793;
	bh=1RljVM+irN6fEdva9XDCAmBVMKG7OcnBWMRoAgLPJiU=;
	h=To:Subject:From:Date:From;
	b=qjOg0yVuV2yySmd080Z7Qq/tJXkexDKCHglH5/8yXgRtcj5us52KIGk7J7ozYw3N6
	 ksu4/GhJ+XHEPeGP5KFz6By44MxKOPD/w3InML8xJ8bZX/ETbHreS3jti5GCe6iOpG
	 phrLm1rr/ICIzccN9WWGwx3aqcwnTMoTZ7emV+JDMqjIlwWTnc1RIw13pVqpbOe5nH
	 28EMTqkGIhD2xjeQPO60v/ZLC8fcWc2UHNYPDeWQSFmoGhhhulY6OrlvQPFXSD6JDC
	 gNqIXw5s3EaZe492hVdLlYulThn2tr2fy0KaU0K9ow7kL13UXCdQQEfg9ADueBJyEx
	 ug4mwIskOdDyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E319C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610979357.20863.11290061423876512784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae24d085987b9105fc1e247c665f869d7296b80b8c2f61868a910ddc51e608a
Date: Thu, 01 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746109793
