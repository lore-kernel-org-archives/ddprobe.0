Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ABC19E965
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736417154; cv=none; b=nwIGr/yCNYpFFBHYSEA3kgWaMFxYu9qCH15fQvwNGetdulpOOBd7to00sb75B+5DjjeVKW+ZqzYzqsBEgCxYuicSVrDHbql8yjQhRwg/IzVPPRXj83+Y5KtrXjO3m6zGelepyCJeOtg6/zS9CBBbu0cpd1TWnGz99hekVyEJJ2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736417154; c=relaxed/simple;
	bh=7aNpHCqHMVoIxBcWPD/MN7PO2w2TjxNUQxeBrcVT5cA=;
	h=To:Subject:From:Message-Id:Date; b=rdsc3xGATK9OyOWmiwzP2VmOazxUEhCFNFRf+y+48AEzttlxD3aQOpr+p5ms+tNp5J62mfPU9+tEaAjk3cSPjkvqrcgd3574wkqzHmS0jNLqNpUX1ScEzNYnYPgL5StAJnbtx9tVGW7lTd6qdA8kyW8SSBfMOXNtv83Gd7AJBl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsY82vrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsY82vrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFECFC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736417153;
	bh=7aNpHCqHMVoIxBcWPD/MN7PO2w2TjxNUQxeBrcVT5cA=;
	h=To:Subject:From:Date:From;
	b=GsY82vrVfL3nmKTNd7rENH2Wkk+CHoULGYW41q9RKcP8WmK7daJss11/vLEHqUhzg
	 5MjRcjl8G0nsoIYPb5/3vDSYTuPF6+/KWcRHpsxZW34PJ4Fz7IguoqiaYvY49Ckn4M
	 T1bJn9D+Qufjvc770P1StYvxrCCZeaiKFPb3Lw+FOkEXSVwSuqztzVfHFnMqf+H2g2
	 vGZ3rvkCaZ8LKULWLWCMXv8udM8eZkOgZt/ZrFYXFV7vjZ+vC/6nNdRPJNne4TFKCd
	 5MSPjzcS3HOxZonJXFhokLZeOfr9V6ITBCNmdYoYPVAW1jY2z50BLrB/n4Blw9kpIG
	 rLtnmBWGFMS0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0E6E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173641715359.966.3252000969852478083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc535fbffc45b40c9faf1f6a17fcba20feedb883cd05cd2944353e3c1d2a9771
Date: Thu, 09 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736417153
