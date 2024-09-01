Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3110F1F959
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725168354; cv=none; b=N2wJVgJ6r7bXh1K8r4psQ2ShYp/usiLzZFj5itwhp4gWJtR1f0bSPIkoKDcT20xwp16NZa7nDG63K5DnzXyRPPb88HwtU9Wys4TTxbMYO29JvbQLcU9Zg9tL00FcOXY5SX7/uS5YGCsVxNR9IWAdLiHes+aViR8rO0OHApoQB30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725168354; c=relaxed/simple;
	bh=VjZVXdRsOwHCCSvK/Rp1P4Hbv/kUBjrMrk0zkBFJXh0=;
	h=To:Subject:From:Message-Id:Date; b=AHjdFGWl26MR8m+aRXZgf9FzPRJwcdtzGv+dBB7zq2PyxlGk+Jpa441E0NVRtPnhWdV70OgjJcZpTXwuXqbsyGNVPPMYavk24xVHS/w2wHMPhvSZ33OofkFQw5V4nc3Kl7n6wM76ni/EL/tXyojFn3bVYKiYSQA7qADDaFWbqmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwU1AuVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwU1AuVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC675C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725168353;
	bh=VjZVXdRsOwHCCSvK/Rp1P4Hbv/kUBjrMrk0zkBFJXh0=;
	h=To:Subject:From:Date:From;
	b=uwU1AuVnz/BXY/Aqnnkb2uHoUJbJI/3sVo9NRyDkQMagZFPMm440XNRppaA1nGOEY
	 oCIo2goFOHBx/1Ia7VXL+zLilmatpi7bnLS4KC0pKHVeClSEWKeaOgv2sN+ccPPh97
	 fFKMKEjz9R7GIvwUdRpj+a7m/8apt3Db3rmzzU2EtAuY1N92E/UaNrzDStUay5tRMl
	 Jb9jA/hHjdVslcNMY/XwUSxmJxnrePwc1m4ShnHtX0HrmY0bXVSzCUz9AFT4jAQco9
	 aL7ra5m/V8wDaFjrPsFqzF4DGRTxHZjyE3nVReEDGbKw3/sOK1bsSE10LgkwiGHwW8
	 bVWYGU5QcnVFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994C8CA101E
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172516835361.18264.3858029820427143747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84867f680271c047ade3e6021654519d28529f62d8e13c377b449278b42d858
Date: Sun, 01 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725168353
