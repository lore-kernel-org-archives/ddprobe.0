Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E2F2E091E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784330314; cv=none; b=AEOGeZXSYHmS68Smtk7XtjSdYJLIC0+OLAJwZj0WfRXR85ftLcbqxr0LgFmFMYzlrRtvs4ysiAZI2foVk21ug1x+AA/kOGAEAO6LOM6V/KN5ZYB0XNvD4B55Ac2DOJEIej9FBVD6w9z384BfSsAKhGKq+5vXwI2AtBohTyd3XgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784330314; c=relaxed/simple;
	bh=ni/Ob0R7gExcfX6ic9KrJyZimSnL/WaLjiBv8tQdhtA=;
	h=To:Subject:From:Message-Id:Date; b=H4miZUh8+HQCesZzCjTd5h6QcLjfz8ixEFTMHwuKf2GuzndSU1eKiFHO0/oLigxSGkJeZ2krlO+4jGw2oHlb+DuejXNViiwCHxMUnRCaF5KUbrfAEq3BrbhV1b/M/5i8jZrHVwCaxsXwH6bwP9x9tRr4DeTThjjD94APYFnxo2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oM02F0VP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oM02F0VP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56E5C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784330313;
	bh=ni/Ob0R7gExcfX6ic9KrJyZimSnL/WaLjiBv8tQdhtA=;
	h=To:Subject:From:Date:From;
	b=oM02F0VPNv2r5DY87Wym8P1oHyOyPaDUupdzfYClpfOp7+yuiY3GTyeFmQWxYdm1n
	 eZoxAF5u3FkUQuPuaAgGSu5mh9mNp/ZB761y/taHjQ9H1qj1dOJ79JIMim432f5ewv
	 DRHcjGcp7P3iOAWkqTfOvyOiem08R7lAO+iDGVaNXekP9B4TDC9BOoOvpWlkCHBj6F
	 1CcUx/jS3wavRd6DMyOn9ipBO2xY0NWzrhyJameYH6LpUG6/wPzwlFOLZCUSYWdDtE
	 G0qJ3l8WBjLFd1Czg8hErYV4y/ntSnVAJavn8oGoe4tSkAGefXtq/+ppA2UTYWUH8j
	 fYwZWBKv6/UiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16C8C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178433031371.18363.12084620224651380438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f90ae4c7327afd1ce85d208a74cc64641d76ab73b5b6b0b35a166199b81c93d
Date: Fri, 17 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784330313
