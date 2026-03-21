Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109DD1D8E01
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774068294; cv=none; b=QJI8ed6FEgYgd3e0kPgP6XnySp9PCwXGdOc5uOZs648mpG7w/hihncgKu8bU51JOal/cBnO7DkhApE3hE51+fGR/Emvgmd/c4uQ3/x2081LuGaahvW+4qV5ZQHfSBMp4GjfaS3R9rlTYYsCuycf4uX8xkO5VIotuzP90q80X284=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774068294; c=relaxed/simple;
	bh=vgweypz1RBtFXTDX9rAURfwLSg50SlWDc+7YS1zCS+4=;
	h=To:Subject:From:Message-Id:Date; b=GeaV0R12yj5Xh7QFlcNanaADDwurYoCgojru1DMbCuLnFU12bIOi+EMcZ7X4lzxc5UNM/a1PREuD1JG7L9U9/r8xlCc557/iM4Z9/uzS2hdvFUSRJB7WgBnx88G/OnG+ri6lXqDwJ3bE1HgstdQMoqV4OuNeSWhRIgd1IpChqCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tv5+B0yj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tv5+B0yj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5383C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774068293;
	bh=vgweypz1RBtFXTDX9rAURfwLSg50SlWDc+7YS1zCS+4=;
	h=To:Subject:From:Date:From;
	b=tv5+B0yjaglr33r+nDFl6xmFY3JuL2rdvfXh4Bfv/a7eKopw+0zpY17tBkf3JKEOP
	 rPqDq8lJ9NeKiz+74qyAAfjWR+n9oFaGN6zDBov9l4VKoayGF9kTq5nAAMJFFNK8lp
	 GnRsQ3phUysDDQmaUcD3bM4CID/s2DvDspL+N2nEZqmSXI8WodoADPI5i1tOReolTH
	 jbFevHeyDdTy+lvV/wMv0+tB/nE6YvgRXIpUXuIiQwEoyEDNii1OA4karoYTM131je
	 TOruMfzgVH1/wVEKVTh+gFP+t+Nzbs0vRMSS2v0JyiE6sb3KuH1INHT9q4f7c1T72Q
	 BwzLVjiurZIxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F901093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406829357.31332.6480595357543575607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d98f6060874557ea5437221b66d255ace34b960f176c2b0c067962f57290d5
Date: Sat, 21 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774068293
