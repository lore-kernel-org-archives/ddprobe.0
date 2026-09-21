Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8695C515993
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790026834; cv=none; b=l6OI6IseICH0AYPZM4o8STupFNTm2OOix3JoSmIQ90WGjuNzqhGahPTEQZs8eKQHfE02fvxNzU/O6Tz+ZOGhtsRa8HFQPxe6po7z1xvp6q6x2PZ4HSYDExii6CZ5c45lDQAfRR37/EshenN0zf/sXT1PwmXsmx5Ip8GTysIcOck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790026834; c=relaxed/simple;
	bh=6Np6D8HzSh1CpTI7OJ8f3LvoYwryrnCeCsxOjPN5qsc=;
	h=To:Subject:From:Message-Id:Date; b=W1Z23mCRAhL1ed9f6FmKmHNzZa/WqvucVsfz86n8i1nlxYa0iavmM+bfUVgFK3vCvJOhT9mPy/GZ4qRRQel4vIZ3MU6URv5RRnkQ+KXYNKm9hiNpt5HNiwffW/2D0hKaVVp1cAGxkol1yDl0So2PsKKBbYDCMAYzKIrKSuM8hZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5PuayqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5PuayqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA1BC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790026833;
	bh=6Np6D8HzSh1CpTI7OJ8f3LvoYwryrnCeCsxOjPN5qsc=;
	h=To:Subject:From:Date:From;
	b=R5PuayqIdwYth7MOFN8OimoiN9wEH1gpwJ78xhOb1vvUy+VBcX5EDFiGaPkYlwqM0
	 4Dk3SpmpMqT67euz4IQD7hBAywvxppE2zmkgXZOGcsvyvd+RjVCOjrWRLs8WeWoEKD
	 wHuV8/+a3NpOqp/kGEz+9kNbQjZWS13CSKUoo9pRHm0gnxTQWTMUTajug3R2eMNqGj
	 LxCcSxwIDjiX5yc5QTo7t3qE7j6zR7StVpxx4JCBs616hbIRDVoKtnw8mJt7y903ki
	 KYQO8cPHbUBUg7keGlbn1hgRa2WTep8PdgnfYrEym2rOOMTP1EeXfhtaKyLOUKDiD7
	 CItT67m2Wcj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD72FC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002683374.5629.15112306414791937869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ed3ad5050eac09ae46a8a55afa10b164580006d1ef0589a1a3566a39d46700
Date: Mon, 21 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790026833
