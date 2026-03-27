Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF863590B8
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774598694; cv=none; b=MI0BWCfEW2oh2eFArExZDrcP0xZHCTFpSU43CyvGh0NkRLVDSwmOg5rIk1abyqfJ+j/4A1e80WPmCvrs/90UHXXV8vNVuNWSSs/DZLclflem0XWF5XHuGTuMge346AEsSb+Ws3CCkLui+ouy7y99AkOG/h7HMs5iIj5eE6YFGwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774598694; c=relaxed/simple;
	bh=IveNrM6Com0fzYSPzPDJTWKyNYH7hKu8f3r81pHHOVQ=;
	h=To:Subject:From:Message-Id:Date; b=K4gBt80cXrSv+eD0PKbwfzejbGXQUnooe6g0l0puY6Jgk/SHu9NKeSitkdqRT5yXEZQWA/4Xvd1BtQCHmeLU/OTxsLDJT0y4wi+04fG5zVEhB40TFpokQGmo0ZYqse3nzrpA9kkXaaDuz6z3id8IyoGuek57M0brbSV2nt/cOns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaJLK/Pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaJLK/Pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7229C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774598693;
	bh=IveNrM6Com0fzYSPzPDJTWKyNYH7hKu8f3r81pHHOVQ=;
	h=To:Subject:From:Date:From;
	b=RaJLK/PmrR+eEol2CQdxgUA3mkkk6whFMKLjJ59bDQ//k9KMqUAvxaqY3d6tmTkDx
	 v4JIl+HY+jvgdEotMgH/6CYVvSXiQPqvwvKQYR0pAVybplDCOYr3IjiiZ83rnW9zha
	 t2vrkqV3bdKa5ARNMECNaxwVHB9Mq5lvpy9+h4Ha83uKoTbcTPbeIHHLm5APu6uZNq
	 gAQsQx5w0EyisoYgIp7Jfm0iAaGmtn46t0FmUWGAIRKXEHvXK5uY/ZSzi0H4PO+keu
	 PWKCgfJhckYcmOZjifJfVdHwL77Z7JhKtqXvbO/IIocu9IP4QXWvFC1EV34lDO0NzM
	 74WlSGICV20Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9387010BA437
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459869359.18189.16612598420107254310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64936844e9638fe3b6b351602588a58ec4b88ef6b333f3beddae8c16f97a8d84
Date: Fri, 27 Mar 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774598693
