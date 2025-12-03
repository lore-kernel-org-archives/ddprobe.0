Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47DB304BDB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764781973; cv=none; b=VSme8S2HgMBv9fTPeBJ559aumdjD3g0CnszLDif291ufHtbmnTXzaHwAy8i+eciDfkPQhfbv+86xgKplBscn3jCtsN0rGvdbRK861JD2RVu5KUxa+b1qzlF5addmVH7SDIBAA0aHNRr7kcC9bYRpYoVfN4jwSr0oedZa+Y9F3ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764781973; c=relaxed/simple;
	bh=F4NlVTfM9iggPwn2fpJdigivqpRnkJfbSNrVbEEx4YM=;
	h=To:Subject:From:Message-Id:Date; b=oYzgVRWfSUaHes2GdnB7Sv36d+hHLaAxVhlFhwklgnqtIcF+MDuqI/sdqYvgf/xl3OL+aYVrzXTEzDZDVMRN3SaaZ05MBIDFlT7TgmwOFbkPGurqfApjfaoQkd/kmGKTCFgAzKiXu48TlnQW0v/kFEMafUnbxMGNLt8F59ZZW/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxWC2BL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxWC2BL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ED2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764781973;
	bh=F4NlVTfM9iggPwn2fpJdigivqpRnkJfbSNrVbEEx4YM=;
	h=To:Subject:From:Date:From;
	b=XxWC2BL/Go2FO8xWaWreE9sPSpDJLT2R2QTzHsD98R05L6fWZiq8UVSiTN9oG8lD3
	 P8QSeTbLrDMjEKVh1dShfLkDlaLM/oke/lwEqu7kyiilJaj4A3CPBKfeUSICYqxGl7
	 iLvP+wbV2RN15qY58AXYtukAHU56gKCOAuNMoqiOH8275vaMyiJucE4qtjBzDg2LXh
	 +3rAn/CeWUvkDefy3MGZtwm6w1K5EwtgLosk4p7ZaRW/fMJFkU1UCuC06KdMLV/5bS
	 SVlPXhAstwNYal9wtz4SAzVk30vtxzrdI5nlrdqDjTLpONbFKCECNo3/8zqr5LnsYl
	 NJP5bMPgrA58Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93980D15DAD
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176478197359.24348.4349762630528061977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11d0a36666f2042ea0e1ae1858fa1b73bef1db129f3a664d64d561661f6af1b
Date: Wed, 03 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764781973
