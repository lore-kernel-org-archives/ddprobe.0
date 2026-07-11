Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5F338F94C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783762714; cv=none; b=jd/qI717EN2bZnhKjkOoPjXCSATizkiGMae5Jv/jNV0vJMqCUVvFeAvnUDiTiKEjyxVygSA45xWUtfO7tngZI3erEDmI964M8pmmr+aI9K9vnVmusYbUCyPejTGnm8Y1JVxhArUwG5dHyxx2DHhc4/MvR5RKXhPbUNRKD/WUZn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783762714; c=relaxed/simple;
	bh=8Z32tfRs5sbNsYOcsG2I8wsPUKAi8+lQhXJ09D944JA=;
	h=To:Subject:From:Message-Id:Date; b=gHfaoOdWNqgO49UbvqP3F1ZqQ7lQqTOyke1/ZA2TpOV/qrlJIFTSIW/sszC1s3YBTN8pDIiBEoj8Psj4HaCj/xXuQhBThDXBPPgCEqDjYhtNO/IqEPkjvYm6YU8/4jJ7z9ukEuBZohCjYMI39eXzy3lKcwFshauCrUUEIdyTRS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhz6pAHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhz6pAHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5223C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783762713;
	bh=8Z32tfRs5sbNsYOcsG2I8wsPUKAi8+lQhXJ09D944JA=;
	h=To:Subject:From:Date:From;
	b=nhz6pAHZ/NnS05aNEzrUOfzQNPm68YrTGGm+vFAPVNtunlSN0NTO207NzMthpE8GO
	 dIqXBvvEvI+5+yA6GiFZGP5nHRHqSka2eM98DHmgl1sDvV0wOR9+vTIhVa4yTs/5C5
	 CfOCj59ZegTxVAT9Y0cNsgRmeAuk0fbpkHgFmqHqalIns8E9hhcdiJRoXjlUJiQlIT
	 igfrFVyTAPSunAEYch71REoG0qsD7lJdBzFaNpGMSHr2/s3bKbWz7kx+LZmBSrIgxe
	 psNlSIFeLazMZ1UmayHqgcmuPrqe4jpDCWfwuHSlFy0T0equ5RKQSNYcoNRvsGYYMb
	 i+6Uhx2k+jQpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD319C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178376271367.8992.7865950886705499764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b688af0821948badb2b7018a199ac7d50b094f4dc98ad2cdec81c6d190d067
Date: Sat, 11 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783762713
