Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA0313A3F7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760848194; cv=none; b=nryIPpTuggpkFZ3Zi8ubWyNC44PnqnqmQQmFnPA3ekXg2j345bYlDQeCk0epqLyXwhwMheo3ggyaIGTyRz7RQOyN0T6Z7varUkdyCVizNr6PP0qOMJ+8GyFeqjnp0anoUyP7WPmOpU24BjerQdtO28vwUxxVxbqS6gqTddm7nPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760848194; c=relaxed/simple;
	bh=qQzqO+vqgSJRezcwv6xjkR/1E01giXbiT0OVSvKk/qw=;
	h=To:Subject:From:Message-Id:Date; b=ZOVUKuDuvk3h29KKg1qNSfMAsjCA+z5ZnGj1knWRXqutI6Vl48BAjWQOc/1LvcxWa7P0uhftCk8wxNr/fbLkMCfl77oYFavf+3LrYCPgdv6MjgN3LG7W3rXBZDbMHhPNcrvxJLY7d3qZwsq5SaMmepFTEcn+L5N5SpOmpQKMJ08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbULCtSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbULCtSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF385C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760848193;
	bh=qQzqO+vqgSJRezcwv6xjkR/1E01giXbiT0OVSvKk/qw=;
	h=To:Subject:From:Date:From;
	b=VbULCtSpnbdsTdbpQH+TfxwAXfAS+XOrE9lvjbREX5672pPER8ZinH/BzbRo/AIqd
	 AByPDQCajFMn8dx4v12RtHFZYhTQ9YQusC5RxLEJDFsKRTZMR7X2kkfbUoDFDR3BzX
	 k1DAsCHaRHtY58vKH1UGQCqoIM9qKQUMUnZfz3zm/ta1vb1fTAc+kdac2Ly+Vpmbr0
	 az1iVWpP0y68dssE3+eH0en0I9PZpptlXj3N2Q41ItAzJ53GGPearmg9vZ2S+sX7af
	 T68O9xbD94iBa8Fnwp8cA5UI5CHo2huQSejTWJt/GIZ1V6wzUC2dGE4W93uwaQZSiP
	 o4eFqUjh6vIQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EEDCCD1AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176084819359.16762.1241279452129398592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0ac6a48b379f973d940d4bf34817eee1d22bc8f94d00d06f48dbf4d0e8c8b1
Date: Sun, 19 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760848193
