Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3542BE65B
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753966794; cv=none; b=ZkmryMtA5Ycx7PZTvEK7UzPDe9ZqH64WyDP3OF8k3KM2iQIl7QUSIhV88cGgZ88cegUtDWa4+4Iggp3wcADtIGGjmiMIFSqcSrRUBMFFOsn/CwHT+UFgi5LEiVPBzikwbfMvzzgG3OmCWzMtDprpfzsvuSBDq5jxcJ1WweT27fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753966794; c=relaxed/simple;
	bh=e1JGYS2K0VZu1VJhJBHNxmVDYywSfTjbtXUN59cPgVU=;
	h=To:Subject:From:Message-Id:Date; b=dxaFebsy3ECIUYxtPpvlbFp8CPLjDytNjsTpjd1Cy1xHOnUdOAeKF08WMG8lR7yrIPrTuN4bpWVurCQVZZoJxJQGp0E51xY7pnjhtKpuGnUhcwtd2a61df9/vdi1YUMRUEcKSeOU1dxjmCybQXEdS/0+FOLoEFSyu2nCrOkIg1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugCloV0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugCloV0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5973C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753966793;
	bh=e1JGYS2K0VZu1VJhJBHNxmVDYywSfTjbtXUN59cPgVU=;
	h=To:Subject:From:Date:From;
	b=ugCloV0vYhhuqRq5FC6VGZoVCc9ZjTuLSCtXw7CBhWAfextrlQL5ZL+hRpXR0kpOF
	 jp+Fjhlg3GUGpMCwz5mZNe4QWA5Cj46Tw+Zdydl+HFSRWtP2kVNK9m7nATyFdBDhWg
	 kiwQkbtz04mX6bBVbEC1MQc+aPDoXnBn6L9VvwKuDLSS2ny1EglVqMY88zukFNig4g
	 Ueyc7f9YsJL2Pp8KHzAJu/AmvSQ+YUtNs0IMchf7CS5/39/ifJAg1QXK/sf5oK3qvF
	 2SoXKDD/9qeN+ljWa8gsHItXxjqKQUq08H63ld2U8TEddjinITuXOTGZ7LGrv9tTUW
	 FhiB+45zHBeRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92156C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396679359.31446.12046162157451575373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc627508dd64d269ffe3c63238f3c7f99e150c326748e3033cd21799eddf6d1
Date: Thu, 31 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753966793
