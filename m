Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0704642D
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753826994; cv=none; b=rJZg4URDjQlnuLspF7vilD4K5eStb+vhw3raT01MMkLD0CgK1dv66BE5a/DN20vDUjY8qu5EsO0GEpZ2sxMUmAmoRxIXwKSJXT9VYIUEdkG6ghG+j6MI9ITSeZyg6OLuJnCQ900TLH8NBSf9+gA/KoDqCha8SStAu49PGZepZqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753826994; c=relaxed/simple;
	bh=iSgO6WgDcBrwsYK71FIRyMZMlmX8Nlvy/HogDf9ptKo=;
	h=To:Subject:From:Message-Id:Date; b=Rf4qadxmRxtugNBvIaQ8/fOnXe6xyDur0TcHsxXuCRuqryLyrQ9rul/9hSLPF/zkMggPAv4SddTXiJ4VnMjCtQN5NyMuxljkI8QYiygwwOLxbqpipumaNmo9aQWYmS5dzJm9M7fr1/ga4paKlurDh5Otp9suHze4XfYBd+mbXIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5GpVwBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5GpVwBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A6EC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753826993;
	bh=iSgO6WgDcBrwsYK71FIRyMZMlmX8Nlvy/HogDf9ptKo=;
	h=To:Subject:From:Date:From;
	b=D5GpVwBGTVMAb+QdMPHNEBqsPkQkpJjrHCej4b2juobqAD/o9eIQaoOmc7f1MZ4VL
	 CfV66zpaIlbYe5A5bLe9XFRKOALTH9K9ZnQONfZhhFdYiCaRA7wqGO033VnJ9kSh8b
	 /voLYJBU/Ru0Rw/oGj5SjzKXPo6I/YT8aieFXzB8Pb14ZskWSsK4HqLW6jpBp2ZcB1
	 geDury8KVsGpvb3vQm6ufvz2RMipCplDEvDH/MFE8DsySk/5snb70FP36CCJOjbsrE
	 zwYD+lBl6Ddshh3AAVQ4yd4ijm2jo8nCQQSWHPtiHc+bgFmemADsiJbshMXAT5I+QU
	 qO8qE+sx78jrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FDAC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382699359.17878.3560239630963504582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157c242aeed3ac81e67fd7be26391e548170cb84df512bae9690725b266536df
Date: Tue, 29 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753826993
