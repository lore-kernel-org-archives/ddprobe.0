Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293642FE379
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751402394; cv=none; b=d25DfCMAexzA3LTV8KeMBRh2iV0XJFHjfdi9aSlSNhYX5lEsgACGH+2sDPg2JXJY9UqYZhHfFjrY73I5ZyzUov/r6MFUz7jDhJHKFvU2AGTa+FJdW5lN6O6LCakvRU9I3na7hRmMsIocQDqYqUsNRQtYOp/5gancB/yUauPx1z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751402394; c=relaxed/simple;
	bh=grzdBmFP9WGZFPh6+ThGwlQ6bjKSF6ZP8SIgC2vGhhA=;
	h=To:Subject:From:Message-Id:Date; b=c6oKwiI0WbX79S9M6ZDTznOLiwg7c1jlp4F4bZ40jnP6o4RYfaKBboEYBJOPwy3kQ/8gmbm073ZS3pPYfx58hAjd6XwRXQyNttWzwMwvzYj5nxk2PShS1Iq3wy1dNOP3MYOMrd4dbxI1NCVFeeO2ys1iYXtpC0guOH/hiT7hwpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpVMcajC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpVMcajC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD03C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751402393;
	bh=grzdBmFP9WGZFPh6+ThGwlQ6bjKSF6ZP8SIgC2vGhhA=;
	h=To:Subject:From:Date:From;
	b=qpVMcajCd3Kh35/DWH7B9MOfSqvw0j6/esLQzl/MNXbQu6buNTg1HUhe28xUVM2zW
	 zxYZTjfQvgshYInBdc7AxNE5x25TeIVNillTbNv4c4imQ7bJERZEJ3DOoSKaXRBu6j
	 YGivNXqxdUP1Fdkq5olAfdXMQFLGQDLzKUvX//AgbZUqivYchqIhrWswE8HxY+mCxe
	 fmD35MUF46gI2yEYkFXY9tk0AT3mdOiKkpELeD1gq6XApP7a+T2ZvxWxwd04o9l9Wt
	 6SxJTB+swbcPMx0KNsCooLgWJh1GRvlndtfQMt+QPAhFzrcPMdtOvbe+ng0omoDVln
	 laMedQ6gO4WoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90CC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175140239357.15751.7198429033776383821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519cfb8d2801769204e4da01906a9a4ad5e5dd793e5f6f5694d196a2282cae3f
Date: Tue, 01 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751402393
