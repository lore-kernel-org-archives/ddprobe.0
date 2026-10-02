Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5126343CE7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790952634; cv=none; b=oqjNMozPZwNlBS3LqhoWbRnCHhOT5IK9eIxIgmjBqxHI4clmwNR0woag9OPGKdWmbbitK2lZ1i4aFrSdETZvoH6Wv27IBDt6vgojmTZvZ1c8lnBstCLoUsfaWb4aoMyTUIJ4XH+ohC7yYcr+fiOXU7VQhNiVNJx5Mm1aA8dqR0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790952634; c=relaxed/simple;
	bh=RBKTLT6SYnE6EulEJfaujphLYdZ5CAUcbN/xlljC+8o=;
	h=To:Subject:From:Message-Id:Date; b=sx7UJl9FKw7YFLStcsQZMwMOAq3tBxOKMhClX2A2fHpV1WgwCQjglvIpun4ZIiGcQGkaj6ddxO699oSqGXg8g74/Fd+TnA128ndkh8WjW/6ryzFJutZJbtpGfzoS0uSYT2Azu5IyIA1IvW9a34KL2IenaQGhe4c3FiLwnFTwyRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7NcgMGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7NcgMGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB20C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790952633;
	bh=RBKTLT6SYnE6EulEJfaujphLYdZ5CAUcbN/xlljC+8o=;
	h=To:Subject:From:Date:From;
	b=U7NcgMGGoW1C6O5aYKJ5gRPyaPUKKHqCV0a5/slhYSNclaODoTMGh5sLR74q7hl2z
	 BjEktGR4vQS02fnh9lsh2sYM1LyVKTt4Yw4dbmkTNkctBcSGf4IYki0CXz2NKyibh6
	 qOan3I7qdOwbVNcdSrMEBkznbdnMEFEouZHvn76xuYCx4esIhmdeQI8SclFWOmZPDI
	 eZ5O/vP4AaqTQV0McprIT57G62dzcDWkpwp59wQhYnmkC4fUqXhsYhYFwu1GsishNp
	 ZEUQJaE+oNHKiR/MaNk1oYKWkQC//3fq961hTucoh3JaJoctM+Arefo9ElhKstnZ6e
	 WrAlzQ/2159hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9075CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095263368.21276.13743702118467956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c31e7caa981289efaa4c3ab4f5b976acf75b8b76bfb7081151a4e9585befcec
Date: Fri, 02 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790952633
