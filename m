Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DCBF1547EE
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761361194; cv=none; b=n/LVfRY+BoXO9u43XPp2ghN3SuOgpEn/yCZmUkyRrTULQaSoCmiqofYV0nV5Na7A0RnBuOxq3zuBYrqEXXJwC0y+JfJK8+AEzu3bv9WaQVOKgWkWdO7VwybRxggDBU/xX6OuLCrFSDSQwSZvJic9IS9VnXpLmRz8mq+3F65wh7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761361194; c=relaxed/simple;
	bh=nCr3EmwJqa3aElv4zt8ecPq6kGunBr7iOQ1hp2V+zfk=;
	h=To:Subject:From:Message-Id:Date; b=BAnX3zO5uN8zwfOEh7Tsn9bt6RWX0RWjBykuXe00XMie9PnQsTA/9YVAzC+i5Nw3W1GkETZG52BEOwDnoC/adLlDVVWVcF4fOEcYFpXEzbR2gGpvcBEHgC0GT1JXdqbyE/QUly167S8r7Dx3UR5MsLYv2Mrb6d9GKESr+5GESsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLm3oZnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLm3oZnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F59C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761361193;
	bh=nCr3EmwJqa3aElv4zt8ecPq6kGunBr7iOQ1hp2V+zfk=;
	h=To:Subject:From:Date:From;
	b=KLm3oZnJpiP0l+mSef5WOXfjlG0tyimGoFstoB7VDrxSlEQRQGKJey1SfUndj3MZM
	 Sctdhcb7H5B6RExSqv29UE4EZPlqwcjImOyGbKPqrgSqEz9FsGRzDMcdMT16BfabJO
	 J8OOxdT3Ig0yDtiYzKhNJibkVpUhuZtLCe9xWokKij2YkH5MLCb1BcN1K4vtuX1nUQ
	 rRa9k68i6WTB54s21k1ZLYpQNEmZNCQmyCUsa/hGQCJHBBz9rpH5Es1xE/E2+gRQml
	 ZdOBTpIn0Zc3+sBVJ4UeqQeK9UcispZSHkB01UCdbuDExGOD4fgV1emw3C0gh4OhtT
	 PfMzwyZEo27ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978F9CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136119358.30896.3770487623255408564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64bee9a9976e3e6196984f2b1e8d79fb5535ab263525785d6e355264897f2029
Date: Sat, 25 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761361193
