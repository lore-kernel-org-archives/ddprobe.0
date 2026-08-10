Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E09282F27
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786330234; cv=none; b=fDCcXViBbInYB3XffTblYwQWJGHS3ljEMGsAvbsb3Lmgvrj6n8eKiHxLdrWPx5VrWvKtBbOk7uopgojgak0np3rjrB1mtBVosRoSO6B6HqKZD0TPLRHQbkUw0wcdGonlf5BcWDla1i++IA2OB3+wE1FAMxzor2OPpRM9vI9fHGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786330234; c=relaxed/simple;
	bh=o0YDF1PsB+tgG7AWkjwj70TuIdMghxWYVl0ikgnr5jM=;
	h=To:Subject:From:Message-Id:Date; b=YwWXSBgTLJXJKExGA4MopfzY8L1s+xnODICBFOS/itAXBW63lNtbzH8key35lKXqDDdZ3cgm/UZC2a+qovBJEbIw5tiYxLVic1eYvTAYvH5BYRcTk3oYldocvbuCeOMfrwuE+LXlEAsDKHKWpP+WX2BXNp2a7S9uBiH+xKr4ewk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFU98Mcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFU98Mcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EABC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786330233;
	bh=o0YDF1PsB+tgG7AWkjwj70TuIdMghxWYVl0ikgnr5jM=;
	h=To:Subject:From:Date:From;
	b=gFU98McjpAtpj7o5G3HTRTLR8oL7pX94e6p8qdJ31ALEXprRmlOFZmfy2oyLogaYv
	 iwO+rXpQ3cfZ7rkWxuGvYd36MUhyffcwBJpqwPXGbH7mDVLwyIjxPfSmpG5Ey3RAM0
	 mHEljft1yixPw3wXRo44ki2c6VxXhaPk4bSHGj5GjKX813yWRiWian1s3y7+7vZHN1
	 bohvqExvr5fZic3KrYIZExwOo/CB5uEEaJEZbzyJ28JlYA1TsJW7qYHf0koM0US3kZ
	 187US9NaJUNGgbj7CSCEG0rEQwR4kmdpGzI9SKAOhwCA4HMbloyzMr1c6XbKsPHtVO
	 h33JbGzMj2YoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB223C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633023369.23187.14737016068258208169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ad6c6db8bb1bd062fff6910554a7bdb100731e023203bd827c6b4b5e848cf0
Date: Mon, 10 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786330233
