Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079BAF9D9
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754033994; cv=none; b=JOQl3e+fodYYn5/OKEMnnzSPKmCgcN2YgVLkyZrYE8GcBnttSbvjlbI2xPC6OBjz3leLHnXTdNHrhbpIWSSqS+U24aG8qFGJ3KqZhX5L6tTxnyV2Sen4N0tGMukUKzhlEQ/ZrGgkcR17WVi1fbjIYIuZzpR6bfJ2dMpVlPLKD9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754033994; c=relaxed/simple;
	bh=6RpZ2BhFujauZE5uWWt/m1Le4hLv8niGJqzLfIP9efU=;
	h=To:Subject:From:Message-Id:Date; b=KBFQOZwD5wLo3B5LtF/O5lRRpSVICxUmbkEcCfXQWztNld1d8mpMlBX0rit0AQCeACpI1mmt6qys8Zxleo3vSXpayZ0vADVusFwtjeF2TwMEwlc3NmHzsc8t3cQajdFHNVRNPxzmGNpldvRjIeTO0cV4TLnacYhbaZZxa+XiV+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J13geD2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J13geD2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BCFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754033993;
	bh=6RpZ2BhFujauZE5uWWt/m1Le4hLv8niGJqzLfIP9efU=;
	h=To:Subject:From:Date:From;
	b=J13geD2XAQi7BIRHzUmmeskoQFqVa6GKbYyhAMiKz2X8tL4TP0mMTxsxLA4XjZpZ3
	 ehvNR8IFV6mvJqK3jhnPKCbbd8OOcKHHiqJrBDKkfQPU3/h435slymXimBLmmMcDQc
	 rl/DsmBdtA1rPTsSxAsfrWrg3BazSdqXtu1gniwvSF9B4Csl0AK5PIy8GOdqY1WETo
	 NLgasKbEDZxZIKRqVme2LQb85HCpCL+p8kx9DNPEzvsYoobosW3bpGEhj/wKcmHFeG
	 5toLpzNl5HzJ9ITC+dumeTgeJEya9nb+Cq4XlWEDZpRpyAPGUrZp8BviJn+z7DEw40
	 IUS7ffTKcShVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C6C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403399358.27421.14685321571780048203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e95f2db47129d585f8fa8f160dec67271ee348867056530b7b9ce61d26ee19
Date: Fri, 01 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754033993
