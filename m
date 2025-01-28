Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6F515ADB4
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738066554; cv=none; b=FnTMuKzw4LQStmRdj/R6OrQn3NlfBQjUKYfIeE6twiov4Hel1KKo2i4IaGLpmdFZaCRGkqVOuCiKMEdsPzgXR3MITGTaXlgev7YY9sPjAhqypfy5Q5JpGIybonk4lXzoCYnQ+2AMnJfuoBV1xXfIoj9qRxDQQCN2GqII6ngPbeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738066554; c=relaxed/simple;
	bh=ceASYrz53PYW1oOrF5W8FnWikdDx7v1vRvGRscetFr8=;
	h=To:Subject:From:Message-Id:Date; b=VUErkYZyrGIZ01ikTB5UygX9LIMfopTk+R6krBWkwuszFAU5uHfbOstIcpgBv19qjALuRs4zo5/rCysdeGFF1tak4G5eweBXWB0vhUtsMfR1A+CjKo59ZksZwhRYTWCfU81kSPXqhGTKW+zXJ4EYlUoCR/Zu/STK6UPJU5TfvDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hC54y7r0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hC54y7r0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF385C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738066553;
	bh=ceASYrz53PYW1oOrF5W8FnWikdDx7v1vRvGRscetFr8=;
	h=To:Subject:From:Date:From;
	b=hC54y7r0gqwvx2i1PqNaBSnaVAa08CYkmbU6E6QIXx/5w01i0k6fEu6QmXJvM485A
	 tXLx9o9rclAUoSpYXeyuZBohTBDyhsZrF3RgktGYSH9nrsKpzuOa9NB+ZLVC7SxE5T
	 Q+2PhA4ph0Ef/48p5T/QlDkhgKYHmDR62VhA75vVwMzM6t6G5yu6X/Dt3tD9zQ/Yl9
	 q61w0a3kKqouwYKhcrkVW/SvlOEyZ0dELdyq5N0lNHWWtoRI4TFx5U7AiNNQe+y6MY
	 FCoYYu+Ljrva/f8ZTIQtnjSqep0ZiVKq7wL9X/gW7hcYRNaBstErskJFzfgyy9NVYg
	 LN0MqMPDQwUNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A2BC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173806655360.22768.989123456613335165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a312756633ea8f0e2d918db9313c9ec44f03b2c409b0763fd6d3e3e0cd5b79
Date: Tue, 28 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738066553
