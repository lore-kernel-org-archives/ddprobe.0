Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21AA126F3B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773204293; cv=none; b=XwORVhKBSNypDMLYu0eE9lse6Pqxe++B8ev8Y5cha5qafGulac1MtN2yRXtzaaAT1dwKZD7dG7EajtdqRUpkpo868FKxEnZZciw85vGAPt8rpda75cwxtCcz1gOrhne+X4i54sSHC+ED0aUEDMRGdAc0420ol5MyDrInxtk+Jz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773204293; c=relaxed/simple;
	bh=ZgpLIwNmldNXJ/YSjWn5nmk6Sfa0iw3mFOfwFRL3Y9U=;
	h=To:Subject:From:Message-Id:Date; b=N6Xvt1sUPEbrBumkFBwodJ6+iUwY98htdrTzNxNZz/0eHJv8o5w3UXJChChPicJTvZSiNhmtr13hRAByqFqg09KFzADAi5jVe8YOXIS9T307lwTS0XAjMErQIquFNiDXaIc2yR50FkFXN7nPG5bTeT0I0Mf6k9WfRNni5SgdvVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7uLQvVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7uLQvVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EB1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773204293;
	bh=ZgpLIwNmldNXJ/YSjWn5nmk6Sfa0iw3mFOfwFRL3Y9U=;
	h=To:Subject:From:Date:From;
	b=J7uLQvVefRYg2nUY8mr9AR4oAh6QsRCIyLI65MA9K4kya1DppsFaN+II3XqPi3Xlv
	 gnfZjspu5Jk2WMofI9As2EZkSDZ6OanN70v30ZbYYebSdx0rTuzNBqSfa/pEWvTh1A
	 Z/qw/bfVdPaSW3aEoBn2ZhlWNBdyqWO7A/FYQ24CSCI6Dhf/+irxXNGCk4GXmVG/Ml
	 7RMy8bOOVwdPXNhJ25glrRXLwSEC326l134uFWEq1Amz6GDXOjOX8+axGZyGhc2XXr
	 JUDFnDC3/8WBx7dMDRF3k9EfpAPnJzmorct4tGbx2jdA0BqfU4l1zgzHXXTPJEdlmZ
	 TLpdmwJjskPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBAFD88F5
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320429358.25156.11114650475537711045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a8d05a9a301387cd17ee959cf37808e2a54d1abcb655cabf470e5510921d43
Date: Wed, 11 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773204293
