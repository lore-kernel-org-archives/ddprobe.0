Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBD2139D10
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714129343; cv=none; b=bC3drUgcjiV5vDmYyiR7+agFDUWHu6Oqu0ebLdGzgjXQVNubMInSLNybU9rmTlkZ9ZE/fX9pvcOnh+eCWHRmpyxg5HmZPxY7+Kf7d8YdoUolacFZ6DVOnFzvVoQX9q8NEWfWA1kC7Bk4Lm+zL7rUSIaUrSUzAkPLcpkPOmZD4yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714129343; c=relaxed/simple;
	bh=5Utw0QovdRKmOB4GG7akgcT1Ya+Q+dZcjEdVftvVmbo=;
	h=To:Subject:From:Message-Id:Date; b=rXVQklY4fQd1XaYQh6iouyzxxSwQvtDvr53h+6HAdwvEd7BcEZ1udCKA8E6u29zvsCBw8cCI54UwZqU0tbIR99yNAjPryYdCpwpxGn1v5tJHuUUhKNdUDMT4sqjOG1fCGpvplrvTbioABwr0TRlH4foMJoxBsWGwvQPZAm6l2TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYqKr1Ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYqKr1Ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D358AC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714129342;
	bh=5Utw0QovdRKmOB4GG7akgcT1Ya+Q+dZcjEdVftvVmbo=;
	h=To:Subject:From:Date:From;
	b=TYqKr1IhwTvfLZbKt0resYuatTMt6FImpA/q/wWYt4RynCMNSxsBbLYmWHHjAYkFB
	 C7woowc/qf5ItrlahHJSrOpewhZubo9xe6HsHSsnHqnKsCrzxoCC4qYGVv8Byxf2uG
	 BtIB1iivVkQTz2tXYjpGut11g6ouXZgZzHLM71Gi+w4AyyTZcZ1dwcAPFXHznhpqb/
	 V3vYt2HlSFkh//IpGhJCMEJ9WqqYj/cj1pkSNYBioH/SahUJoV92tXTvr1YxMppR4O
	 x/XBCnQKWoNZ8yAci6na51zM0kL/HmaJ+iu9Yd29gdxVt4KQyE3WBeYzstqNOF33F1
	 1UQ92pTbCBBbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6A4C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171412934277.24858.16049760053873131048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa43a4bdcc5efbfb6b4abc09fa43ca618c81eb779cf341bdfee1de972c216e4
Date: Fri, 26 Apr 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714129342
