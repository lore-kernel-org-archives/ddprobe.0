Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DA837AA8C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777017455; cv=none; b=qogoU/LZDZdZr/nY3lYeImOeA1sK0GeClIKxao7NikEmq8gi9hJHbCJoSHI4mDcz/KNbvDA8lzc2ybwaYtabMfU3xfw1evQP9P28E61cyjPaN3ZOT6Zhvi15rR8Yowe53MF4EfWIDQf9Z3xNS65YSCvFGgjAApnRSgk3kcqD794=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777017455; c=relaxed/simple;
	bh=LjagbjkVRycoNCpcPANYle0ZymV/CoJDDoLEOFNoCUg=;
	h=To:Subject:From:Message-Id:Date; b=FIDyxStc8XfYYt2GcVR2f+P+uQar1CIreEJ4vwnHvFmBag8AlkCi1VgIoaC+99ki4BLlHIWw3hkqEOUJaIM34xBILLz61TkjnekA6rRMjiWgob9wEqpl33XAbShmdNqe+076FmrVwj/bUAdVDF9wtajASMyEDYrukzQ7hvl37c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFQ6Rudz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFQ6Rudz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE768C2BCB5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777017453;
	bh=LjagbjkVRycoNCpcPANYle0ZymV/CoJDDoLEOFNoCUg=;
	h=To:Subject:From:Date:From;
	b=hFQ6Rudzfjywv1mcdopjVJCBP9DHU1pr2cauYqBuBhojFq+t2h0imP2tNI4BmbPD8
	 V2N2TKH5ErTr4aUc+LRQ1WjOLpb+LRNKmRR3toSkrM0JJUG6XaUkvE4Iv25ZeIw8EN
	 igeLyZbYAM+bHgqoztrbeqaMhYf9Li7V/52ZKdHJ/SeNGei5z9RDFMPPjx+o04gADS
	 VD71qBWPpR1KkUQJOxgcYupTUGD827j/iQOT2vI7KKp6aAkkVOk597IL29X/zQLtTx
	 Yp9n3P/gPld7SxJZzWF9a8TGzW3bJnlfoBf/YghM18GBw9bPqjpskjD5j7yG94iYlW
	 G94hLa+9f2rHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6B8FB44C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701745369.31084.15451371030301675497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557174be72183f4be18097213af0077280b28c0629fe65381b054df69b88f69f
Date: Fri, 24 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777017453
