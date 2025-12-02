Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D9A272811
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764643974; cv=none; b=l++U+7rOip3uAy25ylPZkjU+lqgQOGBibWefwsDTrgwemqbRkS4iOTjUCY30ixJiVF7bo4+WF1Eqcck1rqt8rcisaDIq/P//LDkG2dMNT8Ve8av8VJux3zRRXpUMCZ4r8x6divyGKFDcrdqE96fZFaI9niCcXb4G7Ptxv5qHEDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764643974; c=relaxed/simple;
	bh=wdp4PWm8uOVFRk1A4olig4O4KfgQwCr1/RowIfbItBA=;
	h=To:Subject:From:Message-Id:Date; b=UrnrheKJU7WKtBUxxHQ/IDClT1RA/sxp/GVgQWsOTXbctL8t1N/1OiYgv7E8mxXqBceRejfgseMRis/vW7UlYtUwiXc5qhmSyu4nIwd0Qas8pF9wyhx6H6lQHjltZKjdaXk1ZScdgXZsqI3/X2FwpBMYflA+w1RpFMsTLjhjNDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJVNw6Mx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJVNw6Mx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E79C19421
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764643973;
	bh=wdp4PWm8uOVFRk1A4olig4O4KfgQwCr1/RowIfbItBA=;
	h=To:Subject:From:Date:From;
	b=UJVNw6MxXRzxrUyJjCrDYrynRflwxqQdte64Z4L83BJEDeJFQH16131wzKeYUQl0G
	 47h6vfwtsKvdFoLYjfXXTLgKZZuim5EGaVZ//D5iSJ9lHUtkNzzRzL+pq+wfOyXSsn
	 qmUOueP2Eoeo+KBnezsmnvcw2+RcmHGUHO/N5pjxYZLWgOQPYNObDxo0rBc9bz7aZi
	 MkspFef1rfXTuTLC9SzgEKYDSDSZKTHcK7PJ1ZCxJQZUYSCaGAL12A/QaVkDrtC1ih
	 o+FOYlppXhKyYKZawveAvcenkzFvzVknp+zDvT/RypE8NgpMPsb16C1xJ3XuuK76YD
	 cSlq8WjLKyraA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91581D116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464397358.9931.14161894255516642042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12fe260e3e06f8da860ce912ecf4e519bdc65ead58e390a13daeef2f1481d6c
Date: Tue, 02 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764643973
