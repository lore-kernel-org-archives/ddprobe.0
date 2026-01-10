Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B05921B9D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768032234; cv=none; b=gm6UXUs/PoS2qcEKhuWntATDOHuJXeCFE8Dg56aCQVPklVmV7DGZ/ZGwHi//eqIY8n0LLQFOy59eQvQ4mhh56QkKFWb84a0DTTOuiQbktD6mCKM4afeQoRGcW7vBIpigoWJpLzOClnx1vuZfw5mgSbtyShIMgomapgGpGFKBtcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768032234; c=relaxed/simple;
	bh=v3At5uHOamk81tSu3g9RvNtUVChfLD+ORPg/A9f1s6c=;
	h=To:Subject:From:Message-Id:Date; b=Om/lEaGn08qCX7RyUxvP9IbH/dXY4YhVgnSCE6PlYlbSEkXI2ONThPGuFeyhL/5dCfi864Fwdj2k2G60w01GGnD6KfWErHlhFQ4hI0sfXp+XyKLqWindBTSeRGxCXqBbQurcnZ/Le94gOkOHsUDBbCC6UFadAV9AgMzUBrHEOhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRjz3mU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRjz3mU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768032233;
	bh=v3At5uHOamk81tSu3g9RvNtUVChfLD+ORPg/A9f1s6c=;
	h=To:Subject:From:Date:From;
	b=jRjz3mU3qc0Q+D9HvR9KEKrAF/1kvoeNAYyKJGD7fHw2hR3+tpSszjNn4KDqUfX/u
	 KDRAN5N8Laj8T2+vzMCDoYXIYRvsT62/GPg7j0MjjDwW6Jm3PHsaAqlubPo7pAOfVI
	 9OMC7G9ZMO9dFIUqjAvEvmqnreq/cLdA7prcraC9/htCRhvmUQRoieZWvUDSQgYnxi
	 nCc5pIT6K2dU+wJJU5TScK7PPsg9XUa0OVj22dtMvsBt33yh6A3dyAawflUG78s1rV
	 X7wY7fVADO5mEQ+Dt1QSJVtoHuK/Or26Pt8OoF8QlKWha5y59dEgwGa2f/9sRXbU/0
	 VKIp9bsBm/gEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9213CD277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803223357.5196.13637870313872431581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574771402740dd56cc610a9845734a02e9f51888daa423fb3a00fb0bc5bf630b
Date: Sat, 10 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768032233
