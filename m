Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF683112AB
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774932294; cv=none; b=P/L8RhJXqBNrd7fHFRvfsrEqp/+RFrHGL2SQw0VAYGsqUsd0h3ei9T5RuNbNlyaFiji5GetTdV8Z5OvsTv0i5E5oU40IurDfJYPvtcip59Y18V02XNGDSt8Ag2jB8plTXzYcgd0kNVvIFAWthDy+ZhjOV6/NECem9tDZePQyKoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774932294; c=relaxed/simple;
	bh=v10HeEp5IO9bNyaOiHhH6AGkSY57KQJ1djkxDF861R0=;
	h=To:Subject:From:Message-Id:Date; b=WgC0S7QLoXwTknbE/AApMOJTR5Cjz+geSKldrcavq2SjbVUVXEZSsRSQ70WXn/VJzUY0+PEo2mSM1g/vLz76Q6yaLumb5ffB5aE+hfoofA1U9grcDgET6WnV/3YMRsKlZIX12UY7Jkll7XwOzIj7QCKwUirhEk3FGamgOkvrRPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FekLkSPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FekLkSPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17E2C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774932293;
	bh=v10HeEp5IO9bNyaOiHhH6AGkSY57KQJ1djkxDF861R0=;
	h=To:Subject:From:Date:From;
	b=FekLkSPwd6qmvueC6SsWNgFatFq3zRXRtpsHbX3Dv+lrYmiZC1lATjPNmXPtDRtv/
	 mefIJIqNdbHl0CAn1JgMIAk3CwjK8GAEphXjMpaCsexBHSBXin6zUmxTQecapNWFtQ
	 a33pyMTWo6gv1ZHO5CBE0+PofcIUZSVKTHjRwkKH9q66YWUeY+lKtrefjz1FO9HFUZ
	 d/8xYVaYwHy+fQ15EueyRM+f12kAlzoPlG6Cz7kFH1YSxuLu/w96Ic3bpMUMPdZXyb
	 jVs17F0Vdz0koNbMZRX0jqF8XWql/XqddwnhaLv/O/adXCfzrpbdzkaDgZfXpAnG47
	 XXZUjF3xciL1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9163FFF60C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177493229358.729.7143973106129531379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209068d10baa83c8ef7aa33fe1bbcafb6532d16b5dee6fe481e9970bf8ed2aea
Date: Tue, 31 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774932293
