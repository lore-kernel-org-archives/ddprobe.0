Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7A7136349
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766312634; cv=none; b=CMmFWesQJ7uABxxJ9AAzwBKxXOYwTnqi3jvj3fjagrRjEYqH5WJwK3airK5Y48uFzalGdOQ6eMDTNlH5b06wf+Pe0gzmdKgQiAziP55fOqj15oHPtMMsp09PEuKueNSh7KuMsOnsAvsC5vztYg6L7rSwteY8TPXpvdpwzVPOqfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766312634; c=relaxed/simple;
	bh=XxgLsz2gdVPaZh2P5aGq91Df5A4DF+ZoCL+R+tN3UNo=;
	h=To:Subject:From:Message-Id:Date; b=tjApIScLaYqaapNcYMqzibVvQP5VLARAuBU9LN8sba+JJbbDRa1s2IhyoZX2n6SC6zTbCIwtg1CXXbreo3rEIKJagmeS56F8STiXNeUEIu3dPVcXMN6d3ZA9YE/DQrU5ut30NQMmAmZdRylApxAeYt23cueyCTu3V5hutYLz0sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLmuJuSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLmuJuSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BB9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766312633;
	bh=XxgLsz2gdVPaZh2P5aGq91Df5A4DF+ZoCL+R+tN3UNo=;
	h=To:Subject:From:Date:From;
	b=bLmuJuSLT8f9/qPSooh/RQzDQX/4D0bNhPm5tGt5aYwGY465ZKN2EHPepnA80Ts0/
	 HrPLiPFOT/81+ugc5e9CbIuEuwfng/X/EV0g1BfqpizctrDtweNMzhzuw4aDE8HsZa
	 tJJHwLfcfGZnetXHe+yKf9FQRQJ+F0SxdTnNRjn1D42JtYy17EgVrRQHs8yEKAJt/k
	 MtHvmRoEz4O9PdtM9JUgW3VmMR1dk/XoLwNxPcPu+HvmASyq5WBM+Ih0pel18pxg3K
	 RuYPt6kZEaZEJ9r/sSImbr/DpGntu2SfcqY8KwecypdOnIHwWJ+rr/PsoqneGHknnc
	 N4wVuENIrRn3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95802D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631263358.27313.11755035491521026509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406a318419fca4b4b091cd8348f54d7c4aa7b3b20ab43b536faa8e4d88ea448e
Date: Sun, 21 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766312633
