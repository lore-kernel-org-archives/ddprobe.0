Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9CB20766E
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761338394; cv=none; b=NQ4B4AZecUKULY9f2gz7PEp35Qi9nkaCiElbFXbXOqxLoguT+KhzMFpdL3SsM3GGvrjCA0myFdEpfdq5OyaMj8WkNzwVNnAvxhh5x9vT/DG24QAzEFpwxsZQ4J8rnadMYc5zHW1EWtpnArWW13EwxaGTx1VE1T7x3s5Usrcxkqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761338394; c=relaxed/simple;
	bh=beZXKdM4RtywrE/MNv0pAzuDYrQqcQtHTKXqRM3R5po=;
	h=To:Subject:From:Message-Id:Date; b=Mw7cV+UxdShZSp0MI9baNx6d+x5YraEbaueVwh8YEzKvHbYMu+oJQlgQZgqkXtxC03eOeHVRAXjfb2nYZj3N0l6YmTm57srvSL6oJtGamSvQ1U+2wPXC997E7QlGYqR5YplKu4/JAQcg1SNLnmQzV6tw9nBIkl1v9i3sUhHUE6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxptECiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxptECiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761338393;
	bh=beZXKdM4RtywrE/MNv0pAzuDYrQqcQtHTKXqRM3R5po=;
	h=To:Subject:From:Date:From;
	b=lxptECiVBp8yZkWiL4vNGIrOja+NDffNbUsBwUOLlPcsY0ZtV8nmk+F8R8J/oRujR
	 68D6BFWeJeqFm0USFlBYxaVCrpU9nPgI7PQ+woP6FnSpAo3HqPUriCxjjecQWbQG/g
	 utzAgfbFmJ+ut5XrKQ9NlbTLZ3CHKMow/adI8DSWnaNuYYKxY5E0ahHqy156hf0SeG
	 EdD3S1rEl/oyYQXrddnQtNnhVelVIx74KHiLMRCCiHPQcPT+fgnYab8aSdVU5aS+sm
	 r8iMLSIjCAJfqwqNO1hthtfa2FbTN3pG1cwS1sV4mKVpv0MZ73ss8occ4uEaET35wJ
	 8ug0iwqhNmf+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CBCCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133839358.28327.13763601723494328437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb350128d3673b0be32d3288550bd28ee56fcca690242a75ec6abfba53339eb1
Date: Fri, 24 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761338393
