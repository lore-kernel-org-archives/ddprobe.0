Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC72101FF
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743806994; cv=none; b=nm2hhvceg6fhnWLRQsx6c3LK7jIeBoa70kxqvBz2w7A0I1KKIbivRcBtMlcICap4kU5ZOkPimRhxTwW4hB2BAcfLCu9/J2Is/HCNPK+r4nsM+iVpp0iXwuNTReYxZO2MvsWDsFXttF5OAPIV5P00jJnqq5no9QXOR2l8SLHTNjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743806994; c=relaxed/simple;
	bh=zOHLSkNYMSfLKCBhoAenA+7vI0Q3GrBLO1cQS+iDEtM=;
	h=To:Subject:From:Message-Id:Date; b=Y6IN6vo75PIqvQ7EdXJnA0gF/UC+Fbiv/DkonVcSLoQAaLgKWfhWMw6NxzFJUtssZbhP9JqXMhWcYqdc+LVEK5B5BOFqOAygO3fW6luobifMWf1+fTxkW2Jp7Dt+wV7PKv2q7HlHQewj0zYH+/BCkYEZKvBhVsBrAPr7B12y3tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnsv+bxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnsv+bxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD9AC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743806993;
	bh=zOHLSkNYMSfLKCBhoAenA+7vI0Q3GrBLO1cQS+iDEtM=;
	h=To:Subject:From:Date:From;
	b=qnsv+bxnF27Is2qNfYQQQmVvQravjFhlPV7QObNFmrAlur9EvpJRqBwBbVDkh0wbs
	 fG3vVi6jTqFGDlzPcWkgW6jOUtgP+GPLrEoBlBaeYS3Jb2Npq3/du+JZPOFzZDOD2i
	 0/yoQPpUkSISPxpbOEA5l3Gd31ap0wOSTyI/EnbtV/v2WMOCVyWEHIio5d9iFZ2a3K
	 nS1QVbK529s/TzEp4IcO5j1oFvow9bN1rtYRG1yjm8pcIzDTN9AiN92/Mgk7EZ156e
	 h7Hq03qU2hdIwgnq6ZAP1cxUDSglD9WJ2crfzT9M/mwpAhI9ygRtVkB3cgoxfOuWY9
	 l9LC6Ly36pG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A674C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380699362.2599.1816117495446242255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34007aafe182b33f443216727783c004aea91ede4d460050b51fb21d2e625a3
Date: Fri, 04 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743806993
