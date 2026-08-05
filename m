Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B56719D07A
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785891034; cv=none; b=CG49m99DXuyKqOaGs2M6Ei1wPl7QbtCnAfCSHRCeyTDuPOvaotvasijhxTbVfzj9E6PYuUyJghzOt9nPYCHPVESrdy15qlkjBrVIu9piss9HPnHDy5h1ktO/keBsFY2Sy86MDUlOKkA28psDAqtjKFKz2uTLMAPJbrCFWEDuU1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785891034; c=relaxed/simple;
	bh=kSCN6gVj1BD50Mh3ZpdNESyuqh59t5CJuNKGgVIF/qM=;
	h=To:Subject:From:Message-Id:Date; b=u0E3gpBSwacLMTkKi1iDr0sIgd1ZBGiBu7dpUFddEfGC1Js0n28UKdsR/DeI3TZkOpwN8m+9HqjaBhD3NyW+QwuOwggYi2lCRcVbOKOkny1/chjelZcf80e9K0EFRz6cx1+xx24LEaSZa/VF+5kf5eaqILy8nmt/6nH0UgpJRtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qOMPHDPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qOMPHDPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D144EC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785891033;
	bh=kSCN6gVj1BD50Mh3ZpdNESyuqh59t5CJuNKGgVIF/qM=;
	h=To:Subject:From:Date:From;
	b=qOMPHDPbwjz4VtXZpst92zIS7llxr/FvHrrY5afgMTrPlhWxzmGRNMkgkQWtXSIAP
	 Df01gRNQ3Ggp2SEBpKsIDbTzXyEzx5+MlrbqGA7sBtTiVAfmeqvN0OP1pEMErKia+E
	 hFseYPUDhdJg2sIDf1pLYZVHljofaBF5nCyOYKgYfeEvuX6YdJWR5QadPEwOEEHtgS
	 /QgeONudCT6miCKjJNMoORsz88uXcp8I8sugs7soO1jziaJbe4sjo77SBDuiQM4YN3
	 SzGIpbo+46JsrJeB8sypxHdTEAkEezdl61bXjcmKvDhOWIFOFpYF/jSl9wXg52Ovqi
	 fXpmsdoR8r9fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A0C55838
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589103368.27631.9219484072285755565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44014df62a787798306a676c46ca286092d29af4893fad5fedf098c943ad8e7a
Date: Wed, 05 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785891033
