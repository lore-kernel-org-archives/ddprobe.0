Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330DC2CCC1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750793995; cv=none; b=NIGun1plTbru0KVFTKUTx2mSvodpBOcHre8q+2wBfgGWxnnQZ5zepfsYm1wYn1nB+b3/1iNCVF01dwlCnmcpONpJRWQu8uy7YC7Y6Bjzoh0dJB101mb4Gg3l2G3Gswh8BCclTQvD8X3Nkf8vDFQ8/LnPBrbaMoYRHtUpJVe6Fck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750793995; c=relaxed/simple;
	bh=/HuT7LLmw+RtzVimpmBDYRwI7O2PJHw1U5JmzDvD+Is=;
	h=To:Subject:From:Message-Id:Date; b=ijmgiYnYRsLcaIA6R0ngXEE305JLyetuHLOWx0lsj0Y6+pjYWax24Dz0L9jRFROIj3uBD70sRMGh1oJln9BcgeMHdP9hfFzjktl0S3VqaRhE4v6wrn/cXuHWwJMEebvU47ZDRC3iEVJ7LMBL7ULDV9mZhUSjZbx6rntJb/3HtXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF6/6NjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PF6/6NjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D3C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750793993;
	bh=/HuT7LLmw+RtzVimpmBDYRwI7O2PJHw1U5JmzDvD+Is=;
	h=To:Subject:From:Date:From;
	b=PF6/6NjZIakKqNz4lbmx4nvT3FsHVIn+heUUgte2CNzzg9b55hFTSe83yMgJ4AgMy
	 gZI/+AsdGLOH9MYi0EmX5wtUlwBwbUldz4atfZfOoDf47vHDe+KV8WFoLsDz1heOMi
	 ZnTbtemT2qNLTnQMRjKyOT2KtLQYyFordkdjt5c0aGLprgjnLzLlMVcNE5pS59pekA
	 tgl+shqDTSA827H9m2NdqAfsU7TBTI7T8EaofkaFuPPpvdoJad3UKe85Ui4DSn8FIR
	 tldzfPq4eFhCZiXQQaYVjYXtZ9cKzI8Q+Xk7c4tVkIxDgOMDU344QAtMhmErrtWlQ8
	 H7EZESSW+2AhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8AEC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079399357.28421.17817531488179727565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414b8d4a577aade3711b3841d74d36f501ec0f9cd903ac7a4a971a711745a357
Date: Tue, 24 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750793993
