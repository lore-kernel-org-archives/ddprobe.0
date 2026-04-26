Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1045270545
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777237654; cv=none; b=EecT2RsgQyfLDWa3FED7cvx1aV/pDM6DODZaXnPhk0Cwewr5c3HCliWvEmMkJoMO7LwvNQRPM2Kl6oUX9d0q6TjsfQH5iZlV0/R8dTMUdMyXI6qma+Jdv1YrD9JyQUulGuYzMmscosinrDPyTBVuDHxXZOOXMO1N/tqwWllrons=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777237654; c=relaxed/simple;
	bh=gLB4/FmKoOwLwjHraDT9pi2SCCtWERXffhoKwoDCal0=;
	h=To:Subject:From:Message-Id:Date; b=ne0Dhj0S3Ac1Jlc8J+hCW0uSm7iSCO1JBBsJqC5eAEQ4MFW3HWVYfaak/p++GzEIeDQRIjyrpW+PSagzIC/gvUIz3rnmvOv9QoFhKtmM1kyAF53jg9rkxPmfBhIaEFruNIAGI/wLV1lhUF7xuNZgnVYwCsePQs3sJu4KGZvh1h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZL56zS5U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZL56zS5U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C294FC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777237653;
	bh=gLB4/FmKoOwLwjHraDT9pi2SCCtWERXffhoKwoDCal0=;
	h=To:Subject:From:Date:From;
	b=ZL56zS5UOrIgqo1eFITHXwSJ9+dawRSTWyOZQyve9VVJM5QltsnAEEEf/Z4+KsdWw
	 JoAyT2gI8fi0c8AISq4zCaKXKvleVb1s+7PqSMmXS8i8L5qqzcQC+6xgceKhqWFi+0
	 mjyoRbB7A82MLQ8jik+lDc5iN14w8ZfK77lFy2b9w9QPOVUcLbM7Kc6aC6UEuBTVaj
	 tnhfCytdUj/SA5844vN9/EztHmuaucYNY9u/1YWwFWulX42ywR45bIllWul7Ez2Ulc
	 g0Cb/ISyL3ADuzOuVFg2erbzpB5dK8GBJzNLI6T1Z1UP45KtjAZ0Zohrm+C29Z02/y
	 cTHy6sOxut0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B05FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723765369.5380.17100339176737515170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b78f0317db74c2a3a1a9cfddf79782f313710c3ee56fa6fefd639e73e901714
Date: Sun, 26 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777237653
