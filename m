Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAB11547E7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766210634; cv=none; b=jFjoW7n0faKdzkMFnNTXfcOw92PYtEStgHkRp5+yVHc7Z+qdsxBuXS65XZ9DX0TU8Om7zyJXTxObuhki6QqjfsCs0SabE4iIKVuBEo4y3v0IMi2hAyh1eHLbUc2PRXu+TzRgh5YAdQurjXVqZQYOZlrcgtNq+k+32WF0+rdMwTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766210634; c=relaxed/simple;
	bh=zJpafdytr3UHavYXjxn5SgNafIfjmeTjiYsUQG1/CUk=;
	h=To:Subject:From:Message-Id:Date; b=Fz5W77yn5jGtWg0BZpp74Gb/vL3AfJ63lyuMeIeSyzjWqCMiHvFoy+Q/oYkV4VXBXL22yKdw0n3uZOLaHgfy/EPbk5W11sab52X+7xtQRYc43JyUVkGvIovjmbd7JoJyN3xV96qyS2iDQf3WYJnmDelsx4o1EYuMP8rKywLDFCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDIh7n7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDIh7n7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1AEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766210633;
	bh=zJpafdytr3UHavYXjxn5SgNafIfjmeTjiYsUQG1/CUk=;
	h=To:Subject:From:Date:From;
	b=BDIh7n7mU71Fq3+h6eHgee/OgguIUyjK54hat4l7CiZSms+ny4i7hipSd7vgKWAhD
	 wHQ9MilCdKcxOCb485WXfF9cjYlV3TPjdPbdaY6ZzjX3xXajr/x35LZxWGa6aTMyha
	 GqNHbA5D0yKjcyA221J0hiXSr5SCCMr22WnSSEqJUTORwME474ZmaGhlZ89y5+Dd+6
	 D6Nzv9OwpzX2cigWTU0Ivw0Bqh8LDqDVdMiRiMS7Uf0a5Jt9ehhHaok6G4o4+590gy
	 kvfJ0e845ZLoEBPMwLFLuOXZK1gXAjmiyfvKC/OVac1qmLGwIVO839pvR6yc3QWl3F
	 ey7AVF2AIjEow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99070E668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621063359.9860.771337904354875425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2100a6f2fe649c2078a14dfd08c3dc213408800d1c891fa01bfca952f279ab51
Date: Sat, 20 Dec 2025 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766210633
