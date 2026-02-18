Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4492FF153
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771416294; cv=none; b=QK81yf7/orsfDv6XdknPPDUeqwjtqjl0EwK1GCu/Xo39gqqMWXO4u012j1GaM1s5KDlDd/j9y1C9Ny0vE4g/fqUd4X/iPFr5560V0VhpS6fHf2w5vAE7lFoVK7FNmfKpTpfzfVTeavb/HSMiUbYk80yc69GvVaE5IpNHH4lYrr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771416294; c=relaxed/simple;
	bh=yvZu8sJ4m+aLo7zfB61Fjevzj/aoSkCV/89qtZtW/C4=;
	h=To:Subject:From:Message-Id:Date; b=ICmoH62fbIWemd5pNrPerOZUdZ0cjH/1i7dUjUSRqOQsXfaftiqyOCT8odR7MIrTUj62nXqrFzZdcgyztmF79lCJBDmj0vlIwpOv1304ID0BV7urR1Sz7yRHmT4I4gPFAwBY1a0c49ZvvPoKXZyQYaFn2AMg70xfVLV08rl3sYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lfdr6acW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lfdr6acW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B30C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771416293;
	bh=yvZu8sJ4m+aLo7zfB61Fjevzj/aoSkCV/89qtZtW/C4=;
	h=To:Subject:From:Date:From;
	b=Lfdr6acWwF0mrGc4qVOHX1O0AtwhEXVgC2gegv3kGmMbThqzQOHhDOFI2mCB/TIbf
	 joERUAXPOCtsLyPjbyoA723NjOCmLPC6UU9pIdW55/ePKG3ue2+/4BlrNwZHeKtRO6
	 ajjWYl/0v1O8ybRveXS50thSI41e7WgoYBCioRjl4VBV7ggNXBkYnUDbh++0daa8dV
	 jFfYU3UUh1mnrr0eLZokuxsWOhGjYhaf6DPgInhj5iSGxxKzRHkN9xaVXVX0HfiY2k
	 kBCxBJV3xaRyhK5V1wFflFXFine+xrsd8of4eW617Viiwu7TlmL2nESNmy6c9o27ef
	 FDxD6xNFHcVIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93219E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141629359.22318.2080486529280275213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d032d791fa9f2958d2ed5d4a82b6b54630cc66b0b76dd2927244a1897dd8dd48
Date: Wed, 18 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771416293
