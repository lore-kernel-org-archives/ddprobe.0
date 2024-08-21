Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B41A14F9C5
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724256954; cv=none; b=YIwGKa8vPvfbPhOIz73xzBeRJKULByop6pr0lywi3fpwogif7Kd9dBiFNl4HdOgWuaLbGcvDaYsUwf1gU1CoZm2obA+2d/MXFb7QstJfIOAgOznfN0ZFfYVU9IP6EMNHnQgTolAws5o9nUJAqftQL7AhSTXYd+IvkxgMmLSiH5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724256954; c=relaxed/simple;
	bh=EJdyY6UwzJpf72zoPkE2gou94oPowRDhj6JDz+WJRrg=;
	h=To:Subject:From:Message-Id:Date; b=bF1Z3XBLv1tEim/G8LgvY9K7Y0h0n5LRZxha+uUv0VoMJuu54omVo6u+VBKrjdt8zb14G/40eDwXx1bZ4wLNZMOnLL5+3Ah+gWPgI+vuRubLnhmTJJvQGpkrwzLkxYjkKYPLhOgiJEXNgdAANSobL2LpZEdi9ZsTIPjdzigZdxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO5DavO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO5DavO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A8D2C32786
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724256953;
	bh=EJdyY6UwzJpf72zoPkE2gou94oPowRDhj6JDz+WJRrg=;
	h=To:Subject:From:Date:From;
	b=rO5DavO6olEoNkxtwHXrIBOOndsVtI4iJkOvR7xAgqZBQMXiwuZ17N8cX7fXDyrq6
	 SK8sYgyQKuGhhJaPAh2XngiQ0wqzJvuJ6ZR2u6+BNeBLggl7vxG5QS+q1C6wCF9Xgp
	 4OEzer4Q6MI3kvTk/rwjr0WqhZkd1ZdH0ERqDHYiW3fE/vm5P4zUbHP19ikbS/BatD
	 VlTGuX/InE6R8YgWz50ZA6pkq8ne8cRdXg6jWyq7xaTAmaNWDWHD3XBKr75AoILY+D
	 oBOeQw51LLZ7BowycT3SqtIOuoqc3DgHWrH8Xy993LAFA5t5HaeRhvq1pnztzJupEc
	 DEnoznCruaArg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92223C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172425695359.32267.12903290774517219971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17719e2a10c052fe223f4a0712a99b0bbc96878ba48b6c576a28cc3022640295
Date: Wed, 21 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724256953
