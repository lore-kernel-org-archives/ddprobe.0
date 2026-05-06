Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC0B4657DC
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778084254; cv=none; b=dFEI1MDxlrDNd7TI+0m0uWzEvZzv7aBpsQI60rmriRtLKSUfWQjMOtlrKgmlTQ6EMwBgEQ81bta/OciZqlBhpFNwY9rTF3Auix1O60njBQ4RwPRv6GqMrnFJcV9CYNCvtFXi9oaSbtmehquzcoHXbuhdL/g3F2AKiaktv6Y6sNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778084254; c=relaxed/simple;
	bh=pZZxN6bDr5wtRaOioA0VnvZ7Mq+C03VvRZ95V54qCFs=;
	h=To:Subject:From:Message-Id:Date; b=KVcjUZZpjM8vuty338P4RnV/QSRVzgd7fKqI52CLdP+KBG2U8ClvAVgIHAUBzpzSHMjTbeE2qlKf8W9We1A+fvruytgOW8NBe/VL6MR+m8xDVOHHH9dPvHFe/j11j8CrpE1FENKp83gCbK6Kc8qndObTSXUDYWrW5VA4eLkH1zE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5TPxC2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5TPxC2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC32CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778084253;
	bh=pZZxN6bDr5wtRaOioA0VnvZ7Mq+C03VvRZ95V54qCFs=;
	h=To:Subject:From:Date:From;
	b=b5TPxC2LvmeYt1nyjgsVn0C0CRlU82fUewEHUBAZFkUP/wLQ+TvxX/vi3CPdqzxkB
	 8assCRIJHC/p2LYpxTJBzNEqtgbR+F0gQP0YLW3AVcnH3IfNmkZCpC33azbvC3jb8j
	 JIynkw9LC4/RUJKphhR9X6djc6Jszzr+K0rU0vSARAk5C1t4APkXHEa0w89f7FCsU9
	 NSNMg7qbornOs1A68mxlh9mODe8avPCPBd4DtdQg69G6XqFYJInGDhpDOEXStO7Njc
	 I8P738g+0wWAt2jYVRyM9V7Gr7J/poTiQ5Rf/qc9qANgEW9ngc+tIeb5mvBFdrbgdL
	 v3j5rV2t6QhIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA89CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 16:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808425369.26105.2613342571068841263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e26fdc706bab4bccc747b4822de1ba45bdfa9ac4d4d6c13ccef9a03cffa7b2
Date: Wed, 06 May 2026 16:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778084253
