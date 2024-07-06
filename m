Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6674E23BE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720270523; cv=none; b=QAc4/udUu29vRnTuqZx4NiXNqxM4BRSNpRRFOHUMD/9vxVkybydOi0t1lIUTduUkG5BU7Fw9MSnpF45+KS66aRtLs6+YfHK6Lc/7GYuGem0TFiPKmKpTZIT0+ajj5yCa5VUpW1aVEaYcDgfrQwfFnyB3BV0rmHvGZUPUFzSTCII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720270523; c=relaxed/simple;
	bh=pmuewG/uy5XtisLUMFGaskliNDdF3/lqzL5IlmUcvKg=;
	h=To:Subject:From:Message-Id:Date; b=M6WRzBFtruo4CWRl/laYSVGdjy1b+J1YTeSi9DWoTg3t09I7Qf6x8vHflzfLqtBD2vxsZ6s2E2gHlsaBDqq6QSDb/0I+1iik6S2IsIcNneaQj81WXX45WQSbWRGs/Gl/2gC4Sm577o7/G08Sn7YB+u/MGoTtp6uDYs9+/N+8NOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1QPxuMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1QPxuMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE267C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720270522;
	bh=pmuewG/uy5XtisLUMFGaskliNDdF3/lqzL5IlmUcvKg=;
	h=To:Subject:From:Date:From;
	b=f1QPxuMWCLBCleqSW2/fDb6B1/TMY+KyZzt004o269G/Ti7kSVaio/wwbYIqcA3/D
	 zbgeKxMdv3lmQC++KjTqiIVG+od6u08lRwNpqTzD2bDvG3PMyxf5a3jQpzUw5Pi5+K
	 BHBbqazPs8tM+joRsoGnHJvC/6rI+3LWgMxDOsFN50gEtVdOEbfwoL8TIYuCUYY3AS
	 5GNwPsmWRnKOa8TXu9h8gpLm482o0Givn+W/laFrTE8mCgUSdai7OB1jBdGAQJZOIg
	 6jC9/og7hKE92GRJbi6mzCaJ0f4IyR3yLVOfIgS2+1wq+yhHPkrQBOOQQ5ju5M+yOU
	 84tw255d7DzMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A75C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027052277.27653.10389068899276787569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a4473ee76d4c882770c4dd80354847b2f9396c4ac9d72e25909b54fc349843a
Date: Sat, 06 Jul 2024 12:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720270522
