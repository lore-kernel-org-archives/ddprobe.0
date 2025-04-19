Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C96678F30
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745077794; cv=none; b=DtJr8RMiu0/vsPnsoix2us7MFTx5Bb7d98BhDaaCbOLfz4/fp/ymxgQgqFFwAt4NYCV+45/jlYF7vM8LZXFgzAnfHpvxBcdfSUkmYz4Zitsh2ztvRjS/EB4qV7kxPjARHwC1HzJLOceqB0N9Ujw60TdWWMGfNjXE/oUq2z6QfC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745077794; c=relaxed/simple;
	bh=UtKassxFVolW3nQiOTuJGMGMhe3gYoKQvxKPbTbzYdc=;
	h=To:Subject:From:Message-Id:Date; b=Nl1YKy7HPbjvcDHeTnfqIJrORH0kDIsY/oaFDjfuESCgSea8hhxiYWWUpsRqevdzmOyedZlIowsweCjjb8+dLzfchHyYciJieWWQ/Ot8pVEa4vpyQqQo8SO8/Q4ZOM0KCInNhO78gmUpNRa4/UQ2Ezd9iDxFmG9b0Hhll1C7/BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQq0JkiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQq0JkiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5DCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745077793;
	bh=UtKassxFVolW3nQiOTuJGMGMhe3gYoKQvxKPbTbzYdc=;
	h=To:Subject:From:Date:From;
	b=aQq0JkiUOmqtTUgoHH9mztqTFmbH/3JcrvznL6ZmybSmgOteTKCZEnJb/VnNwazNX
	 IqaPLKTBLwv3IcDJHs4nNINZJMN0aVF4/wacXFrvkBCzqQINzVd606bN56jNAae+zc
	 EWqcY8KUX33uHsBDnXAR/a8xyOhsV54O3sCpN8wFrKJ7c66gHH/WN4u/wZSivH9yZW
	 SWCMOsD3YijfYJMb3VisYBdcgnVsvjHGp2cem6Ed2FvChRCEi5aAwPqVPn2xwZbQAs
	 4g5lHBJAZlbmZuqPMR/SNk/fcLqlDr0cHkSKyxI/qIbjXjIJu4glxhJYDUm65RbkBM
	 4rZEpFIwRhweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0C5C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174507779361.13876.16491506438721606393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a13e546077972827388688b64a924a5d9c386b5efcef1e34b1f0921112d5ab9
Date: Sat, 19 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745077793
