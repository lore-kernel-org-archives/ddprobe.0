Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B9F2D73A1
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778456434; cv=none; b=EQ7rlOEkVP4y3Y5deDrWN4Y083iKg9FbAlLM1RSTpLfpvLtqkTOqLWrfZNKM7hhfZ3vTMj2ltvcwJ/Rhq901vJxqi3q/7QvykVI0Snmt0jRiD53MYoq2Xc3ayCQRbv4Xty40neIsZp/L0nDzxJaNbUGKD5EgCfc9tHy8ORreMaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778456434; c=relaxed/simple;
	bh=CR9XV1r68NfFZyOoihMteDRxCcyWFQqOoKilpRANa28=;
	h=To:Subject:From:Message-Id:Date; b=Ae25dxQFZIwwK6Yi+6CA+ee/pH5pp89zD6gC/pATibaZ7yE2YAN89qz3Dofg+IdKrAkAx8dSggNWRUERMNLeOv8ssOlx8Ix/v1s1i51WlipZGu/9ervnn7ytFeL+ZOlvHDKDgb64QwSTC/SqffwqKOITxx8lesYLsd/H/w9P85U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZfiBt+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZfiBt+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDB0C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778456433;
	bh=CR9XV1r68NfFZyOoihMteDRxCcyWFQqOoKilpRANa28=;
	h=To:Subject:From:Date:From;
	b=QZfiBt+6BEtQGx+JlK+SMZzH/JLSIGNSYBvJzOopE77YX1G++rVQ7TcoAz1H4SAln
	 UZ4mmg1CHrCtYPJpxt4ZCIlRKENo5SQsdDaz20J6i9umm6h2uX5x4QSBUXlUfT8MoD
	 6LnSALQdydEDbt949X6ko22uDmGlZ6Ncgx9blu9XUws+frGgesW54WMY7pLFy1dPqz
	 4RzbG5dT7AXUF0dWoMSg6Fq6bAlnctWb92U+y8rDNHM0BOU07GDz/3pe3zEULkCw3t
	 ikg8DDRUosIUtI8OwJiOWNik6BXb/L12w1AbBAWI4BUWsppXRk6m6mumi6WgBAPD+8
	 iUCQnPX4b5m6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB466CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845643369.23651.14916724664627817885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ee74c18f25cba5dafe546e2273ed4d4c0678a8ff020b3a07aa87f9386d3aca
Date: Sun, 10 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778456433
