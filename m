Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9AB24A05B
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755661194; cv=none; b=PeiKLclPSCpZI99Qsq2NBiERk1rzYctLgVUCSr88cAF/4BRlyPSHdomZzRyLjf+pLRH74f84A8moJ86ovTRtCxSi88agqcT8v2j6Lxc0lxmZYIHINECLo893mlBBLBzMXw2odQhVfFf93yrQNvDa9JpcGWarD77V8AIoLOWIsgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755661194; c=relaxed/simple;
	bh=SB9CBhzsgi4a9aktTwEqPfyjTfaHNHNn923+Qhuuntg=;
	h=To:Subject:From:Message-Id:Date; b=SkzUdP3llwYkO5Q5UvqrxYN6BkQxjI6zQYGyaNyDsAzfJPncKKqZC+KVvmJdK9v5piXAAnyzf1ejMk3ddjuNfyaXTq7l1/0k4/F3FL7DZRED34IMl5cJUGb2kfrHPTq51+nF19Zsc4pbUaw1Mi2tVXnrdJet9Bf7qVn+JU1zeAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfe0dgYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pfe0dgYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDDFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755661193;
	bh=SB9CBhzsgi4a9aktTwEqPfyjTfaHNHNn923+Qhuuntg=;
	h=To:Subject:From:Date:From;
	b=Pfe0dgYc0NyYh3x3KrMROtXDvIPWp/pY/6pcfqi8wJeAVA9MCK6oehofnUidUEtef
	 1jLSUJ6pEnN/MdcJXUp0n/Z9cUOTMOzCB2tH3pzTGS5gFmrtxnX3M95hNJGRucd672
	 5OWCK+tVbRMRkhcJvr2LNckkPPeJVkg6GjEDq4Y38t46eGyrmFaU0hsDDH0QBocuSg
	 lXY4lHSznvVoaaeowmvxmbAA5qP9c1O86KUza9iK3qPLzbcwNYBzj8i8nV25VT7n3N
	 Ln0BlLICWLsgFN9Mo9CHFirYsMdVNKhPhnev9q1OnLEE207CTE21DkCRGzE+yRDdly
	 4PDF5CGKcevMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F289CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566119357.5615.2697846830216857348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcd7a9f4bf8b41efd29c26896e920d644d74dd5f8ef6c6bf79fc40fb00425e7
Date: Wed, 20 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755661193
