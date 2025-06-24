Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFE2251793
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750798794; cv=none; b=s8byEow4aY1BQp72gRoRUFO8TBCVO/aSyAU0agC3sBdenHqQ9rRtrHtiDI6WDCYVui4touJS8zQRvsuduk8dV1LINLc4eQe31lvyKckwV18yK1Oz6i988b5hd/yhrLXGIbzbJwwR/oEMZbHPi5RUWo9vs7RZqNmMbDve4cNmMRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750798794; c=relaxed/simple;
	bh=8YXtqg99jLuZBX4dkRX9TQYgiZf7uGbBjD+3IYmIjSk=;
	h=To:Subject:From:Message-Id:Date; b=XBuv0QhtW7biqtcuYf4d0nGoR4OPAeFpT6Jes2QCQ4zxxFPFM4XIXjt54Dx7heNeKUTZzC6RW9vlfOef8l7sw+RUpNzao1ZmKA+0gNeY0clji99CHOxvilWO1eNOvd50g4NjEHb1U+hOgUGIpQoMvDPjgUCctDJaaeaH7n+TUEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnbXBDTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnbXBDTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB8C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750798793;
	bh=8YXtqg99jLuZBX4dkRX9TQYgiZf7uGbBjD+3IYmIjSk=;
	h=To:Subject:From:Date:From;
	b=VnbXBDTu6B1PT0lg93BIeJqtOJdKfQ6vInN/se0rodiuUZrK+/1fWeVLScbGRTo5d
	 z+ry7m8W7Al+aDSCi+fmcny8F7F34HSi5dYmR0lWkPUPijoaWNIlm48fiPwaDo7adW
	 JrtGHcTn4QUcRrxYvSHz1G/fkLbZAvWDVW5cPVq4hXK9HtezqS92PkVtDvJNJJH9u+
	 BQs000+aHHCvxaJGN108Xi4RpkN9/mR7ma41pS8os7Ugh/OB65IpBQie/HiKlXYTGs
	 goloVCKxITl9RAzy+HSUOaRHYiYLAGyJXuY1y1T5uN3fuyj7TF/7c8jFUwrtjnoKp8
	 R6GS+0PaKpiLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A4C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079879358.1167.11037803255821557067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345ba0b602ab1f23eff17aff9caf87918c93951952001c7077043a83db61d3f3
Date: Tue, 24 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750798793
