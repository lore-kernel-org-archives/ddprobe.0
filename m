Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4229D1714AC
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735632954; cv=none; b=rhfyWZhHI7LOHwzbESauq1hIjyLTlTWekDFDfQV+KY/8vCVAE2+oHCN1JXJBxlAsYlAUtMBmwhbpj7KXNd35fluvbyh7To0pI8oZTy3WYWQ5zUPXl7bFnUUaVXWXhMBDTyzEqJODov1RkFsQwnlRa5eMEDkIEgAZJQxci8De+bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735632954; c=relaxed/simple;
	bh=vH24sTrfrJwa5jz4g4aNvwy4rjA61HMYLupX2WQLAh0=;
	h=To:Subject:From:Message-Id:Date; b=lekcPWDtFob3poWVgxGQcughSi1AzK4v2QNt0Pn5sWcPFoB9W1hO3vg2Egca3oFFK7RmzXRSPJiApmnfsYvOoa8s+MiiNR/RFBaDHOFVw5TjPZbOfQ4sHT3VPx6kl+ULuBqe4LLyskmZAR/Hn75e1v5ycAXK1XKLYM90tBYc0XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gezWyvkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gezWyvkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF0C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735632953;
	bh=vH24sTrfrJwa5jz4g4aNvwy4rjA61HMYLupX2WQLAh0=;
	h=To:Subject:From:Date:From;
	b=gezWyvkE5EanrXrxYknbrh7vQl9HSzmluorRRihhtlFTcEAiAyAMM9lWxvYtZ2ACk
	 yzTyjLlY4r0eoFl7hU24VHtFSMSEKeUpO3KkefVMeewXcMJXuNhiLSmHqHwVZ+Ioyu
	 a0r8DFFi2H2W1RDKKb210g+Bre8CrHIxf/hjsddKhTgacfFLJDFC0DJ9HApJpLzOY8
	 3vAwkrwJUTOjfelLn2OdvX6paIBqug49an7KGPBmYON4ZGib+9Ajws3rUg0/dbr+0c
	 uTZzCndRP99Om9MmwQ/OBa728PwUKnUvA2r/50xRwWyMfWJEpOjD22JjYSuPe4fgrn
	 DlicU3GKTXkSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C1E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563295359.4282.13430233887890826113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35323007596c17d5fb4972ff68608ccb45d0faf1ccc5d5acf5e354b383d3bd7
Date: Tue, 31 Dec 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735632953
