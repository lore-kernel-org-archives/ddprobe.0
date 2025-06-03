Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3947B23371F
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748965794; cv=none; b=C5vAlldCdyeEzUKLjOsHTPS0PWJo9AfM+WcccewuqhBaDYHtwdrVkJwQd1n3BxDpcqBpJIa+q94RAjSYKdgRrCdaFnCQKth8UC/N1ZGvxp81+1e7G4W6uZqeJW5JOT03yzlQpcI7GPUkdMaa7ElvJz+1hwrIBPj1JzNu+Ij9jY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748965794; c=relaxed/simple;
	bh=XAf4artzLVNDiUZYtpd2m0tqwuoEZGbwf3hwnZrLy+Y=;
	h=To:Subject:From:Message-Id:Date; b=eMzeLfCvruojeCyG0Va4njD8SCWM/Tiw90tbEcs8IyH5Jx693CJpQPO5SK3bflNCBFheOICeH4nX2iDytrrb2lpr85k/SdDZQdsIYDbqCnYHNlD+S6pqcYsP4PtSmvq0keLfPQWGsdzvawTed9uep/QFimZRduL+9sWpRh+VjYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVqtPTQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVqtPTQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F7DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748965793;
	bh=XAf4artzLVNDiUZYtpd2m0tqwuoEZGbwf3hwnZrLy+Y=;
	h=To:Subject:From:Date:From;
	b=gVqtPTQejp1MeeJguCCzToc87rLYVWZtR9g55Vs4sKen7OYE/WayhTRbg3mIrFXHq
	 OUJqz4OINQpjjuoHD9auKiSVFAVyobaYLXlzEJu9Rs4WSOORYMb2LEzcYd/xvRqHRW
	 Aa4/6nemyVWJL7m7qMFQ6c4Y6F28Dhdw9TgRN9/MV/TbaUninXjHKjqUMEITopykao
	 UlZvo4CFSYLyDuMRKmzlGx+i0kpM1YIHhM3XYjkrvBVYGD2Zqt4zRV8hmi53yADA2R
	 GhpP97USYUQhqdef/cJdbexPUmRCYquQLDZFuRMBBxLnqYAHyYAKuTfalfipFatmbM
	 thDMch1553OWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95339C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896579360.24996.12901262288578089449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc5b22826e4d3fc2d6b245bdeddbcbb28c54251205e6dbf850ff7d6fddbe2d5
Date: Tue, 03 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748965793
