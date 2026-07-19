Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322C32DECCB
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784502514; cv=none; b=nC9U/Dk36wmdxKD/RUwMoYrJ3UX6IYXBFX22nutZCHBDeOZbDVkh9aWFON0hCX2V/FTiZ5iUbcVpSh63Z2tlSobdUAVVEcEX8UDnMBdcrtHabcgtCD+COHZK6iJd8TzpfKy7eXeCje0CF4e68xeU8F5pQkaoWD2FaoRanZ7e0uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784502514; c=relaxed/simple;
	bh=czVoL4i3y1TMKjR5iStZdmoh4PEgndLyY8Wrxt1sJgE=;
	h=To:Subject:From:Message-Id:Date; b=D5pX79wXV/6kzU3J7jBw7ZTvVHHmNyPdbdx2MPsTViBJqCdPKVAV2X0jtn0CKRVn9sHetarilKP+hbLzTaEpdrnbzzMeaaIpl0+WN1Q1ZkiC7StzoD/JEy6rKFBPOYInUaPDJhbRZTEXN15AY4LsxDtsem5uvt7wgWjYa0geP1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+vsr7lO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+vsr7lO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60DEC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784502513;
	bh=czVoL4i3y1TMKjR5iStZdmoh4PEgndLyY8Wrxt1sJgE=;
	h=To:Subject:From:Date:From;
	b=G+vsr7lOie8zDYIBWSbt8Y5NMwUQ0Vmr8ifYQVX91CN0DeIjx5pBkm5HrjoAl33hN
	 5RrvDVdkJkD83Q8IRDxbVqMUuo5+oelWINulOg4DsrYBnJGf9+nIOOs0oAD7pAn+2c
	 4gaPolUbnJz+YJyNo6bHjUfgxm58rCeHz0J6nMo8sUKfDxVm6ClWESokzLxRfFOd9U
	 eIsupMh+0lcjcNr8vC0bEqKhH9yxsC7XgvJ74Wc8klGjYI7Jicwq/R+eGIEF7+4MRW
	 SSXzVg+1mCTYYId4F7AUdiZxtKE90e5RJzMuvVaFQl8uwhXehaA5p0pkzWmjKLO9wT
	 wKj80igdlHXSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE177C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450251369.19077.10847759622466722859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be133fdbbe8e7a806646efab0f5819b44bc125053bc1f195132bb40d9c5871e
Date: Sun, 19 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784502513
