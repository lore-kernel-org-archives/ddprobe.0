Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7250C1FDA61
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775690134; cv=none; b=EH5RbZGgjrT7h/todL5hipgdRd3oShiFcXzqazSpISrzznolvzrnzSGliXhUOGMnZvnh0w4k2tHy+ZosuhJecbLBXKaulHh3iwkUFbnCZwNYFDmyNX2bNJd7SINdNpQ562COwaPd04l4cRsO8ZrkdvXZ8C9cJJbdy8r8tSZG/rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775690134; c=relaxed/simple;
	bh=povAdpD1DQFuhbCxEjsZXqNusKjBWkXybTd5fRFkG3U=;
	h=To:Subject:From:Message-Id:Date; b=j5bqeilCGdev7nVYuACOTBcSqXrxnaF7uZxTQ8Le+WgIjq+C058NR+sxo1C5ZXo2vAIV6wmWAnp/VdBPk/EJFWfdTkd4P3Nf8PG32aEpJetapxAlAV2tAwAIgFjuvCsq4JYabFwCwj3SjNsuSKW+J7UbWZPOwuNFGyWIi2ZmPTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikOF0jcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikOF0jcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C037AC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775690133;
	bh=povAdpD1DQFuhbCxEjsZXqNusKjBWkXybTd5fRFkG3U=;
	h=To:Subject:From:Date:From;
	b=ikOF0jcx7siBhEaJ9Q3UgjM03qxb5SK0gsrRRhAV5nJA8pBIgb1bSbEe8sYTt7Stq
	 6Pqa6KLEQDBxxlE8wmAOlec0wLZrUmPK9A0IR2gjuSa4Z5gdLAHOalve2wf8pwhqfj
	 PsZ1bnpVVURUC67hzdoZL4bH9laGkLoXcqmn/JNJ2Iz2tkN8QI1PHwC+I4/XeBYnr5
	 oqi9MlHrD+fxmfD+g4L8zgoUK75w3y7UaVeh466vYAPmSVzZpYA+gyMzVM1ORMRJNN
	 c/xTUzhQ7AH/8QNtXKxFj58eSDatJNCwkWXIkZtuWZ9UKRk1OpbHpdwB2ewKuSD2/+
	 N4cfNFlwWKn/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD12F10FC45F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569013368.18947.2997920461426119509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aecdcb6c40cb68144ea97712570372e8fc806e4e22f7d7f612543302e06fa902
Date: Wed, 08 Apr 2026 23:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775690133
