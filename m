Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376621EB18C
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741785534; cv=none; b=c+JNQwGsyy+b7thDCWRDdVJOb9UcEgYE+C5b6sBkzDiJhjVILJ0FjRkt9FBgtXvyZpVe2Db5cVSczx4JHuVqtD7JpDKWP8wXhChyxKo/kUYAduoo6CiDj3hmhI8VZS4vkwCoAinZ5UY6b/ubTmgbpudfCkpUaQCIOrDOYHfzEfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741785534; c=relaxed/simple;
	bh=p0vLLq7vYgNCJ16jjUDwSM9sSVYJdk6Q6T9NOS9cxfE=;
	h=To:Subject:From:Message-Id:Date; b=TYO9yy/gUQp868FOS3l7q/wJxml3vuZOPFiWqIhObV4QzdH/OLCxjwCrM9C5njLvFe0RKCIhHAgDDDYrXfl85oD8cyBhswWamWSuHgz/p/zfiIqEHGBsGYosA4ReX1K7AxbA98bZ6MqdNs6dvsK+kzkHkldQbZMxbIpkqQhM4JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IV+4vukT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IV+4vukT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA433C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741785533;
	bh=p0vLLq7vYgNCJ16jjUDwSM9sSVYJdk6Q6T9NOS9cxfE=;
	h=To:Subject:From:Date:From;
	b=IV+4vukTreR8T1eis2o3tjfKmbTn32eXZCiDmq4UYCeOwzZGVAKdfv6PmVTsWEhKG
	 BxwmpuICyZU0iKZjzwBDlB54YzJdP8xOy0aftNTUSIapmhJa7L0TZSfG/WlCJ9y+Bm
	 XRHRpJuFKNoGzO7h72vkB4R/327/nhgZWnoXSO6VLdXa5EVJFvnCKIn9+Joj+ySHJa
	 e4TKNo9wvk2zN6R7YZXkYDcgH0g5KpkeLtZK9FW4WT8ahym1puYT3fGACQRDXI7D3V
	 yVb5hDHqyGUBMsFnqRYF35IuIgcZSF5EZY14ooa7aGamuktaL6zpNJRIYt0xKW/Wsp
	 SCYNo2UBPuZ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98595C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174178553360.9377.16189061208078391022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a176bb597ce57065b200f6adee86df2bcbdcfaa93f8ac078bd0144d8a8905f1
Date: Wed, 12 Mar 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741785533
