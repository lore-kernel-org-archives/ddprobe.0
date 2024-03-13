Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B236664C3
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710356297; cv=none; b=Zi5rKGesygMTl5VJpCZqloIE9rE8ulACSBXZ/9EdQE5D/ni54AMTD+uENgWxFmpiswabne7GXYLnZ+IiXmVfJEduUIQWewo8Ett0NI805mV8+FtF1aDEei7/zjZE6eT6jFG2OpKRVfTx1Iq7eFFwZFDP78MwEvLVCLdh9CXcE3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710356297; c=relaxed/simple;
	bh=fjwY60ctxxalzT74cQm2tuq5/7rriNhjy46nX5CSU7Y=;
	h=To:Subject:From:Message-Id:Date; b=ctlrlnnKgs41ogonsESsT7gMgsZdgpXQOV/HLk95SJKbbVGs2ErKyY+uYLilAWZg0pGmVf7qjH42MI5R01lgpQOypMZtaEMaLR8ixm0hIAxBWLUHOI4YR3XzPyjeBxmOPoK+BoPfQiEmLvs9gkEDvjH9SsFYbyLHfH1Sm30C+OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Reqh5+M4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Reqh5+M4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90D25C433F1
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710356296;
	bh=fjwY60ctxxalzT74cQm2tuq5/7rriNhjy46nX5CSU7Y=;
	h=To:Subject:From:Date:From;
	b=Reqh5+M48Vk+lrLFdpLoLiJZjZMv4gkfuuALowr0hd+saOOE2W0/CRlj+HSetd8CD
	 BtXOKFMixfnchJvxQNUOBavQSrqq1C8UfbM1GkWLrcWvY5TeBzjvvwqDU29VlA3fyu
	 L916TAfnm+JhGI32oQLoDazIPJmx2+yi6pAI4u3NxTUROPdLJvoF9vA6Kn/fUl5QH6
	 YayTOLP6iU7s+DwtPjKZL9vwUONiKXffbY5CdlobJsxgdpxCxebMrxo8aBUpul4Ild
	 BN5MHYp7taaB/z8+4e8zj2bx7+209+0Da4em8LQzUyR3076731sYXCU3kyxcvXSb4O
	 oNatmAD5lPQJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 701C3C54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171035629643.12430.9055730986869339422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a24c4d027e31dc6ce3c281d45619b9c2303363ec4d1ffa684c9c28e9a83a29
Date: Wed, 13 Mar 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710356296
