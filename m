Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E6B55E4F
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709897297; cv=none; b=Doc8rUriHxOn+c8PBQgTObXbnPouVhgRWJNNJro5ujOXfwVjS9ZBuNA52ppY8GON4D5EHX0CDMRlemKQ2X/xFxlQNL4AbfPD94MG4GHM748ukIXlWQnZh3sURAaV9I2JIr0osZxBeGBY9Ke0ti72X/ok3TIRbv8wRhs8blKDm4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709897297; c=relaxed/simple;
	bh=VTeU0lsWv87jJgYq8y1ni2gaffyGj7/BHxMa50l3beE=;
	h=To:Subject:From:Message-Id:Date; b=Odj2bpgt2gTgM/nEadBOxTg9SSCqil+7ZgSgwu9Vv03S89x6y1QaBpvv0rixrL/Ur9vBtGSyzAz/MQgq/vWXco0yOmMvRvso16NM3WbjO5FTOeL+ey+qZpkKmLi0yBi4I9S8Yhy5OhUldcDLfgttDkMDBZMYmLeo0DTIWLVgqlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8Piq/5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8Piq/5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A34C43390
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709897296;
	bh=VTeU0lsWv87jJgYq8y1ni2gaffyGj7/BHxMa50l3beE=;
	h=To:Subject:From:Date:From;
	b=B8Piq/5vSOh0bno/waf6DoY5EXNvsTRnKY2EDpokqmuZmlX2AJQWDNpeyVh1X6s+r
	 ThY1KiLYFKl0zTnc4ATZY1pFKinEmwpC/nDq4gN3l3/zoC/8nB6zmbNWtuCEErBeVJ
	 n/RCypOAV2oFrZUUxtc028uHBduANKU3jNi5dx9756XZ85sMenWv8mEDw8Uq2kl57c
	 ctQv5End5Xh2H/l7oDvmT6PcZbA0O8CpVZX9ydXxUPPQME/VT/xjecMdbC1XAU8W4O
	 oAqXTkhaKdzAi2Ay5OYYXOZSgpEJQ1B1+muYWrz5prpFc0B5o27gl91810hkXbnH03
	 TmHbZwuBFpYpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD2FC54E4A
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170989729638.26404.7652317246962296946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c8b60ee2e78a8c83192fab4c6d2e7d87d6dc9220f39603806cc9f60ad8a348
Date: Fri, 08 Mar 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709897296
