Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B1A401494
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780640674; cv=none; b=Hm3ewN0FerGvZAH/sPR/WyuNQBzRypG2FAlqu0/4L8h+M8NlyvSkD2q6HSJ7n9sP3UYJ+FQhxYvd7lkprn67g5T/SSY+okpewEK6yQ957yfqMFLKrCWhtJDRchyM9PNoP6k/jgXcDdXQmJoW6bFb9YGs9CAaMp82FFL62mjGbEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780640674; c=relaxed/simple;
	bh=3p1wr9hSQxCHKs4cZnDsj0tStpmYkY0dLmyzKnpfZjc=;
	h=To:Subject:From:Message-Id:Date; b=TvypfZRKrnh2EtxipsVoIj+17luP8Ww0KZ9f59nNaG2iWpRp1RG1JP9PVULe83y1NlHv43qhL/9bl71IuJRYFpnir3N3IxYWWG5UQI6/8NCc00XrUVDRkd2nhjTFIl0J9oT7SeixQ4QPOVeCYoLkHS6c7YgJYzlZ0dUQAFzoJBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlUv8bL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlUv8bL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFB4C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780640673;
	bh=3p1wr9hSQxCHKs4cZnDsj0tStpmYkY0dLmyzKnpfZjc=;
	h=To:Subject:From:Date:From;
	b=RlUv8bL2BpAb9uGyj7+cmIR+D+GJaUIm6H5oeHBuuYCnfQTapE+ek7q5hWsxlm0cY
	 68n7EK1awyb1Bhx4FBMFw4QtroHOGhVWWwq5s4ftyXGAHF6tUUzN9SXS5sVFWyoOeb
	 4v+Atv3lXAsfHNuzAJ9KuK3eYp+jek+/2qz647kfO26RMocySzAZt2o4hXcEmgB7oH
	 deQGkvzFfqphUUn0dZUTvOyx609O5WoOGCouJnGKN2QRoJnC1tk+AlZz7nGJMQ4YNa
	 hvG45ept/3vBBrN0U0Eyosl8lADjmtTmFVV99eMJKXMpg6yR5X0/EEvUA2ANstRbUM
	 3/s7kYP5TmMSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10C4CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064067371.18556.3842273775186172127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df8b2ae4a1e70c1c5d8bf4a9f34c02f98a6cbe9671805e53129238f88b9d9980
Date: Fri, 05 Jun 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780640673
