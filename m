Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECD11AA3FF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722374754; cv=none; b=PIgDHl73QVliQnjVVEfJ4Zw/Wdg+KTb3cknVL078brkT2tnJfAJg/Dt4DMqWn3Wm3NGBXl8kMt+G9B18afEUEcsf93f+NCGYCa9+qAi8ZM7jpjgxthXBWtBCsanxCJ1klhEFpGLFV6ZbhqD9FngSmERovmWCLUOSfDBwTnbYvjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722374754; c=relaxed/simple;
	bh=N2hl0892YdJx5rgUxmK0t2ACNlq59A4Wn2+uM6Hk+1U=;
	h=To:Subject:From:Message-Id:Date; b=dF1MfaU8px44LDKDZlbqS6Chs00ZM1aGFd9amRNFpN9YGyMZ5AhmYye4iQsbTOF9SghoD2mUxJh2ArCA8H0reT2Ixnd6yScebybA315Q0nY4QvFqA5ToTWCNrPdfKkRx/GuTYzHAI1koYOXnCXsgeskQoXpsIYCuFRC3uCIpeUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxEPkdMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxEPkdMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CACC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722374753;
	bh=N2hl0892YdJx5rgUxmK0t2ACNlq59A4Wn2+uM6Hk+1U=;
	h=To:Subject:From:Date:From;
	b=uxEPkdMj/abc54mCyLtlOlX09jHte1jRnow/cJbTZxKcT9nVnvxr+5w1ao+Umvvk5
	 o+TebH4ZgvFzzV5whz4Obu7lXuN50K72CIRBvgi+fiD5dIF6Ecd2oylMEiRS421YT1
	 +TwKaRvNTl8kvq7+WbIB3/cTPPA4ho/BmA1y8uTVvUMHIcVFjFMXSeIhX63b3criNd
	 oJRafViPMI3LSm1eK7eugtXXDF7EkXBcsRAf4KlRD5HmdhTzJVm/9VvFAPgmrWMTWL
	 SSzAvCWHDQe8RVoFV/ydzKWB0SOZ/vFc19eri2zgyd9P5JYEVhXCTIiRwIL9UeM1m3
	 n60ykPnBBBwMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93918C3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172237475358.15881.2079033356157205950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9588d16b779e5c7f74553f4504032f4a0782c58c0c053c4ef4213d4b2d78b777
Date: Tue, 30 Jul 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722374753
