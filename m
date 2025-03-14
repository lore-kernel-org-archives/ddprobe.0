Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F7584D02
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 03:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741922934; cv=none; b=SMuojrB+m97E6mYLx8d9NDWphjVjVQj64WmwaKxQBrKDoXeMjYpN9TqIk/M6C69glKF5a+KMocJTewyjAy5o4Md2enYCLPX+I8yKq/kWYqzTfvU5dzbldHV0CF+1UGgxIuPvDepymGT0yHP3kYkW1xSJIlsiKy2wyFOqODHM3Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741922934; c=relaxed/simple;
	bh=ZU90ToDAzd5vj1a0yc+IQ4aGjuixWlGWe1skZSy89Hw=;
	h=To:Subject:From:Message-Id:Date; b=MhC5WqzgL6fB8KalpKpLiH2HV1/d9wY+ymwKigqT/UBSnB+V/cJxa9UHQ7TRmxFeNoQuwc52HfL6UDZ2bAMEUYI8tzx1AD5Pl1hgvxWIWCZh/j0AcD6a2svVs9MEuyH/Tk533W2B5NLzu2kRPTZNoCSBjcmTkb+b731bmA644Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpaBnA2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpaBnA2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F5DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 03:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741922933;
	bh=ZU90ToDAzd5vj1a0yc+IQ4aGjuixWlGWe1skZSy89Hw=;
	h=To:Subject:From:Date:From;
	b=cpaBnA2TO4RNxgpF5+UNRjLBCvWYEZ3fKXdgHgUEQ10LzQP8e6DZJ6GouQO1kyTDV
	 Ko6Lxhu8EFPw0CA4j7aqXJNYnKEretUBdedRIKszt3FwmhI7qYoRR63PU1pDFHSLVN
	 /h5VSB26HMYDR2FkjY33iJ/4bmAoINk7K/elgxj8/5AxKZTDR/ChNURlvDLGU0IJtp
	 nGaoYVA7CpIWDcjxOwXrUfHnlfqlKpIu//D0rYXVijIwSpMGTVZtVmuZN3GQ05TO++
	 Xu+qopbuzswCPLBdPRuaqtVAQrFwA4bLOHUW6m2FZU76R02UULP1sVCqYo9oyv3mIy
	 Ni+DM7FbS0SYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE71C282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 03:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174192293360.7016.10923376342714394855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6912efa66b61de1cd16c44c09a846dc74ea01a311609aa81993cbe0a7ed1d2b
Date: Fri, 14 Mar 2025 03:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741922933
