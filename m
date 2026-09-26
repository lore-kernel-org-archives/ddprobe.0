Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52244254B03
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790395834; cv=none; b=HnAolBnSIOPFSHzlSfLHlpLpcIfoBmmyXVvJn/PmqVI+/dnquhQcfF4lmRuxKISsnw4pxDKyQ8QKAKtIhXsiOVRdoHg8qPEEMvAl4lli509OvcSVWcRqZulY8sXjdy6Dsj8KZx0gUL8SpXMocBymo91f7BhLbNFy2JBkMc15IJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790395834; c=relaxed/simple;
	bh=Uj5WbLXEomIgqn9asCn8ABoTLP0Eto5HAwyRYB0Xndg=;
	h=To:Subject:From:Message-Id:Date; b=PbbYFYWUXG/vXLtBl3GJ4hy6DyBlnyayHmMpLRpMQaJo7AFzJ1xE7Zad2fkYhT1DezfmcrEr53kJXhyvxghcHn4z/FZcDzC2xLmhE2/mNdGOr3oWE04PhGwDV1OPpwJu8w4dU/zVnyQRJ1sVtsxH+J3+0aFyQRKvT2ZZVMRrraQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6s/oPH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6s/oPH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48EEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790395833;
	bh=Uj5WbLXEomIgqn9asCn8ABoTLP0Eto5HAwyRYB0Xndg=;
	h=To:Subject:From:Date:From;
	b=e6s/oPH7TlzWJpP1srNDXtBnokeXs2sngXBuVPJFmrbpntse5vIr8rNm/brVJKgUD
	 jaN5kngI/suaPqPk6KkHthuwBd6cM8qAZqz+RFLQdf02OcLZJwEQUIvFkFgpkjtP9K
	 pPeWYzo0eQoCNq7xVG0GnPzE7I/K4cmOBxx7mXdUHEwX4VQnnczxUXN8je5rz1GZDN
	 ahffFAVwPzTIKIxiiythiJTfJjKgWyjzspIkLvPoJXG2QP+xyN0pF7aw0iDFfgcofl
	 8JU3TDFIb4/d7fLhgkXild+i8jtk19enIdbgGVc7vtAEF/XlBxMzmy4E+zIZ73qeZN
	 sCWTwHT+o4zaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB58BC9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039583369.21721.6669428467088337736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b98252da1c13b88c36a870cbc593f1a9ff835acee4b1166876a695fae660db
Date: Sat, 26 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790395833
