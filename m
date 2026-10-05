Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF7522F01
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791165034; cv=none; b=YK++/qz4NcoO38Je1dm9of/JCvnhjy3QhjXiiOMYPRfdj39KFdM3kSLEoAkpMkMQvUYaM5VLwLdm2Eu/7Sgc5og7PaVX150/FqJDjE7BJ2YRnrFO0ZbEKtT9q1oiPDuFiFtZt0ZDEPbDt1lnLfuoG1w52exY4Rskc4vAD20xrvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791165034; c=relaxed/simple;
	bh=uR95PZtn7xHDBL1iGTU+ehJrJpQr6t1i9iS3tmq92fc=;
	h=To:Subject:From:Message-Id:Date; b=KSLsK5/GUcTJLvn3zO1IkAESAQf9SzXwjt4aTJaJa9p3/a0stnZJIw7oLF27e2Tg00cTQ1BRBah0B4RPo/UXmc+N/eIkErl0RNN/kwMyeDDJ6TVecI6iKhC9v8QUzC7UfrvSz13yQi/sndl58uBzapM52CwbTeJQtgr1i/5RvnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgJm6I9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgJm6I9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D379CC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791165033;
	bh=uR95PZtn7xHDBL1iGTU+ehJrJpQr6t1i9iS3tmq92fc=;
	h=To:Subject:From:Date:From;
	b=EgJm6I9bteCcZqkT1Tvt5CnaqS/GMl0ZSvbGT2hutDQ//W+Qyz0Pxt7PvKdvNpM4h
	 mETzgbDqCNZsQ2QQLJEuJ0i/s0nk1mSyqahN8ITO2QjieWL1Xg6WZ2bNPefvZkMuOG
	 qKoeNbpNgXg3Bbtl6iM7HIo4XtXEFIjkF2oiFbCyxkFCBTHz9GMoFQ15xG7uTecvNu
	 wzpEZTzhb2Bu9DMgQ/YYK3qAZdrb5PlkU+eWCBfvuVULCgVpWMnQVB/ZKZa/eH5yW4
	 0A1ZZhRamiCdNEmAZW6xN968C9IQFqrckZxm1/JVHuqwoDK9ihPL6yA8qz0W3XnqrA
	 ctvhKQwDweCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B040BCA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116503368.4772.1626597009695722444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e50ebc154ed27d3b346f99c26f06d818418c20323d126ba9f10b47762ce15b
Date: Mon, 05 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791165033
