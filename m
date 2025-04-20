Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1BEBA27
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745147394; cv=none; b=QnoZn0+pdN08sYazjTXuCXjqeBVMzRakjQ+1ZHVT5gv3mQoFFB7ZJRiGhWhz/RglJqXEOTMrYQZ6W7FAlvckrLGztfXTUiWonziTkzsrtH1A1Jgn7mm8drR9ERJ1jmPA5yPATC2oAikcGZQ1VaP2a136uTyBx1jtgMjHK7n4Lho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745147394; c=relaxed/simple;
	bh=F8TwS3ym5gJ9iHGKEwVqIdO7kd76A/WEpzIa/2kGTpE=;
	h=To:Subject:From:Message-Id:Date; b=EdSSyGlic2bxWCItaPekrkRoQXKxysgYNWx5g1h9KDK7l7vNZhm8sd+D4+a2vrveUtXCMI+ZZ9JAo2kmCwmhBhy2sApMmgSXHZU8iQ2w7oR0I3bsAmj8CcvOcUUIzV8E7aMNJL4oMppdVBfazbEXBwDO8mWL63sOCZvJN9+IXtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzrdTjqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzrdTjqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B105CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745147393;
	bh=F8TwS3ym5gJ9iHGKEwVqIdO7kd76A/WEpzIa/2kGTpE=;
	h=To:Subject:From:Date:From;
	b=fzrdTjqiH+z7VJtQXx5t51lMOe6YQLlRDO35yCna9lxSwzlMl9WxOgzHIFeIzUJ19
	 f+hwjQrDVqAxsUc9j19Wa1ey4pRFx6voKKiJT5tBaUWdDOdYQiZaE2lHO65UuHLbBP
	 Xhea0sQoGwFTGS1mM5YpIv5iVXFdmVRfJPWUU+qh6JZs79mBriEhoCPs/OgE/4u0io
	 JJk4X3W974DNblmozZ24YkhZAqC+SRNwNu5su1o9MXPdRISXYjA+5yUQ1Hf1kxb4qY
	 FVTujmGj5//DC/M9Y36OA/cepkbsKqAZz2GvYkog/LAGc3pzmu8AvGyCe3IdOvHvoV
	 UQjd9PurCgJHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95588C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174514739357.1831.16236488599088567860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a890926323e1e13fa910a0fc2673da45b2a17eaccf17782e6f378ba34c769d2b
Date: Sun, 20 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745147393
