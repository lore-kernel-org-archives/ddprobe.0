Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165CD281532
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763044794; cv=none; b=dp0z9Og/B8pfPCn4qJ5OjNlzuEyMX5B3Zm9s4qVIu8NSt6BwZgkKB8BC4AUxuM5M7cB/EPaaDSyqz3fHjKd/T/ZkA8qzR+csQT3c/fzdsf1FabMbLjK9yZyV6foLhrNYt3jUFOCCoUNnu73caUapA/+gRPhzakr8lQhWcmbTsSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763044794; c=relaxed/simple;
	bh=mUsTkPSOGgllppmJ3kLN7pp/9znd1LFF49tE2BFGD6c=;
	h=To:Subject:From:Message-Id:Date; b=BP6OCpkS3Sg+Qhsi7z13haS8hNJjkt5C2IhyI/NznK11SmmTSM4RgtGJMQbUpgRBZgY34LnAyluF2SZ9jSd3Bi8rshoZZqFkC9HeiR/846OhaiDaSwh3zTpEZCMt4zrw7y+BhQMR810lKxD832miSc/iGoVuIYuu7lGOpglhZrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI0/5ZGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI0/5ZGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A970DC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763044793;
	bh=mUsTkPSOGgllppmJ3kLN7pp/9znd1LFF49tE2BFGD6c=;
	h=To:Subject:From:Date:From;
	b=BI0/5ZGY+2cDeS6twNesshlUi2h3jLsxGI3uZlbVM6yaCdJjUi5ldkzqD8UQpOf+E
	 LrWRYcilHs+0SNdLEjbpP8Eow5aqY3RWtU3flGQ69PjPUyErBfl3ruyezjNKV6Mu2I
	 Mf48Zkwa2twPVQjgmiaePS46hrDBpjBFwE/51904Q8ZrMvfQijqFEAnJWkmRTv1f3Q
	 SUtePYIqgzIW3sVPZiknIUe2kVsxUrisIIrbFCg0K/LEQI6hieV6omgyu/eUg/ibu6
	 xesMO1uq6YPs9nCtzsbdMjPzrykZxpTmpTShOgD1f+THv0fmJPguDs9kbVjWPcwRIy
	 AwuQKuPXEHvkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177DCD6E71
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304479358.4614.8255495991273535943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa2fa039d780910b4decf69c6f06580f2a1d5af02f31a850ac4f67f56465d17
Date: Thu, 13 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763044793
