Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B5427E04C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771956294; cv=none; b=Iu+feNSojo9dE0ZMX+OrRdfFS7WNsT6xXn8Ty5LB/6Px/9U5b1HnU5OjemS+Q8p08z08Y8ENdzVKdM+HogoI+XQdLS0Mj8l3Y4Psj2rls2HLj8XczqJQ4dEyRESaKPUjHKICOhaioR/yJZg2gWb0EwSNEsSa4ON1neBvrJhJt/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771956294; c=relaxed/simple;
	bh=ROKiAIHjChpBK6YAQue6StLtSl7Aaby3t6UWrQiZhm0=;
	h=To:Subject:From:Message-Id:Date; b=s3qRVkVz5SJyBLLn9N8LXfNcnosXSpinhx7Gd2TrEIF/rCiVDzcZNeDEKcJpmNURbn+SXZ/oe4V5IxaMd8ULd6fZPlUfIEB7l1J7ff6URzu4Wh8XxIooEnJQO8YPEivFjDEpM/ssXDI85gcCWWxmafgWgOH8S2dnCYqQEgh0GZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfAcsPfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfAcsPfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E0DC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771956293;
	bh=ROKiAIHjChpBK6YAQue6StLtSl7Aaby3t6UWrQiZhm0=;
	h=To:Subject:From:Date:From;
	b=AfAcsPfO9MRApiqtHWeNVApWHi1H9swBGg1pQ61tcnQGkcPtPzhn15a4a4692Hijj
	 0KajuX3r1W45+ZqK5O6BzCLN6A8l+InE1JdBH6yKBJTdQysgvS6BydyFc2AnH7UiIL
	 d/81RYgVxEZJn7EjETAuA3yV4N7WFXrF8cyVnODVR9jFeg+4zr9L9+OETeTQaDcf/z
	 NIFUfJlcAkflBtkFe1qmcP0IQlmQkUlaREyyBqQdCpWZOanfLbMxO/gNcZ8H+HlSSn
	 k6AomGv0x9my6YRjHOhBFxXs81PfcIre1vAGXf7bocxWLc8VOZHkMJK5tY6dBcDTyH
	 3pi2zjJ8e2ldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FFF4BB6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195629359.22186.1953872181280815546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850240b1068e79b049ca457606968f86fcb97db8fef9a2e0a80e5e43535e5b06
Date: Tue, 24 Feb 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771956293
