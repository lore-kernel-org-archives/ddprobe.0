Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268C7396579
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778244454; cv=none; b=ohAFt8M87B3+vUsXr2TT4Bb52TRey7jt+Ti8AsQghsw0kK3RE1dhYh/BUWFJTGREY2QN+W5w0D+0shwSFdFm9YVoH13oWZnExuYvZer5XLkFRlXx7ZnRwOwTOOUMGsfzHSorYNzgUrSoH+YtAGpwebUUfxS4dvpugwsNeQTuAgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778244454; c=relaxed/simple;
	bh=Ks6rnTXuAz7fK9hEaRTYtCPFIlqTwDAvJn5Y3VGmGhU=;
	h=To:Subject:From:Message-Id:Date; b=YDRP4r0j9b4w9nynlKm1m7ywc7M7PabEf9dVyzxw16a59+PRtFaPxrejzj9mBHM56td3xWWQgKCl+TnuxNJmk7IGYDvk70JXaHdaJtuwTX8+yxmezfhTUppAL9jZj1oYDTIsF6YqbHwW6PKJSu8zbpORVX8OySnATZptP2lG7GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZolfsUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZolfsUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBE0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778244453;
	bh=Ks6rnTXuAz7fK9hEaRTYtCPFIlqTwDAvJn5Y3VGmGhU=;
	h=To:Subject:From:Date:From;
	b=VZolfsUbNCKsVMhCboBubUS3lrCoM30+J34PKIyoPdWgJRZgNVwOA7CKhvxR382Or
	 OcIXM+oq9kMbUHflCpt5iQlB7CCaPaUYTm7iXCV4DtscYT8CfWuI/9qsV5iCoQay6e
	 CeXSvmdWKNccpXG4iFjCLzPFe9jijXKv6hd/wUjWj8RBC6x0r921FbLZMe1uTOocmC
	 ocjY4bu8Pkn7QEffPpdSTCEs8Yx+1POENqDn7Wwsib5O6ksuPstvyIQ9Q/5h2PJuu0
	 wMDYJSpAAOVUXMN042pABvWinpHhyP9LO/1Rz8ZvNHw16OS5Qr1aRS6YG5EvAAXAdN
	 4Vj0UPgFd9sCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC5CCD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824445369.15549.16410678940864133449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17af03a5676bf104598b40faf8bbc90a01b6748f6d3a118492b8ae503edf076f
Date: Fri, 08 May 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778244453
