Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E146301010
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762769994; cv=none; b=cgV9P9kl6nV4Fp6bTdLWjnOv4MtwavUzpCBZF6/4DVZbAwxyxf+MQmKJsstEvueV0toGOTY5FJxENGzAYaAnlOjqqxiLpLTFtcXruvYLNnf3lfnDmv/G8rzjXOlesTyZDhyRSc586CYKg2OI7tTsp+UQugt5CjEgOCqMUCqTGbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762769994; c=relaxed/simple;
	bh=yo7NKTfgXOu1KBNRcnXTSeTOHGYf3n8/Q5NdY0mfCdQ=;
	h=To:Subject:From:Message-Id:Date; b=KRTY0FuT2eillF29jCilDQnuPv5jdnjRE4lCjTjbQkxCw7sbyYUIvMggkzQSPvBGAKN8LdhoGw19hIrcf3MZSpmzO/4jDoKaigjUWB2jd/Gyr151iMjt8g8s5ODiUE1SV6opkMpr98kXB+BZA6i65QPd9iEh14jRbq2VRFZEU18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry46TuB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry46TuB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3489C116D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762769993;
	bh=yo7NKTfgXOu1KBNRcnXTSeTOHGYf3n8/Q5NdY0mfCdQ=;
	h=To:Subject:From:Date:From;
	b=ry46TuB+ed8GK6xcYDTUzW4zA71GEb7gdoTsSxQ1XlRwjhljSnC5YCg6BscEouJNO
	 3JC1n8n0VB4bzCq08VQbN2XHRMi95WVRzUndYhIiKvDxI/rmXwrQ1OD+9NIuFJM9C5
	 4oBc0xbr4MERLv/nOnb1tOBDjAMf7f9VRBcTbJYc+bnDEI6L7qvyuVm57a9dLwsw0M
	 i9c3DkGslw6zxPJRQBKyc4mWmOhRbDPOqsJRob8LGS5HwUcFNCbMupUkQC5o8soWmR
	 EiQMFbbTDJ3/8x7BQhdlxhvxQqY76nhQ0uxHc4xD2zPwNWZVA186MnPQczkrnPr1pI
	 c4fw+JoUqYV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C85CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176276999358.21056.15493988419941698444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb9fe0b8841bfa116679eb4cbb9b907668b2e66b3ba2eb6652e09746867a846
Date: Mon, 10 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762769993
