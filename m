Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A18F3D1CC1
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787024434; cv=none; b=ogxt7LaCL3/1ULhkoG451Fdniz5nwdWOQ6ysP2hisCVoLyBHisI9WiljTr7iRSxUWsJ39hMyCv55v5Ck9O8cPAg9Uds38abyEQFur5JUK1luEDi62JELsYQTUCx+O2G5HUuyf/YU7IU1vuKtay21/jt8y56rQVBShpGcQ0XMYho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787024434; c=relaxed/simple;
	bh=eU4gD3ZqvczVvIB8MH2PFPvDheCq+mr3DlqMtFQshDs=;
	h=To:Subject:From:Message-Id:Date; b=VZvCnhYB2LfiG7XBF6DGAt1p83eq6n+Y6FdQV8gFy2VVPe+9B/YzZnpK+N0fuF9mHjmExvdsDzw8yW+x/HVad+ajQUg4YPdYrLlsY4wfS9hdhkxON9pILq7EfOrMtXlmq7g7poI/6nrxpQ/3oMv7tAs4WAG8Ui1CF2eeJHmWdlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J23nZ82G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J23nZ82G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC760C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787024433;
	bh=eU4gD3ZqvczVvIB8MH2PFPvDheCq+mr3DlqMtFQshDs=;
	h=To:Subject:From:Date:From;
	b=J23nZ82Gm+DH1lJcRpPw3NUdCVUyARpcYbshn7WfQhZLaRrT8VQyeV6jc++dKxF/v
	 nbxuyF+QYIQCbNiffVwSizlPA3MQ9WBNf3/+66pORzZ6eKS5Ar6fqmGLddKHo6CIN0
	 Z8nEENx+fqJKe58tg4PuAPJfFFI5lHXk0omL6a1l4siKjVXClvxyhtocjKWu/WSLxI
	 +6yk44toVTX4DusXunzf+nR+mbplqsvYWiTEelNbC7wV2ZHucNqVneXBdGt+3NpsjP
	 d4zRpA0Ne4aLuSJH8gylfR9iEe+bKrgw/5eAPy7Za0TBYoqwUuOm53NiNTl8ljJC4B
	 P7p8vKf/Dvg8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A946BC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702443368.15901.14580249209723240170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba02d7bf1aeb47f9a0130c745a89cc762855394e8748a1ec2b097b876a3a36e
Date: Tue, 18 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787024433
