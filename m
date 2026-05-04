Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAC03A1E67
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777891658; cv=none; b=ktpWodOsQMMaZVHJdek57v7NTON5rMVCCp+co4UGPsOlKZhevkaFaNL7j6WAB9h3GDD/zvcf9fbEC4dfGW7itMZUgAlcZqwxMbrxA4LqjRJYFYdC7PpXU7ZEd+jfNmo49XOVf7WcJZBTGnjAs3kX41iqJguSznjeLcwpOV9V3lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777891658; c=relaxed/simple;
	bh=mMzhqUsHpWKe8+JyFdczAgTEtlXaEa612JHgwNwZhxI=;
	h=To:Subject:From:Message-Id:Date; b=Z0zoRSZdxjo8zIqQ39SrZfzzAGcL65CMfo9yNTImWNkxAH5Y40fLxJBlYJcsS+mR5sJ7KE7Xq8LCLAh0YZAeGSLm9++amiwurH47fHtp0bT7voFOsGjn0IWrS93pFq/wlRlC3jnTxWxnj2MBtQb2uJrFbmoQ4HTP06U6I7Xod50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PO48p+8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PO48p+8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB7AC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777891653;
	bh=mMzhqUsHpWKe8+JyFdczAgTEtlXaEa612JHgwNwZhxI=;
	h=To:Subject:From:Date:From;
	b=PO48p+8S7cjlrKDEN2gAoU3JsnXi4oKaAOhM4mrGzH4toIyuHfMppoTYE+puyfG74
	 r4C3U4viepz3dXMzxnyx7TJVYaHe4L4KNmOg7S7/StZBHZsWgtRSLELWppKsBBY0yB
	 0Q+oeSUOHNDMtXz51XVdwz1xlfFriMuwlTWZCxTjV208djoAZSMVJlsMirIYrbThcr
	 MdC47e637WljRbmY3XKD4DNP+wN3hrDjvq9gSH7T2508AZJ/a91t8H8sryWRjsqyDW
	 pE1JX7pKgvvZr4aO3FfPeve2NsNpUtMDDQyssXObFVDPBH3VzxgViH4XMkrY1v/tXp
	 WX1zlL5P2ahYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F4FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789165368.32300.15711033132107580059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c46da7e669b51bc4a16db3176485b22600f21ee225d30c0b97fd1ac55d75b4
Date: Mon, 04 May 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777891653
