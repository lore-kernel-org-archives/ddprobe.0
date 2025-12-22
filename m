Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386641EA65
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766379234; cv=none; b=u6P8+y+zyQ9n4Rhx6eOXfhtV0LM5/8Wd9VD3hw2kXL+4qn9BQBGoMLwxVqyoA4fjt8B22Ki0GPfVEe0iELs93x2IuFCVTSzuMkX+8wGRNVibjpVYioL1TbSFTZ5mBz9Og9T0RLfwWEZJqwjWUpb9ZOWeIccWHjKhKhrCbHq5j3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766379234; c=relaxed/simple;
	bh=Z50MzIlBfLY0JfnMaXAGytO4zTMmLsJvX/vDpA4DXp4=;
	h=To:Subject:From:Message-Id:Date; b=cA0i+iVBAvU9aUdblQrbvYX5TDHW+yR8rQMuNMmjg+utPsewVN93d+pwbmk16/fLWAayYSKiKxuF2eN64I2ZK2sHWD8vlHGtUfCcXnhbl8ZnJrt7IEiDizNULnBngk6nV5lmRctpkFgeOvdgjXrflYDlBGMnkfP5oUxWlkso+9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFsMXCvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFsMXCvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2943C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766379233;
	bh=Z50MzIlBfLY0JfnMaXAGytO4zTMmLsJvX/vDpA4DXp4=;
	h=To:Subject:From:Date:From;
	b=QFsMXCvFOAPrnr20XsN8zVx9s2MLuxJMECmqBqCa3MED4KmQVu+5VBUgvJzqb0ViI
	 41pqYZPk8ooWV3cIPGfDPEm6WkLLORUr9iGouMhK8Ncaxks0o15e9DJ/iInhasO50a
	 RjD64VsX8FoQXJAkQjUjxuae5/r04FBPmsquVrP43vL8QmUbqwjMLe+6Qjnn+1FlBj
	 AxOAkXu3QZT562wi5efnaQGN0Oz90fwdb594LPYcBqOkkjVtA2TArpIbiaSs6waQgN
	 IW1o+gbt/JdGh9vqjMkvo34wS6dTz18e/wYYR+1lb1RvcMSSIwwg1U6kTV5hmdwslb
	 R/zu+x75HU8FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F23CD711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637923357.5864.13638712550950629502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a545b617be53feac1dab25990963c5e1a8b0eb25ca089bc5b0cdaa823edd47
Date: Mon, 22 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766379233
