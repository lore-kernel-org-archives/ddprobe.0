Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379EE221F17
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750763394; cv=none; b=O2WATi350WFwQ+c0Ry9cvZpJgo6g+73ruZ81uLPJtgIZHX/juvr8Ztxl+ZrC+2MhmmdY8FNsKw+zY/A9BEj9WNLM7FvVAPl44fhrGuMUCep67CIFu/1QN2xmtAfcts7Ug+/3sabLl1bgfqnTy7Ph2ddIxi1sSO6E115Rvg4HlIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750763394; c=relaxed/simple;
	bh=5WQQAX/3EUbEX4/BGmuipZM+W0IJsbhFxnFLAIf/Ib8=;
	h=To:Subject:From:Message-Id:Date; b=cfowY9Viqc0vNwpX+3YUS4BiynKHFMK0o+Aq9j+tuPbmsYjenAIcdqTmlpGAQ9ARhjd3WLDF7GSyKgiP8XkH9y5DnLg/CkR3WlghndxtOJqn7khj8YzYzLWCfikW5San7dE4f6BG7h8Vro4TiY30Ay2Jwsg7w89AGaBaQL/lNfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxHmY5Zo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxHmY5Zo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC46C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750763393;
	bh=5WQQAX/3EUbEX4/BGmuipZM+W0IJsbhFxnFLAIf/Ib8=;
	h=To:Subject:From:Date:From;
	b=hxHmY5ZoIrPCe8Of05hB9tHUzcnT/BpWdWg6pcOYP8z5i7nc0okx0OrKn0E1EoiH3
	 KeNU5SadE8nWerRjIMKVw6/r/5lw9TJgwPPTnVXq7QnylPrJ1djGJl5oSlaGyJz4yn
	 ftEScdn6R0NwKR/aWg1MjTp3VnmU+TeFIlNWV1MOrfUnRc+AIkZ32kfP+EFPbLxWA2
	 gH84kNF6T3yPerojLqNK0XhZSg+B2LDHvsShaTPIRAd0wrVqx3bKPDC842JwgJ4+YC
	 lRkhF86BHITvXrnXbl3QkqHEqZnj0/hZ7bKH3jzk5Wp3J5dxDCbzrLBz2R26caDI5l
	 v96BgQS9lDmZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F905C7EE31
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076339357.6030.941956159824533461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe642bfcd668fa4c3ec9b3f9e262379d936374692a5dc7a5bdec5d0d91bdc1d1
Date: Tue, 24 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750763393
