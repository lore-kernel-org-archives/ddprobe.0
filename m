Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C66201266
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749395394; cv=none; b=JDi+J4kXNIaYl4cT/v4VWrvP/i6+K0gslY8LdFIBhttQ4qKneP5IGyUiJHzsUKf+F2hDpCaEVvHGPo8yUSHv7lErrIKD0wa249hBRqfjlLiqiVPTZ8TRqEZT8u2XslkpIgAxgdxpnAFroNNgLC57ITYr0tDVdwDXb4LUR/KkUBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749395394; c=relaxed/simple;
	bh=od2lMwLRlkHbFVn48beo6QacPaaKXcOfaBDez6Fio1k=;
	h=To:Subject:From:Message-Id:Date; b=kLTeBhQEQ++YzZcRM5WNKABEl18p5vNtWuO8sOV2eSFo9inoZe+6QbEocM6kFCJiYmsajOr0etJ5TrpiDDevREGkFyJY9tr3yntek0RIVvcO8NRb/uWoQh8ek06mtWlpHaEb1jFEqoxtGYcIofT2i6lFV4nSkrYxo3Nyjee/9Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NW0FU5Sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NW0FU5Sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA482C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749395393;
	bh=od2lMwLRlkHbFVn48beo6QacPaaKXcOfaBDez6Fio1k=;
	h=To:Subject:From:Date:From;
	b=NW0FU5SjGt8K6U7m4NOCYcPMRVHVOR/U3HKgpXTiRcQ6MynRBhZSTSrJaXU3uVXeY
	 Rd6dmoJ+cLMuC3XUROYLqCk83UrcC/Kcw0LLnvSQJMg48Bs0kw8PFBeOshOarZ+Wkr
	 atPXqpymPcsVoZFT2QNLkgrF30YUwhY+cqE2POS5Fzob0/Qt0mBmn3jcOwJO5nLVKU
	 j8FFAgh4SSZL6QU6vpSxubpb+pKq03IgnJ9oWBDP8Os3HQYQySMHcjBW1kTCeiWHvK
	 Rdz9ifJi0aj4oJSZDGN2zdU2/cYRrIITrGIGCUjEOYSTyVEhgptrKfXXq6+JOPyBgF
	 /ljFPtQBl2wWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BCCC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939539358.22962.8084157509482960634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67347f7cf1b90c2283170182c06d8e7fbca5316348bc7efd28a57c107f62e15f
Date: Sun, 08 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749395393
