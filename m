Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421E7296158
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753807795; cv=none; b=D2sEWfsjroajhrbIPZ51DRrRQ0O9FMddDOH6ucVOpLPU370GsTpgCijOYV0BJ81vf+5PhZThClQo0oI5XFLI3yOPFJc3qdlEs7nW+0gk2mdjUbqUnjiZKC/wa0mj198JBra1gQ+8GMRDf/9nnXI7uozfFKy18suPf6veuHsjQSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753807795; c=relaxed/simple;
	bh=EKXQfnEC5lqZl4IbnEhkNvrIlIVpW1yMZKoRTm5tuJ8=;
	h=To:Subject:From:Message-Id:Date; b=hzKGdMkRYO+Yz90qFCUYcmeFrqcGS04h5+OjXRf374NsOYADDjH3zg2bi2i1IS206RcyfSB3kW39Yt4fZa8EHV/tyH+FyViLPrkmbIciRuPi91lJbpzVtTeAE1SuW2sdIVxG2inQ8nh5fOmijxQ6wg9TMOrJjrJDy9Sg95YF0OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rONIhyK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rONIhyK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753807793;
	bh=EKXQfnEC5lqZl4IbnEhkNvrIlIVpW1yMZKoRTm5tuJ8=;
	h=To:Subject:From:Date:From;
	b=rONIhyK/J4oJ1kN9jDGA6zRo19j13VkGQOE8nmEnMYJa7suDaCGFTpHs2/UiGCqbg
	 v46Cf1QQeF7k+5FojAKp1+PJW+pGHiV1A/tOWGIbk2NBLFJIdJkQ1qJjSafoqtADUD
	 08mdnZVX/VLqw//6RDWAsbHeBx6atQMIPvS5GcvxsIMMAAcoWq3dYWtNwGh8kHwdud
	 qcHIg/WoaJbERRCXW761Y9OZyb1BIzS2qZkIOAzqggTtkeG/st8TUQvWaVZacKZ71b
	 cC2Ydt1aHaJBlrVqj37Q1q3dDaq71KsXJbPz2nMzXa5zHF7ygOaSl8j9Ou/qybgRbR
	 06+xGIZPc85Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A9C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380779358.6034.4450099930841112738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c0423c57d2ab31a0536eb11568741708779cd978fbde7f282885d5769cff6a
Date: Tue, 29 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753807793
