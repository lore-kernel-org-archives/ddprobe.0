Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F7B155C82
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744973994; cv=none; b=Xzl7AtZx+1h3Gi4q0CFkArSAt2bbEW9CxEcTSUoQf1TStN+2EoJmA9KQrZQszROPvOalzDnWW8fisHW0/+gORQw0091NPpyiBJzCs/V2Gv4CvRzlwsBgEtIKv3EHM/hw7J+NqvTgkVwwjwQNDgoVq3unFFaESJOz//COQ21a7z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744973994; c=relaxed/simple;
	bh=C0oAIXj+7qzM4AfpIjUPBebmzN0/rFIZGNy/ERbcdZ4=;
	h=To:Subject:From:Message-Id:Date; b=XV4Q46wCvZz7pK/7OpJ9fzKKxjQiZGaVJAEuik+lIQOKV2kvAu+nOrjLRX543ziKiGj83INuSmr/ZcXr8VZLTGnTS8wRfCC/c3+IpBz2SUf69xUAN7aSZBw7SpRX1RIFD2RiGS6Y1KoIqqQtXP7HeC7Cu2OoJXPiB9bqi4JqBFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mz01liMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mz01liMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C90C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744973993;
	bh=C0oAIXj+7qzM4AfpIjUPBebmzN0/rFIZGNy/ERbcdZ4=;
	h=To:Subject:From:Date:From;
	b=Mz01liMe9Ue6yFgd/3mj+1K43crD6E9RxvcGwZ7XUGEFcuKzNKqF/5AIh87pye3oq
	 QSwLuRrAs4CLBw9CbSSKrJi8nbOOtamUcDni2BDFY6kz9T5Rl2XALYa3PoABjDHxqw
	 /efloKZUJ8yHZ7WfimIz7OyI8gtYSVkEkzIicOURUlluWg28OpdScojlW0Ee6OLzJM
	 kxf0uqVMO1qhgSp34hnJRqqY3nG0F2+8hI8XtXQzH9lYGCEtbScWXY/HgcqSTTsZAX
	 QzElumccVMVx+PZLs2WnvKXrLG09w5z9m7BisDo+IaJP8NGSEhO3B1NUaOMS668YCZ
	 IFtzzSltworEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9185AC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497399358.22588.2162726987332065715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac5ef48c2bf70a1331cdd8ff14c004071b8a6f97d30f0ca2afcf3e03e8628b4
Date: Fri, 18 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744973993
