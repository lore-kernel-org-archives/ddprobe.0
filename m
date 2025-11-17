Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABE5321F51
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763369514; cv=none; b=gfKz06HnHAclSmnuZEQ/aUUtTD/NEKAk+DohyWSGiBMmRxpttA9ET4pym3v3x3CKMMLe4zdqTR/jDhSvfkPVGvILHRBoWSA7qwKvbNvEnGNwt/jJfcEMUBAhbNQPeOrrQmoODoToazw5pXe45FIbkJflxB1m3vNTHxoK/yZqk90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763369514; c=relaxed/simple;
	bh=6o8f3iQjvVX6QK+OmBiU00pyWG8GuVbZ7ZxG5ozJmp4=;
	h=To:Subject:From:Message-Id:Date; b=NAja5qlJSWfUY1U8z65rkdImOC7NOVQosmWk65D/KaRMnQyudh5l7lhHDozvozkXhQiz40n+x9OMGR81OOpSVEb/zVTYgB+2DJ+h2hZ5+EdfTmUPoHxITiqIr4S2VDgLxdP16QwjOuLWM+ELB7QFaW80OK3x7XY117z0sF++Aps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIWwlwNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIWwlwNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A622BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763369513;
	bh=6o8f3iQjvVX6QK+OmBiU00pyWG8GuVbZ7ZxG5ozJmp4=;
	h=To:Subject:From:Date:From;
	b=vIWwlwNRChkCQ5QrUPSHWH7oXH1Rhfu1aZBaLXPzsX8b64KDxXDYyi3pa1b3yqH+x
	 ydNctg3DdHyXIr4FPkAru6Md3McaxfuEi6wPABSjt+9AJVFi3CmqzrIM1XokVhkjX4
	 B4CnodPpaCZTKcG7jGPUr/X4wmY6Npd/d1b/UKdLEEuYABONpOe5TUYgOLK/6jvlCD
	 7Ec+ObewvlTCSitL0eqzz01tEo3YVBoGNamSs8IVM+mx7chzZs5nMc+QoSzCipHd1H
	 yNa6aGdzS0fP/h2Ta8n8zWiOQgG8sXt7EevBseY0eashoeB6055CAdJaLX8JMCfBk9
	 pKUkPHLMVtFyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632ACEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 08:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176336951360.15569.4433046353304041658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639bff93255daf86265c48f5e14c1bd3ee9c13f7c6f50fbfdefe57157ca7790b
Date: Mon, 17 Nov 2025 08:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763369513
