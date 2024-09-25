Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F92F1D5AD6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727293554; cv=none; b=aVKqbA5u1oCEz2ncxEx7nOlxTev/OdM3ofQP01SPvWNH4nRI+VSXnOCWYZ27ebvTJ3dQwSe+l77Eaqc3XwFdLJLYApRvd8NTN/ZnnDr4fhY07M5a4BAHrDKSaAYhZMqqkNdTZO2lqg3n/Uum0inSz1U2OI+L9QNcymspOC6N7yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727293554; c=relaxed/simple;
	bh=MBrBB/HBxx1y0P3bU0QuqyAFE6EndSGagsJPjSFffNE=;
	h=To:Subject:From:Message-Id:Date; b=HeNbPFBKhFARGZRvqLIpkRkiZbWB5OiXHv5yrNES52S3FpQMKFVlcuqIr97G01+Dh51+LmFifi3y5b7ltHz9+rnw97emQJ8IpLmzy36CUxLw08mP9ztwWf8fEskP8yx2u1O4saKSiVnohjaHYMeg0jXeBHvyZgHtn3JQrUzozA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tra5iAtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tra5iAtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3459C4CEC9
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727293553;
	bh=MBrBB/HBxx1y0P3bU0QuqyAFE6EndSGagsJPjSFffNE=;
	h=To:Subject:From:Date:From;
	b=tra5iAtQtMVI4ObPiFkPY58kd1lcElZyIpIOJ+tTjgKCMXPub5cqIS6b1TL0dVP25
	 Xs00rWA3TJkgMXrjw/qxq6dLrbSgv+6aVX0cn7Yny66t8n7ZjW4ryUIHQJ1eKT3QBr
	 n0SYoAHEsl4LHouX4zBaPErZkWj1ehxDsaAQp3pm0Zwz5BqgLxTrIqXFNINwwZxygZ
	 UAIV/BIA3G9gyumXITjnBkbzSjJXo7jpRtQAL3KHszDvDxyCJv/MbPD58yU7M5Mb7Y
	 rHQBDwqDf1n9xOWLuw4p8UUNzPnoHLAhCy00FRJ/AZi4zGPxnKbv/o9joxE44WTa5A
	 jsm9VnDzuwsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930E0CCF9ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729355359.28914.5952883568980688131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 560cf564d501dd707b432b2ee894ae93b5b93bdca6e0fdefea8f486eab381ef4
Date: Wed, 25 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727293553
