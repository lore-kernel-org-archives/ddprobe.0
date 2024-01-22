Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF82956B77
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705941497; cv=none; b=KGvuXn1Pwt9IxLVyEsjLo2EAd3n+YTsKiOmZpQ640tclBWGVRlr9nys/R85Q/msB1M6GpnqAHugd/l0rafgDolWexEckjG5P/rVrGACpwBPwYIQKisGUz1b/bUaEdjrwVCHAhl/xdwN4hCbL/Y5RQt4IO3aZk70lnMZJ6iCm2bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705941497; c=relaxed/simple;
	bh=BC+L94KIU80OwcINiAqyJXYYnbn1DHGrWvPXyPATpds=;
	h=To:Subject:From:Message-Id:Date; b=hNnpF9ZcJz/IomlS8BEwAUkryf5h8KwMctI7dzvic8MysMVoxlICZNQhaX7ocvbrPBoqtvBnsRIqjjBN/8wNYRRbuTJJ/FEzsj6SzfRH6WQpO2nQkTYY6pa1i3Nq8eeP6XIZyyb76jCA6kP4oAQtoE3ti/pnBR4S/wIEtz8WUwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaskV6vf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaskV6vf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6E2C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705941496;
	bh=BC+L94KIU80OwcINiAqyJXYYnbn1DHGrWvPXyPATpds=;
	h=To:Subject:From:Date:From;
	b=IaskV6vfmL5uQnim3VnTLetwNCQzTa2FWiRUgfYk2glXhXIbIgK36Bn2s3O/iGFip
	 8Il31MskDC5ou9cC8uLPDcOcMtrLzoJuNFwKoJLI7G9m8e8h5anzGy1B3YdSG1KzCO
	 1Dhea8Y6I8sVwTpc27CzM2vfYzOYDx7XWrieNduSiPu+C3nOaoPMzlXwTzg1rkeuTO
	 QZHp/MNHgHfw7ql4HCOZkWcor+/TjbmaFeSsSsFS3KDx3IQHMKzp0NTByuH8Awcffu
	 WxOIUbqE4zmgf9En33Z5slxDCcXccxNp2wEwEJO/x+GiHf2lOX3ThQq3WEjfQj418g
	 fbVRzWPCGXYtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE4CC47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170594149638.11681.11543178352436165530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9add8a4ef99a3523e6396922645799b2ebc2904d2eae98f1f2bd0ff239b5cc2
Date: Mon, 22 Jan 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705941496
