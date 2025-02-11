Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86049257D
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 03:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739245015; cv=none; b=dZG6Ve4sRm8FP+C2f8nO6+6nO/fFvYxLw9sOaKWpZW4+ppVD+jmHg/xBNr4NioHXknD8NOK6WYn0o0eK7eUsios+1pU5NFA5/lpwnuvtJcqBrPSqB0Rxi4ihzEXNhoGvjN+Li0oRAsHZEnu9+0YBHfySmAItXKV4WhKYj68eLYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739245015; c=relaxed/simple;
	bh=cWhQ+dwLOOf/1nTp7PteMxkwoE0lPa/YWrAxJnsVJKk=;
	h=To:Subject:From:Message-Id:Date; b=cyzfu3V9tzDAjITT++yIR1RrymfCW4SKxzuRbrJCxwmywSTgRAJuw5Qd9BTVkKjaB/LAWGLD2kPaj/IUhU1By/3u6kOk/3cByeosgtOYezkhg3ZYLE4xTVkjm9y51l5SsJe6Zw1aIV/7T3/l7+Te3NNnicVXOZ5HoU3yaCjQ2l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKa9FdEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKa9FdEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02EE9C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739245014;
	bh=cWhQ+dwLOOf/1nTp7PteMxkwoE0lPa/YWrAxJnsVJKk=;
	h=To:Subject:From:Date:From;
	b=rKa9FdEOqDp+yaLd+c1wTuiyV8D3aP43+q/Kv1balVGlGuPSlypdkmTP4UKrPNRu9
	 CQNSQsgcpaz36+dDCs7HJ4yFRjEwMDov6kavW2dCKo9Ey039qCl4rA2uucE1y1WfKa
	 ruNKsGNFZHXYtx6kiDtd9yYeKkeN836aWJ8QWQDhKleY4GC4kcnMmXdU/Hm6livfEh
	 s0aozdW04olmzQ63fxL7/URmjcnfGkVmqPY0li2b2GGSDW8JXFxKc7LGjgoEWTm3OY
	 997CCgq7bjIrMq0izC9ZqZjCor4jgsflVg82wjy69r4qBQWA5jA56Os2Ewm7fl7sLj
	 fQycLQvEWSElA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDC8C0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 03:36:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173924501369.17568.5293311183410876781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95f74196ece97e25bf5ea0a302ef2ce8a5b446152dd64f8443a36b702354198
Date: Tue, 11 Feb 2025 03:36:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739245013
