Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054B62C237E
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772232294; cv=none; b=OltIudYnhpydH4OYy08E6W10YH5bX6W2VagMm5PQh2UvQKhzfMMaW7TnATlK/Hhd182wzuf+6hzup9TDDQFBp10Z0LdOYF84ZNMq71VjWV+9ZjY7EN5ymmPCh+ijaG5h04x1BryA781xdfyLOIy+G0rCGE9uu60XuU4xtLYFCPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772232294; c=relaxed/simple;
	bh=r/RqqX4YArEV8ed8IxbInPPMDasTn0irYx44wpP8oKo=;
	h=To:Subject:From:Message-Id:Date; b=chuwzu8zIda3Nfjzonf/eU4A984f+jWfqYnTLgwJbZ0k9oGO4IE2GHCsYmdCXORqUJzOpm+XcoV8/ThSNiNFmeVvBld2wrjGbs4elmAxTu7X3uzELbBbj4LdDlZe5ab+LulnXYXBo090zgHfyamfive3qW2Bdt7cv7BK0fHpW5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvn4x6J3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvn4x6J3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D8DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772232293;
	bh=r/RqqX4YArEV8ed8IxbInPPMDasTn0irYx44wpP8oKo=;
	h=To:Subject:From:Date:From;
	b=gvn4x6J3v+27sB3vkFAG5Ihn7GEb2dFfacsvJJvNw0qx8ZCNPuaDakunFXwFaQQXX
	 6LdPoTEuZzFbEP+6z4STuDX4JW/H01yUI9iWdXyM6sue0s0YyTwuHSv3kgYoEsWQBv
	 ykzJV6vXRhgCku3jKQ7Qm5Cxm91QA07/Rmbu/+pD8v4rGs+WSUEmphswmuCVN7rJZ+
	 4cYlLfLxcGkeaVijRsdVmOS464HuzVcTwBQczRhdNEIwk7CxoTkV/TI9IWHPZh1lsU
	 AV5j/UbwGLWVNblYHdRU6+PMCE6Zxa/qXvfVbf6suXDxjwfGNc38EW/Ns7B7rFbASv
	 CIzzPMT91WYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F36B104891D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223229357.22338.7140083124171458086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18797c0699d21ee6ac390a96d78843316be4cbba4f0854b4ddb2cfb5b30da38c
Date: Fri, 27 Feb 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772232293
