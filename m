Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5FC15F330
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745005794; cv=none; b=Q+qxOQ+7Qf+3cMU86M8lC7v1JxFBf6gk159EC3ugkucHPLKE/FVHVyS6yJDCxe2OvIc+/4tsxml+MRfFdY7mPEISx1l+CqLMYaTMFEPbAK3Ki+Wc5XHQ9q0LN0ZSC5AVM+/XAfbGVeeD/7mIWZJCgAKftIBhof6rGrNnlO/uUsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745005794; c=relaxed/simple;
	bh=yDtD24bZOCzNQHpNkd1B7SHTYbsXEU2O5+PRek7v9ro=;
	h=To:Subject:From:Message-Id:Date; b=csiB81hpJ6xCeQh4AUNAWPk4FqH4i0otgitWC5OmCzE+vbpsaptJWrQNsWf+LA1vFNOnppNVpuP1tO3epEsqqyYq8JNX6K8ZVewpYPnrJnKvbQLrfisRI/nN1V3GWTDTJst9jQ8WVNa1yFZ3puksUy1lOdUDhCaEUnGTj+P84ZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfGeAvE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfGeAvE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F6BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745005793;
	bh=yDtD24bZOCzNQHpNkd1B7SHTYbsXEU2O5+PRek7v9ro=;
	h=To:Subject:From:Date:From;
	b=EfGeAvE0aM+oi/6xB1/j2D3XEw8aupCtjp4yt1oCaCsIU7lRE/0QZPIu7Hva71SvN
	 +pAs6m4rKviHqENtX8jR1ZydierVBcBBS5QgHj+RqzTfbhJojxyqzMNOo4ehBam6Nj
	 Foe05/iFTtTz3hR7gT4vzWcBj5DFtRg8dp6RjcM9tYUsbj/PPIxwjjCElbWx7rz+vc
	 nM52wO8Xjbq4mTtbT0kNQeYKVw0CPZGp7qC3tNPtlehGjp2EbsOHMnIG3RDK/eTMsj
	 HZG91fR5H23t+qpaU2U0q5YrO/BiqnaYQtLK0w9zhPCP3YI1187vM3J9s2u8YkbWVK
	 YPbipEtXAJelg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5E4C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500579367.17608.4281360714226043123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18ef45292f5b33e39e67f4a70efe7d0c16cd993371fb972282efe3a0f184c81
Date: Fri, 18 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745005793
