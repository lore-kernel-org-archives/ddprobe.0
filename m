Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B172D47F1
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789222834; cv=none; b=J+780KLadHnvoMjrRCX8rp4f0FPkKzGNNlBXa4N0LTNTHzoDDlw26hqfk+pKCAY7Yd5JMOvekuRJgTXSh6U5PHiuEGTWMluANgLZ3iQBpGE35CdK1y7lBqU6nzdjL/5if/rmJfF6HRQcByaMZMykzwkCrQ1xoxNcfp2ImYkodHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789222834; c=relaxed/simple;
	bh=DjC2abxxPuXGSrmcqyY1dofTH8e+44Uk+/WfMxt//a0=;
	h=To:Subject:From:Message-Id:Date; b=Ns31/pTtUcsGfXAnnF8DLGVDAiI7kHRt6lSK1qbZyyTCRi1yw2kTOnGOIj2I4iuIv24DwDR4oRTgCdUSuBSneZN5pI6X6YWJF4OJN3D4miTGSgjsvTjppgn3nBg/tdIYUNRy1h86ni/GIbTn8Z2UO9iBQnYHow4OTJNoS0q6XMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5q9qnMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5q9qnMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABADC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789222833;
	bh=DjC2abxxPuXGSrmcqyY1dofTH8e+44Uk+/WfMxt//a0=;
	h=To:Subject:From:Date:From;
	b=C5q9qnMs/7uZ8xSZxA6Xr8HQUwFi3JVN1GGtZwmBnmy/Mv0sFQSctuQf+U6ce39lV
	 cxhCMtNQsxkAlAqwBxf2qZHECzoxCac+cH+l3I5UGlBO6g72RrSs/e65yLqbSIeTAS
	 zpPRGpEqezP7xQduNKwbE3KrejdlALfzpU2VBI9cm2dwVFI9C/NPX/mDipb9X5k443
	 LReEPINM5aNKOER5H94vwwNjhAXsaXtum6kbBysU2Mau9FfSsazpCZD+07c6p8Qbfq
	 QJ56UQ9g86g9Qu6hzh9SIgw0qng7BN9MuQPjho5m5pqWqCGL7xi9DE+n3oxOEvJFAs
	 HchaLQnY7ReLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95BAC88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922283368.8547.12901051214764316792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716ae04c3652b707fa6a9eba7b890c67337116a2d9a23751ab8c109c7885a779
Date: Sat, 12 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789222833
