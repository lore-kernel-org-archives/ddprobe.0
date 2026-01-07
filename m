Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5C22877DE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767774834; cv=none; b=H3bQ4eNPOoHydGldL3dgVIbS2+OZkiEof/Ax0MvLEHYij0rmoUVFgvhEe7S0eRCO1F9ARPa5JrO6aIK0cE/XCcNBU14z9iDKnQP9LbEpSKhxg3agFepQP1IF/vxlYWcsLrHLf6+DKkVA7LLDqeoCRa6rE88ntYPjFZX4yMGpRWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767774834; c=relaxed/simple;
	bh=oKzr67NcU1OA9hOKCGdsGCgURwnibHfXCqqZ4ziJJp8=;
	h=To:Subject:From:Message-Id:Date; b=uf0OKksDPoamZAOkOQSTLoBun3P3NfXyAp6iXLf6GQ3sEgI+JF9Ltx9vDv1IiJBU7UylyV+sh5Ndihce3YTzMBpO6C0A+h2W0+/1URYLGiwFiZSVWM5twHgFWQfo6QS29RsCmOOd0uW6XkAsomYlhmtoc386RrYB3DyJAuayMT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7IqSpmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7IqSpmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3883C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767774833;
	bh=oKzr67NcU1OA9hOKCGdsGCgURwnibHfXCqqZ4ziJJp8=;
	h=To:Subject:From:Date:From;
	b=p7IqSpmTpeVmH29Oo4qO6OI8+5RNN/ekLzcj0m+HIsBikvJ9xtXHc4NkknUelNVNR
	 RLMlw7sqWzr0cZDlcb0Cs/X6haK7v3LwWB6uDKMptiQM/u0VBO0cbaHveVRJEX8qpg
	 Caw9L/7lVIMdnbw8cXxlnYoe58kePp3xHK/uNkR0eNP4Z2Lm+Q/Q7xdYfkNU0d4O/m
	 J8w2UVinpkyHtIeVC+Gz5sPs5vc89Tf3aJVNDPf8bCU+fy70j5IlQmND0dbLP8+kV/
	 oOjRzsrPQ4VLKMcEKRzry1djTWHoPPuVrXF2pf8aUZc/aWYnT5RwlgzGsKuTC/zn96
	 zjm+LWrWBA3qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ADECF6BFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777483358.16494.7048410389037984960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97ac67a8f8a98cd1e6f3c33eadfe0c357b726cb6870ab84399a57b1e8bdafb2
Date: Wed, 07 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767774833
