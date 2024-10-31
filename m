Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D361BD9C9
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730342754; cv=none; b=HThb4FV0ZxjFu6hNCy6154xfk8GjLgl525obTZPw85v3CoNR40xd2DF+ZGaIjKPo+k7FJlrGc0wGBXarj7IjhMH4d9jI71LkDkAnD2gzysafLSmWyxxlM0RRux3y7oEd5mectSwumzpGztu8X3HrgQDwRBZ8v9RyBGGb5hSSGvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730342754; c=relaxed/simple;
	bh=vkb+Lm+mTa7idiPhj2OEQt6Ak5ipcAuEfdkTz6lz82A=;
	h=To:Subject:From:Message-Id:Date; b=uVc+hAFNyzD97OFn/UupfeIUR+9eD3LZN6h2iLqfYA1VItfPh9Z/mmXVnzpyUHwXKgsL+gQH3W66O1du3cCbKvnUeTfe4qeE48SoQBM2GqEiM2AJCbIxvytaV7/XZRPYrReXVEImtRolVNElYytxtpeYLspnkrBkW4d2WfQXE64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fa+S1uBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fa+S1uBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8543C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730342753;
	bh=vkb+Lm+mTa7idiPhj2OEQt6Ak5ipcAuEfdkTz6lz82A=;
	h=To:Subject:From:Date:From;
	b=Fa+S1uBWj5cX/uOBePaReMeLbkAThZtWph5XTQ7dxduranOz8CVnqMrFCYQIEeJix
	 AHdTwSFE11IZVtf/xJkC+GZHwPZyiWKT+8xuSOvOtUPpSu7+7gRaUIFQ7I/TmbmQ8M
	 Z/2htG2HOGXJmzs7Ex1O+CpkmdmUyniSFJFT6sdBxAjNUEo81wMw/c9J7G3ae14wYF
	 QA1UtQRRe7gE0ov16fiAVYySiR6Yz5yZKp87sMADIedMs7owG/HPHWxD54Bfgco2dw
	 PRF7hLhxamEUByeoPxHPCU4MZGpZUhXCD8dWYmeDONi78pYaHqmAfMv2NmTrmwTief
	 K7EqLt4+7s+7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93813E68946
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173034275359.11483.16990012138397098613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5afc58d9453639f6d83c9658bc0318d50880b53faddfcef53b5643af76404f43
Date: Thu, 31 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730342753
