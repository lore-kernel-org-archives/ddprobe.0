Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DB11DA32
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707363497; cv=none; b=iHmJFq50vw2kGeTOP7tADdbcjb33vjjFwS2tYTHKL1ghTDMO0lDfGDYbyHMbeIaXmJDQHt/pu2k7kYf6idcDb/FgR+I/JW9kZ0unj8XYeDxFRqm9KkkwGt5uqcS9o3o4vcQz+oylMqYuxV8yJFQCa6ciy2mE5Wbv5tDuv2+t3jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707363497; c=relaxed/simple;
	bh=fUSJGNwC06BA+hhpsIa6kdOXYPz+J7NI/gPSha8TbD0=;
	h=To:Subject:From:Message-Id:Date; b=PXIk6lpE/rsdqy/2e1rQS0E57DWfffHJ5SPKphj5Bv3Wf0ngi1on3j5tZ7VkPlNJmDCm9QwCvZm3eV6LmgnPj8CiwTtk9dhh7YWCZhJ66hWxyXM09GI4QCPnNXIhEP3/0WhcT9FPj0srhntTGFrlA+AbRK7g9nq5HCHMl2kco8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufvsTWAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufvsTWAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 809E4C433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707363496;
	bh=fUSJGNwC06BA+hhpsIa6kdOXYPz+J7NI/gPSha8TbD0=;
	h=To:Subject:From:Date:From;
	b=ufvsTWApVkds5nsC26NR7LXAsx9AWvkvppDSfpfPWHrz2Rz0s7MegdH/rUfz3b4T8
	 bTYqxIrB9KU3cKpCXpr4TXG+lM7lIY8xwZb3Fk8ebPbluvpZCmEgQw/0IX21r66wPP
	 8PMJlehGw5k6/bqUArqPFWzfW8BdulLmxxNFriQWZCBNHpAU9OfbFHSoz7Q1WaGJrb
	 3JCPyO7VYF/qWso4z/ElNogqlG6GXuYle0eHXCZpSWCFz10iEEPyg+oO3Wk/Kw3oPv
	 wSrG7Yx5uTWOW34hXL6DxdO0d2eCArciLxBNoIcpOdItulInch4wo5qUAal55z7DM+
	 JhAutkZRMdDFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67463C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170736349639.14167.16970231961651121576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0dc3507478a015962ad4d7567047dfdc3e8cbef392fd3643cd66d2dbb3d629f
Date: Thu, 08 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707363496
