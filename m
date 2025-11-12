Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA3F306482
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762944594; cv=none; b=iOIyC1yx3uFvkxmw1hOYf9ozXOFWO+EKaUzUULJ8QODUfn7mqZDAyi/0d3dLi6ObIXeuS2iVRcPB5I+CwrlOV9155C6R7qZ3cwSqiutcRR/73CN0ttiiJ5Xm2K0Hud2MuTJp3u8d9uAsQgVVdCibGcUiQutVbpd10gnlqNaZfHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762944594; c=relaxed/simple;
	bh=R+XeaRrewNd3eIxFBVBsuKnqogPyagF7EJQ6ktIPRn0=;
	h=To:Subject:From:Message-Id:Date; b=TpTG44NjOYfhXOw4q5kmzscuugX4flV0HXwLXcXhi9Ikaf6rJg9zJsB2dr3u3709Dbvc81Ntk1FTbvBqrXMVUcTkS7GtLNN1VbFoV6NwcJLq3pVPP+R0do7qlN5CHZXzBflIkjw2eicJA+kAuQjM4XnnYLnTP8V5Cp6vQoh4Vvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3zn/sbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3zn/sbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9C6C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762944593;
	bh=R+XeaRrewNd3eIxFBVBsuKnqogPyagF7EJQ6ktIPRn0=;
	h=To:Subject:From:Date:From;
	b=O3zn/sbZwg+4UpZbIIjtrDM3D/snjphVMPVxDhjogeWDDzUFcFByYFL19/RTp66dp
	 a2e8JUGltyKyw/CIRzgzLzpX79bxb9HQTOZUxHUnHnxJ1Vt/BjBTJ+PwyZG0LUydqT
	 s6rjbWSEaqxtUVISAvgebbHX33mHVPfjXCAcl+ynL4HJDGVY0oxha1GUtxUEHngpIV
	 sHi2XctNUBhaAwrRh4UYroPKZclRcdxrSAOBNvzPO3BSJnvmlQ2EvH6zDDyfuqdD7G
	 mdNdJZ05iKd+ieQQ04OMQkN8XPQ6l9OZTDUSgZJudMlxAjl6n46s19WsnbUMxCUeEw
	 lLYdZ72eK8vng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC7ECCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294459363.1548.12395477968927706541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac7e7b28872a644935775552353318cf60170d31695c939c168874dbd5e645f
Date: Wed, 12 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762944593
