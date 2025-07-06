Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3B22AE96
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751798994; cv=none; b=UPUr95PJ9EriM1JRkyCMWZvPz1pUci9fmFvqRWZOwWt0TeJG78TI//+wAnaPv65EhGKN9y0dQOsv4LLX4qkDrUAuLRZYEDhXmFiFqeTHuHqFE/qNa6RVoUiTiMk+XLzbKygtcc31jcc86W66ERCLB4XGQ2EZMCba4sVa9OqZ9SY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751798994; c=relaxed/simple;
	bh=YFm8ViuDoU0icA1wfEeRKzzVUXDcH1e126XMjxIQNNM=;
	h=To:Subject:From:Message-Id:Date; b=laiuRRUcvj8mESK+FBVnk86CCBtgxAEUTTqRtfYvQFquyG8Owp6KsesJAql+BzsRYp4JE3EI1rBykR2eUCWN8QxzU6XLa728vHBWoZ6AMsbs5Ewf/zAtgUryePlkRLtJAtvesXfSaGzTv5qCt/vsPsfcblck76QL1971QetbAeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pi0nobqS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pi0nobqS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3585C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751798993;
	bh=YFm8ViuDoU0icA1wfEeRKzzVUXDcH1e126XMjxIQNNM=;
	h=To:Subject:From:Date:From;
	b=pi0nobqSjCR4XznhOfcZqNXJf22xe4fqaaoW2F4SkNws0oAHYfoNq5SwRBSBhB8pS
	 1Z4mKTGIYcHSgXWTXquBuL6YPVAwgl9Dy6t5U9N2JO48FqGwE814xABu1SNne85+O1
	 mLmnQ1IKz5/zoKeqP8N7EzcEk8JrMOPUKwTzI2t5foxUbMIa3B93KVXxShedUO1+R2
	 WFN5WUwyd8OA4m0A9n9sIZX1JKK+1Me/fSP+/lf8g6muVQAV6ydwbvsd+voxUQIyiC
	 4FU4+sBAkqDbPzjoHHkcj9wyRv+JjFXkk/R8d2ggOcBeJjRB6JbfxP5JgumHumj78S
	 qBAkQuZ0TdTow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C0C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179899357.15823.651101807310786940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e11207530142042e0cc73a31f276abf80cd59eb67195dd64051d49b0fab3b1
Date: Sun, 06 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751798993
