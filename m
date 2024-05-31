Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5B6225DA
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717171463; cv=none; b=qJhLAOeu9znK0QpBytzHA17p3oqO63s+X7bViEA51RR0ClXCP3gU+AfYUitCsOO7+oTHbJGLLeDmY0Myv+z8yhOUQGy64kDpDsPNAbfq379XVyC049klZ7wmCEZVFI4Fx3nA/KwsfmYBzNoE/NwePyrdUblwgLujcECX1Y+qQxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717171463; c=relaxed/simple;
	bh=rQ1xO7wP18rX9mDWIZYzkf/fARn2Yw7d6MkIAxW+AhM=;
	h=To:Subject:From:Message-Id:Date; b=VugyZHxJojlunaSXMuprEH8+RTpniGKXZcfVEAVaJ84bPQwD9wZCTVCCWwygnWj14E/7SkS/9ARpYnVfSv7fqTtdUMyYP5nEzs2R4N8804KRm0OVhWvIt3gOiQaSO2nl/JhFtQ4HNz+wuBUXDi1OS+8bQXeLbDqO3GN05b8dWhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwsnW1Gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwsnW1Gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE4BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717171462;
	bh=rQ1xO7wP18rX9mDWIZYzkf/fARn2Yw7d6MkIAxW+AhM=;
	h=To:Subject:From:Date:From;
	b=MwsnW1GsfGeVOslWSGH4hZeV7+B7adTzs+e1Kgc0om/Ma5yYtDvcMsfQDryJeGPAw
	 fH9uISPdUTjOV1dnLhvLQPQJ8mnK9RFjDn4vbaRAITQSmgbatm5v1zyNSdxDyl20iL
	 pTsQr45T48AEI7L9j4HqBfTe1Itnmy12rUF/XvNGpR4eu6FwipiYNBHWN+VSVhI9z1
	 OLPKF2NSPsO93eH+m6Jpx1OhPBN47/5NkRKZVJwXn6ROxshX3wrjcPW6Ky7ywF4J/w
	 LXun+RrBshuVyPFV9fXU94mf0yuUDo0y4etFarLF2/NnZO6u7LJLWNhS+isW5FcS9R
	 vQUtpKHq4BTvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED96C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 16:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717146277.30524.13575561779187883080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aa4ae78d44bb6a3a90fa2870d5ac75ed3ea6daf71b8946c5d60870973b959f3
Date: Fri, 31 May 2024 16:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717171462
