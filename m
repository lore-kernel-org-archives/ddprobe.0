Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2E01DF25F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768082034; cv=none; b=LOMM7QEAM8BNUorqFxZubLR6X9tvZLHXXhKI3FEXR9ZQcqSQ9PZRWl4LhIpKcoZZrKDsfOSXgCSmrJyXz0H1zNcAeEVr+FaAngiSTd9rbEvg3qg9urZJGRZftKeUrs+5vf4Z6wj03j60yznfnt1GI0nObkXWj0VmVgowNqrCigY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768082034; c=relaxed/simple;
	bh=I1T5XJ5eJLil6iNuy4Yr4ZRH8mYoNZ8aQjZt0uo8rIY=;
	h=To:Subject:From:Message-Id:Date; b=mEoVYlRDxJTsRZMuZwZf1FtLS0PLObakuTCWOcEcHXT7InR+FEhAJFKfun0fQYjuSJRciZ7vGgUsDGh7+bt4EfOPw4O2qB/8mhLB1/UA2wxEZ43RK7OJR3HVBknzCWQk0IZ4zuJmgCwd3C3lPmVyrtZx5g0ArRCCcdHbs1jUQ38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvncM6Ry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvncM6Ry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DA1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768082033;
	bh=I1T5XJ5eJLil6iNuy4Yr4ZRH8mYoNZ8aQjZt0uo8rIY=;
	h=To:Subject:From:Date:From;
	b=CvncM6Ry7p5JRpAGmo25Jpx3TSQOY2rY+s8qwZF59u55Kpq7NOUYYX4XlA6M832Yw
	 Tu8jlJMmmWX/xNtZV7xzf+U3PatOzYEYQQtVXgaTiXQxRru/Dw6InpD4a/J3Wn9oXl
	 y/lp1OPPEsgOdPp1oRykG6gM0tV/ZzTmeT4uiG4smUj2FXtArux7222Ykhg3dmwLB9
	 ttCbIstPMQrZJnJ/AHjlRofyDCXuMRq8UOKUKEgbnwC8aqQTH/33tCXDAizgr4GlAj
	 coW1ylFvjmMp6gqi+E3DbTX5LZypi8f9lV1LVFVaDf3vhBV/83+ORwI9dq00dSaPXS
	 MAGc65hZkyhBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9257CD25023
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808203357.26369.10399172125695658239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5807edd1dfa59978aaf1a714403732783b51352b598e84eb4c0a34a0be8f5f
Date: Sat, 10 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768082033
