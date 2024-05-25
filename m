Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E9A7E574
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716650663; cv=none; b=dOC8dES8iNu77OyU4ZC3MsdMqXRPN1cb7wRKfAzc/wmqr3VdBwWxB7WkNjQNwjijFP1LwmObyIn9af3/1LJJ5x0l9kF6TIuJ0OoeBteODOgi5Ji2MQhkj515M/05iA1ZVe3mysidvey9iSNr6r7JM7AiGCCdLWH6/UE+tOfHJ5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716650663; c=relaxed/simple;
	bh=HtOA+uJK6PlleWqcwQtrULcgHwWI9e99kiVLOM6FdBM=;
	h=To:Subject:From:Message-Id:Date; b=mCCbM6fSfoNTvMtfym7IUyq45IAQozIoLvHsVVatZBbpNuVpM3sxIV17B7fXQiHdIKa6QmTTSVOpOpsglkeQyRszEQcg807HhoLVuLXRSxhtxg0b9eqpWoVR4gooOZxHjgAB6EIsuFU+wakZm7WDrBBftAzrYzf7zxg2dm9ZEOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2ZgMGZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2ZgMGZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9425C32781
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716650662;
	bh=HtOA+uJK6PlleWqcwQtrULcgHwWI9e99kiVLOM6FdBM=;
	h=To:Subject:From:Date:From;
	b=Z2ZgMGZgL08+EU2G/QOT7xEwQ2UwcaM6FeWZqkT35dJ0vrz5phJoKLNBS/6nZMgy3
	 WbYZgO5WR1/sPxkekbnGtA9dRsGFRX03FBihevdX+c35JThPeSx50gv4mXeF4quxRm
	 P5dfVG2sC+Cjv+DElpVJO3VAcxFG+yFnmhwjZz4lq8Ioys3LHm0oEZYvQTopieDLVL
	 ADaB6S4oTOCjNW8nTb5oFXhpAAStrFKjqtEzpAvpSkDtE/B1sTpF4I0OyPJDfDG5Hp
	 PGACILOOiCSOhL3aZPn/cg08RiGQ/IPauJJNgbWnpsWAhQmQwrjGmFmltxsEOmUeVo
	 Qs///EPdyy5Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B23C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171665066278.16984.524352941402180116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06226625aa5a1717522c73b92973f372eed610a181a7909a9f81e8934c1f4146
Date: Sat, 25 May 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716650662
