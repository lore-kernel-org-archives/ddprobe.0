Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7053B182
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724478954; cv=none; b=jQc9IV6drV5hJ/3rWLhNGoOTphB/0IsgeooZYJ4Va/42Xf2PNepwoQQOBhfQXTcFjRAPPCbwig8tuD/rPgojytZKN1dDb/fqef7n4buMRHX9w5CTKUO0hljsyIgl1DJv1SQFfKvDOr3pyRHHdpmP27ljNK3ELWJceeZn5NcYHeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724478954; c=relaxed/simple;
	bh=vXvMWYsMNA39q0CedbjxBDZWBDvrqF0Ef4GHXpMmoIY=;
	h=To:Subject:From:Message-Id:Date; b=fGLRExKBOZ0+Wmx8pVmmUaNR0DOBcDgTyytflx/NkVgtg/wdputIRJpAn9Jl0nnujiL96ey41+7MslzKq1ixWUjYiJTEp6iyuMZwl/pUrJKyAMs5h3s/DC4pyj//99lhwlohjtfNE4MkMtArt3zBHqDrBZM/MAH3mGM+XMt/MfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JfSt7ysT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JfSt7ysT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55B4C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724478953;
	bh=vXvMWYsMNA39q0CedbjxBDZWBDvrqF0Ef4GHXpMmoIY=;
	h=To:Subject:From:Date:From;
	b=JfSt7ysTsGCzWDK72404+ZHKWPxArxY9ZyLD2WxCFJHeof2/Omu3k58IYm6wjJW8y
	 X//T6JM5ql00RUXHkQSXAmNmffbl0mGma5YSRT+9ygc/ik6npXWQ/mNcXb8cLH8Xfd
	 mDTR37Ncwh5r/FiTeealBvq5yc4BxGoAu+SOrswLtvlKbspMTNZD6pTD42qgEJX4cO
	 rFtMrsUQ9iau2hvfUhmnR4BCjCxKQ031SX6T0FvCSaZkU94MEwxDJGT+bnEHeGkfK2
	 ADTIzmMQ66BCMi/+6iaxZmTFF4HGoVY4edTxfYLNp26LFVeei4L6TpVv9cDRMuMU2l
	 929Q+/t2ew0IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A145FC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447895365.7506.9040807979017817490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4094dd4648eabbccdef224d413c7eab9c082cb0271e30589c3c823d62baca61
Date: Sat, 24 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724478953
