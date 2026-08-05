Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C133330644
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785908434; cv=none; b=udzsgxElXh7k33ISlyDzY4r7ILqKrXMTdaiGhO6o42z9EhMAsvbCVhGoO+6tTif1A4iK/x++kLPit8TJFzO741syH870sQlVPWFZhAL/Gjyb1svNTFaywVQALrOehsISDS4K0hUybPRn94KwPfLDKaCSL6+E/oZEBhnbkpALNBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785908434; c=relaxed/simple;
	bh=qI3DTErmHpbaQfvE+jsAz6M2lZK4/oKFdaudPcmdIfg=;
	h=To:Subject:From:Message-Id:Date; b=p+hVvIQL9lkh6K7BHFdGGLtzN2kEUWq/idlQhniRBHMNL1vv+s995n3vTZ3JzfBPMKe+Rw0nZIgRRPun7u5O7AgUgs/rxmLaLQBBstFqTt6Xg/fJba19NjO0vMbjWxwxuGu/VBvYg5cVYm4oKp7n4C3XbF/lmnKE24Cno7RkVdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5UK02yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5UK02yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD426C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785908433;
	bh=qI3DTErmHpbaQfvE+jsAz6M2lZK4/oKFdaudPcmdIfg=;
	h=To:Subject:From:Date:From;
	b=C5UK02ywxdM77h98ZXW/F7izifu9CXu+EwA+V+HMYC5BC8WItPNzckaNdIsw1Aptg
	 hA/6hb9Ch2Lf5xSYXDsEXQvsWK+EbzgKzl9x5H0jLjbFHjBSk3nNaMuBPNgcTbXOPf
	 2tmmgZWOSzYXuK7IwCZ11HSp6nPUsii3kX7UkthIUlLCTif7JleHDUv/MZ1w2XzVZv
	 1Bzn3Vewijal2wlDwRGD/8BTQySIOVCTSDpUHyLPrADzxGUxIux1g59kthddJ9ma+7
	 8S5BQtITg1SIreaCRot1MAKWjiztUzS831C1koY90GB9G03GjBhkNKQ6eXnTXEnXVd
	 tgmRZlxThBKQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7CEC55822
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590843368.25833.16604822740396959491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96f08787cf5f69657b13b2525b9d33441da14176fc79f965c15a3db19093a2e7
Date: Wed, 05 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785908433
