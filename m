Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344582D023
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747575597; cv=none; b=OS0/KWnqTHfEh7MTpBv1RL1BQFRknWNk0ku5G0WDYwRNgVejOk1jz5S6jEwXHGvuiIx6XyXvTrJFy6xauWT2wngs5M+3B4RZMuntOh9ki1nG2D0hMnGT/97h8dr1hELgkL5ywcw5YqTvH/jrynNWUQ/xQj3xLIK2XfDY7hOeJ5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747575597; c=relaxed/simple;
	bh=GSWFwmS/WqDa1oKu0odJycqRqvuUanq+py8ipAqr85k=;
	h=To:Subject:From:Message-Id:Date; b=ad7yw5MweWTwVK/QZRHMVr7L5RbQhUZfVvkis9EHQeOl818eRRJNZDg/iqs0XX7am5G6/gL+slvg9ey2NlYm7H7e8P6YwklHWAzT/jQ4jcSKfjysSpi1k3ekcu2KNuJIdrGFziMn3WXGTfzpBraacZVnt3fdh/4MV1LGM7xJ720=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAMxIRac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAMxIRac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D8BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747575593;
	bh=GSWFwmS/WqDa1oKu0odJycqRqvuUanq+py8ipAqr85k=;
	h=To:Subject:From:Date:From;
	b=MAMxIRactzYJLbjPO5NNHLzNl84Azr7edX7NyFrCtc5nXEy+AiNJK8ZYK37VtQRlV
	 zUhSdTf7YpPKe6AZBBJj3G20uTPUzHOsTqj3MAwSdQfSMWTEIm1HLMoYfb51hZAVuM
	 eZ7f4ESZUhHq9Fi7w5eC+aZTSALvwA30/wHGw7RS5NbFT+zRVQdlxL9V+9SZ26mJXA
	 TvaiRPZdB3SSyaX74un1BH6DsCL3ko0bdU895Je6l2iO08p4t81h/Haa1Ydr5r9kAB
	 MLw+mqohj1zt52IYjnvIc3X5dUCKU0/u+PbwWi5FXZWpcS0xkUuABWEJK6UGOJhZS9
	 QnAvZqeDUSvCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9468BC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757559357.10518.15283713475659029896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7614d16eae360dd5344fb9c9fa5ca3d48c3a099bc7832cedd63ea1a09eccbfbe
Date: Sun, 18 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747575593
