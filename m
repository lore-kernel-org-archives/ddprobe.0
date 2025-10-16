Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244662FFDF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760600994; cv=none; b=rwiYiCJqxf08mQO8/p5GfuorecZW5gw08FPgIvWbDF/Vm63jbdWO4IEporK5mkiwLv9KB344V2e7ZvN5feqSTOVJhH5cYEC1/lFPNKAwKKowItyvRmmMMtWXDLBS2oyk7JtB8h97K3KKfqLo1vI91Eg3bXRfkUy62FVzaYyfnRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760600994; c=relaxed/simple;
	bh=fWyjFe5eg1jVw9/DawWyCGy4dzensuVJP9nOLZl6vCg=;
	h=To:Subject:From:Message-Id:Date; b=hoK5Y9WoVGKx3MtoXycYN/x0Sm1BpKuSTP0EY/tx7ZV5cTOIN7DjDJu3Ue5lnUv517vk9WbFlSiSVAGz9clET1fkw+PIEGOze4zr+Rrj2cH/s1B0EwoABTMGXFaLxzkTkAbA08tRt/RlQn1iFqcA3Pa3W7QjlkvTyF1IVw21eFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n34JTbMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n34JTbMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA270C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760600993;
	bh=fWyjFe5eg1jVw9/DawWyCGy4dzensuVJP9nOLZl6vCg=;
	h=To:Subject:From:Date:From;
	b=n34JTbMmPfxVOsR27PHZ28B92zdehQw/97ShOpymITRXUZ55riIRjFJICWWP1iD/4
	 9HSmTeUwXtNp0JpeWMuoQAgkb2umv/ahrXf4oJdjD/mWhyB/BzypjDQZWb1b68iy2o
	 Cnoa7x9ralGCppaNdjtmGXt7KfTvOmWRDXTm+PjYZ+OJlQONZOX28L8ChsC8aHQGOi
	 oi8378EqodQw7otSMGYoUY+246i0iUXfSyq/91eEpI9p5kve0GRGLrIvTLCa4VSJre
	 rkYO87MQ2BHNfCjByvW39Ylg3NSMf4jeg+rW5xgCH9EFoaszfjuD3O4kyN3dv3wkpJ
	 lKoCr7VdmcDJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9203FCCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176060099358.30396.4591767385796141273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a387fc46d349dabaf240de7e0315560a5a298e1beac9a8af4f833caba21a675
Date: Thu, 16 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760600993
