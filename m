Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41101B676
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745048994; cv=none; b=AEsaqPXo29JdkXIJ641DLHY8CdIgvdqtd9u8SuVJhjdDNkXUfC/4kHu48xLcXWpm+PMhu9icF2bU5HI7dnAV4zPKkgFsuI/5vZw46Y9nEFgIAkalUxfYCWqOnps58OqFOJptdgJGzaQfHxxl+5+yDiysLebx4Fh8eCV8Vmkm3os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745048994; c=relaxed/simple;
	bh=l2nHDLcWGdIHcwBxcbBeubItD3tS5M1mZYRqhxebUAU=;
	h=To:Subject:From:Message-Id:Date; b=VxCnh3fqxR6mpm8N79MHSKwxpZ9hzxAKpwb9gLD2ncaTl2cVTTT8SsU9mSatRLAjUwG6uVNqmn2azvWu9V+XF8lwvn07RJIjFcOOhVIORWKG8W5+AGPRdGQZzw7vE8m4jd17+xxcluBB2TAoZKDuXUbpQpQYUx6DgypmxIAmo+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVSDdh8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVSDdh8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51C0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745048993;
	bh=l2nHDLcWGdIHcwBxcbBeubItD3tS5M1mZYRqhxebUAU=;
	h=To:Subject:From:Date:From;
	b=tVSDdh8leslx1wXenBcOXBjOKZXxoSCdMSbjXSchrpZCbKziqqmAYtAoqG02vDUIe
	 jIReqADzSZ1MwP7o+rSYv4zxTruZAwGhLPQLNlfmP9Vh0h7R3P2LMTrv62p2/GUEIL
	 T9HQTLDkGFSKymTVcJqi/s+lcUc83wYefrlutbFaYYlAwrELv6tUWhqlnUHxFwZL8y
	 mUPV+tcJZG+t1vFYkqXxmn9U7d9nRrzbAZHEOHacBWjJvi4tk1V1EvCbqf/D+nXR8Z
	 1Mu0PuEVgBQQVDWyvIbCujx+nIWZQfDpPcNwp8qRo18okd9gdmB1uCvcKwluVnui6+
	 lsMA3LVwU+4yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E568C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174504899360.14516.6616621545493795325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 303bdff3fcbf4057c1a03a8974f8c78660704e32525d282a38e714acc20b0db0
Date: Sat, 19 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745048993
