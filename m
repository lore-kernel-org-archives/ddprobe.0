Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4FD13AF2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781156194; cv=none; b=l/q1xSD0gkJX6/nh2c56Ee1nAi7H4/n7ADYkBBOJJY1UHGqNm9KcD6kRSYPJEDspJORpYDSYrcNNOj8hiZ88kP29YRPMa9cBa4NNZcE8AmrePIqobv5AocTQcY6U/aSb5T9zkefdkFcOmA7INOR+OZ0AcLlS1bPUGZ/DmzBp9gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781156194; c=relaxed/simple;
	bh=UjvRWiwotOaHSawz758o8FHB82UPuFpeBT0G7QpQcDw=;
	h=To:Subject:From:Message-Id:Date; b=pIg8oSNIj7StYCfn9vfe6UIMBa7+rAaz4hjnaGoL+Q/CbN7JwrUCtxwn2qT+M9jR1VyX1uwj4mckOlskkTF2SKimBNEN18G9PLAVWRy1KB923LwpMtpYjvp4NUkKgL1DiswyaUowCu3HZRJ5SZp8++9m6B5kVkCBw3vCO3QA+j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skCRKLTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skCRKLTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABC3C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781156193;
	bh=UjvRWiwotOaHSawz758o8FHB82UPuFpeBT0G7QpQcDw=;
	h=To:Subject:From:Date:From;
	b=skCRKLTh3iM7ZvVUOLcys14QNbJDM+EAjIqbEPa0cZxJW7C+1+YB90XDlf2+W1DrW
	 5GDuv1sLFG8jxs633gK550A1v6eJBijnz1fEa0f8LkVkiJHyZMTxj9Q8CNo1bNgXpD
	 5oXZFXzYh2SO45P7r6OUPhlleQUR/QCFUPkPYz2DzI69ov5/JnXLfHNmdrtPbxvVsQ
	 MITDUJv9LiGa73Ht7wLJmxJ6Rf4AhJiNHH+HoFpQlysJcTrO8tsz3/Z3voKOskxPT1
	 JBUTo85yr5U5o/YBsQFctBrOBMwrdgGqE1Qa1zu3raOzCCZ0pl4MPXzOnugx6810VD
	 +FESqkJ0OasUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69B2CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115619373.15468.17535549590454743032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7461b549787a481df573dae5ed23b4a13afa0f48ebe0262dfd144a1253dc38
Date: Thu, 11 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781156193
