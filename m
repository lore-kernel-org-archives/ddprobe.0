Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DC5199947
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744969194; cv=none; b=u64rAijXDbGSBHxHyfSG/f+i4/lfXY1pp1bF63kFQqpTcaK9qnuOfBj67idz4IA574ndmxYx8Qjiv3fFheOlo5AsYG3KEXlzxe28+Z0b4uh1DMDFM33EafDj7KaUQSoY8T+w4S+IItqWur2FHDhj/+wvYkHzghqHlU+TEb7fwTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744969194; c=relaxed/simple;
	bh=i1FxlyoNv19sq+VmdlP/fim7L0fi/wKwVH5a4YeABbA=;
	h=To:Subject:From:Message-Id:Date; b=u7gtUT/c0FONDe6MCWnhdMIdzIgQPSj6Ps+e6veypHeKU5DHVPGS2qNMsAc7RvjcrqwKhYa+aTQEefyLQBaFlgp1mGhpdU2oc+OFLC8kLipmaqxPC7PB6Cvr0eFEvMr3wWyygWw9qHD+emfviMhu18nmPAwcNxioKaEdD9qjSjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4T0LWRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4T0LWRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8654C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744969193;
	bh=i1FxlyoNv19sq+VmdlP/fim7L0fi/wKwVH5a4YeABbA=;
	h=To:Subject:From:Date:From;
	b=b4T0LWRwuEwFQTdOZw7Mmu6+gZlNZ+YEaTbXv1+/yGmlnC4ezel21NECLWOb7v9S9
	 6Cf3LvqLZiS3Hl/pHDxhzNtkO/0i1JlFEmfJqu+LAS1Sh2y936QrlXoiQBuKKsNs/P
	 EI0rrbBgVo16cK3Q/xcn8mwwuYudZE3dcxyp/XX9tpYqt/Skb5WHePLE4FDHmUH77G
	 kyWNJDp8QCLohqHj0nXj51RnVtSJ1PuKUFhgZviRqg1E7P07pnpaMF6Cm044N6N082
	 oWly59DFcRUdNcKABxHXC0l509QhYedicFP64HG+Lw718XotXF9HGc/rzspCTCvTU3
	 bEtKpEdeEdlKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90734C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496919358.6211.6227087888874038431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfc1c9bf0cef8d1928290b2c9cc2b2b4200a442eae3adc948fb66b1835859de
Date: Fri, 18 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744969193
