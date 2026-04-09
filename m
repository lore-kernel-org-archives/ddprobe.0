Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8523081BE
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775718934; cv=none; b=NDdVHKjYQNCNcr+lyqqALVxQbCI2WTMw7csvTPxThasLbru21nMmBY+HpVWof75LxLhGgzYCNbd4zqh7iiuWJwznmVZnaYtAFZ98R4r50ptH7euyLC+6va9G+LfcWJyjMvVNRtQz9SKhoRIRmmuvAoxaO1k5H+98vKnBxX37BGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775718934; c=relaxed/simple;
	bh=b5Krxt/8nQ+vWGgFpXYgzCwkTORjhipGGfwczvzynVM=;
	h=To:Subject:From:Message-Id:Date; b=YDNEKz3LLS9J4I80f77ZQUIa+rI7rr/Lmkuh103Kyk6NA+HHRQ0mQ+SIHnMhqj1vwuARpEBl+Z4QfG4QjgpzNH7JfNg0kc58jm+uYVYuYi35JGA/u/R0JxCIJan304AH/itpa/nRTJEyv/SViDJnAeQsmI6IZde6M5y/4f+QCTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDlEedEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDlEedEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD261C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775718933;
	bh=b5Krxt/8nQ+vWGgFpXYgzCwkTORjhipGGfwczvzynVM=;
	h=To:Subject:From:Date:From;
	b=KDlEedEs0/PIq+LiMojc+YrP9k8gXIh5HgxH8U4SMNHBU23VHi6oHITgmbzGy9o+K
	 piBbQlSMSwd8HOtqWqqeXRBBjdZS8llNE6bz8NwIlOkUpNN2iwAlMIqc7nFTx/vj53
	 MNS8JLr/VxYuivXJQ/MRKMPuVfn6PjaVseEEtSLrKUDdFWBaiC+2T3AkpXY5buq4Eu
	 EyuMq8y2u3P7+xx8zJ41LxxRZpOS7kPA8gIL02gTi2aV9ZvS8nlyq238AASv5xiXGJ
	 pR0bqNZ3QYwNkwisFseFgM6JIHNdJcEDAsCbDMbnDOs8dTVs0+u9Vc6ZJ1GqpyPw+w
	 Ofbsjyc8AmQeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4462E9DE42
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 07:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571893370.27242.4730302876710200997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68fd56e5db194b547441ec8ea336f9afc7dbe0c94be067ca208afbecdc30633b
Date: Thu, 09 Apr 2026 07:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775718933
