Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C473ADBA1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783938514; cv=none; b=fU9PXOrvAD4akJ8okjNyjY875m2UZVnoIPhYnSKCh8f/WDkAl0RghC78OlP0pcPftMuqipUGzLf3wNK3nSI/rXcw60wpjUIGGZ9hFQZHhjneI+NTj7NzraK8EPON51ZiB/BNkEaSmHGJhS6lq9UxkW98w3mQqyYcNdrvlyLuZNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783938514; c=relaxed/simple;
	bh=Y+AF3GHtT8F73zwkrbUNqYQ+h77zrPgnbSG+tj7QaWE=;
	h=To:Subject:From:Message-Id:Date; b=DZrAxDAS0ynoBRZJ8xh0otmMlGcLxdLVd6KDaDx6+hrghUav6CukkfYlYwqHI1kok5DkaNMFFqwz6PaKLTMJpxNe+X1OmTkzrvdwh3ioGiBP+0ognt6j3hTNNf34aq7toPKK1eG0FYoUDQ33YAI+HLNpiipO+l6+t7B8UwCaQnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOrEUywy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOrEUywy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD340C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783938513;
	bh=Y+AF3GHtT8F73zwkrbUNqYQ+h77zrPgnbSG+tj7QaWE=;
	h=To:Subject:From:Date:From;
	b=oOrEUywyr+pYfyYOHvv4OmSMRUOWzAmco0pAd6/vShZ+xsib18BQbXT/DoZJOdPoW
	 2HmWw9SgVaOG7KqOsJv4N3zcM1FUSCHQXiSbA9gPCt6aKaLGG+/FoBklTKnPHcAzej
	 gaEdZb9+cPAkNRnmDmv1mCYxFLSANvLlNQwmMUyNoGv+EAyLD/Qbp8PR+ZLQaQOFZ1
	 gMcIrTOQGXZdkRs1CT4xFA/JI+OAFUan4YaNDgnOWU869XrfqidO3Zg92c7z1t8fmc
	 Rg6Xidls/DREWlnf4CuJ66/cEYAM7MoZSOmsKwcS90H3XDOqnbyL5efO4zeX6gWAO0
	 hLtWhD0R4a1Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8474C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393851368.2813.10806730334312298760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc077f3330d36d68f3702a4248825fe298b7f51d104b5634e8448a17e987757
Date: Mon, 13 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783938513
