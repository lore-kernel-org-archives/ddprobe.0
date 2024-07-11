Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BFD171AF
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720667243; cv=none; b=p5KPhBKsoHRHBzfoDK/PJA9WG8lw5/ythtI9ZrrPaWGcszndsb0MHV08apPjLmZt0osj6lkjYSDui2gc/xTkMeQEuxffQAeasWwbmxCSUuW+bWnnR9sUW7ftX+/9sofFrVDZhAiNqeojZuWx0TZlSQERUPtNIFsgTP+mlE6OzbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720667243; c=relaxed/simple;
	bh=Z2mESLoZecebMpKscYUT3pxi9NbzmZgltV3k5fY2r3I=;
	h=To:Subject:From:Message-Id:Date; b=lLX5o/j6yt5UJYlzPghLbst6tIb0LHw4zemmUNkxHFcUU7V182zMsCbhFwgpiLfCY2fQTN9HWSa5axL3+oToc3yk1yCguY8MsOCBqXwkAIXp5UKld+J+0Bbb7ERAoZtep0kDkful7MrWL44dVwCusL5r3FscCzUvD1cOoCAMu/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFpKMDjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFpKMDjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08F4C32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720667242;
	bh=Z2mESLoZecebMpKscYUT3pxi9NbzmZgltV3k5fY2r3I=;
	h=To:Subject:From:Date:From;
	b=vFpKMDjbRK6P8gaekpQPmsaNc2tNFpaGlZwrCZtY2OXmqjMYo0SYLN/bbWjc5XF0M
	 EvF1T7ylQhBr85W3Ggkuv+sDLlURb9ivZAa8nPUC20p3MuC9+Ir65mQMjnhX1rJrgu
	 D6cI6PNqJk+Wzk8HtUbtzsL3KYR8t5oIfoQM5mGIUUUwg2OF5M1V5OtLSDH1VXMs2i
	 xfNex7oY7Xw4G3ie01q6SKEL2m2rRgIV2QToP9gWr7Jo+AgPHR4Hf5oeXj6QuZFwwF
	 KoOnTBWkfhF7wF8Fz0YFM2dqHKjp/d+mfFvhXulXNgXrrTTYUPuj7WhucT/DnanUN9
	 7bcKyv9yDD/Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8146C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 03:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066724281.24200.14618943966288630554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7010264a09de48fe6824cb60dea876ac09164b92421087e82ef3846b1a3aa298
Date: Thu, 11 Jul 2024 03:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720667242
