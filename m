Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9EB48095F
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786633834; cv=none; b=rCXznw8TxmEQmLM8onVEOO/IlqZvTDczl3pKhCgtXgKO9ofSf1BT8hmLARNzjxsR7bPY16izJJzkl5uuXvXwrRkIGkO+mdCtvYK+2aPn7bmYYKcLxC/5p1i/aHrmMIMkBIpRe2AzLA275VWWbG+vgkqzBQsmtDEE6CkNF8tm+3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786633834; c=relaxed/simple;
	bh=mYjWHtbOH3PcRDzqxJiS0iDXg1R0yg7AORKgO2IszKg=;
	h=To:Subject:From:Message-Id:Date; b=YU5mAFpimq05tc7TexfGB4Pqh0Wwg6Y7VCjl0IfBa8HV7hcnQQ+VHEraSOeV79ogV3uzOAOYjFgOkSTIrGNhSVLxm1ngEGQDzYvkZEh5DcHe+29A8ON/KdNZNsaVL2MRYUDb08V1BjxptzQvmJAvE/Av579I7AhZ9NOO51rVNJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4iRbY87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4iRbY87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBBDC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786633833;
	bh=mYjWHtbOH3PcRDzqxJiS0iDXg1R0yg7AORKgO2IszKg=;
	h=To:Subject:From:Date:From;
	b=n4iRbY87/VlQrfHQqXpxY+Z0JzMVKPwGQ0DnXZ0i1dB6ZXnK8JxXxLjB4tOv1VMP9
	 qKakxSos1yFtmt/07Z2aHamqAPmZu80YHp1ET+zMS3d5nNFvRcmkQYWxTA5yi5ecBA
	 KXThj20J+hOL64/JUyEpjsyPE2y83rg0RV7qLoc0rs0j6zfDn5C1WNb5Fpc47KttFt
	 yYPCNkLQzUhBqCV2N1OwlXfGhU0lAsgAp4/8ffBJbRfHAJV2hIuaMWwrWzRpXmLiVw
	 bAOdFwemDIxNWu6uROpNm+nek9t+H4wPb6hiGGUTyhl84wLQ7D8z+V0PPNDUL2zIfM
	 26+JIo2I1Ru0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9790C5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663383368.20935.16427969101958997417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3de63f1ae5f0710d76056fe12500273547e7597d795de0552631f4a12d0b954
Date: Thu, 13 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786633833
