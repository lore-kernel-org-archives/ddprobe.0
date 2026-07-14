Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D936441031
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784039914; cv=none; b=KxOxefTO6zHKD5O9WCMSIkDfxBSWI8Vz83aGAidjbz83gHCdDG6q5FD01jIE79FO8jFJ/GKxnMDkOkIawugQyzxhkgDa9eOCuf8W1W4BPUyY9hasaqqafDC7uef4s9yrtecCFqxyANeWC0oFZ5LGk0tJEzddWWREEuo0GouvBjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784039914; c=relaxed/simple;
	bh=/oq5h0L2pJcsoBnueu52V/YVuOkzJ94Yq5mKxTZu/I0=;
	h=To:Subject:From:Message-Id:Date; b=soHNERbEfo6lX3ydHeLeg/xyMyiBPmPe+LA3DBS+QsjAr47zxhy2rB5YhRV3+Hv8aUlWxMSHxRvHE5yN5h7cm40w+HIhPGa6sOKbwqUn2JUBv1gAGDS1NuD4O1wTgMrN3ROVGRn6+daqdS7GvDLjY2XnBsZ3BIjdk+yCeFFJiIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPE4c2fm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPE4c2fm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD066C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784039913;
	bh=/oq5h0L2pJcsoBnueu52V/YVuOkzJ94Yq5mKxTZu/I0=;
	h=To:Subject:From:Date:From;
	b=aPE4c2fmVGDmFUQtvIMFoxF3shDrtVAFPoGzguFRC/njW9dvohnAr0dfZS9JCDN3X
	 wPc7pnfIeVqS7MPA3WlSB1PjqGYveyjV+en3/wyn4GaWCmI4rYU9jr8PmfeQcXT2LG
	 +4homXB6u0QJNPqOIAGu73XPBFH02wNJAuTTOaOy9RhWWNiJhOX8s+DAkNE7G1xdrC
	 B3n08cCXSc3/sLAaVOBr2thXUqvuahGjwDM5uJ0yMjvMvfWGGXlnWes7RqnHR4/kUs
	 AfI7KKJnF+vRAKyXDmUhFrHy23uK+/ak7UD0qyVFcaY0NKOhiCghRVkFZuhJaud2Il
	 UWQgydqNEnprA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E1FC44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403991368.3732.10824713467511044714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691de79d998e3b27d3d9d86b038566521154720749f14ce4e62c382309c3f79c
Date: Tue, 14 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784039913
