Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4164743AB7
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755430194; cv=none; b=lTP0d56VsiOTwZnge9QTp/eYWnwQjNlT/GzW8gD8g98b3qBvlegpmcwl1fT0jfP9m+AcHtwbzleFdmxu9sM9jZvmMXpIzqiqlVwH+h1CsrrAFf4RrHH+uDnDcUWrcrLSioTY2hoKIplvun3LbeimwX7B2T7mfUV/OeVbYu3/DWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755430194; c=relaxed/simple;
	bh=88KjW7cl14zCWQRa9A8KYzgirhUkisLt7LxgkJ/f+TY=;
	h=To:Subject:From:Message-Id:Date; b=payNkejN+p+lGgP+vZoLBzsGKaZ4IbDjU5QBt88PpHVfuE1L24Atuk95m0WPijsRPgRl8iJAHY1hmKGpA5dOYNd3iMnfy9NPmYu8z+wFmHB9bl6CGN17apmmLO3G9+OYILzcPjRF5mVb5mXjLrHng7hU1tfEmMEInRZ66klkPI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk+Pyb7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk+Pyb7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C40C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755430193;
	bh=88KjW7cl14zCWQRa9A8KYzgirhUkisLt7LxgkJ/f+TY=;
	h=To:Subject:From:Date:From;
	b=Yk+Pyb7t61aXKSawUuNehz5DZHgqwChLpKma+l/wEi4seFQsP1zT2Ej1yMtXo8o7O
	 LpebodtFGdtV5RYAhAP5UMLMkafEKNakE1katWIy1U9OOdIWGv4G7pgoBYCEyyWTPH
	 jSr8YBLbxRTP/E1xFgYHslATHzzPujBEZShyjrBxrCtcv3S+SOOLkhttScxU0eevnG
	 NJFwhO1d6mcMaMQEu8Lnpq6Ucia5YXqTzhJqrrw3kd3lTerdPHypi1Rpi6b5AZ5zVu
	 bGTnMJ+meUhc3lCO8o7FmdX4fN14yAUVYbouis7X5df5cN1e0DuyV8XrR915ym7Kpz
	 kQevj04x4qQJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92899CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543019357.25016.2252650211039949724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a8af1993ebe92292eb47f4ea38f2947921ce69030d22dae1ab9485f6bebece
Date: Sun, 17 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755430193
