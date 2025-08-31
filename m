Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154B02147E6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756667394; cv=none; b=fS4o4pfvLHW4lMif6viEFIYOTRJ/UEwhsR34qb78IOApVKWDGgSzymvkknAHmgXV7f64QwbBuWLri+DrjI7X++elQifl+SyXy1bUe1iCM+G6Een0nabiiXe7br3149wRHlB5h3ExDHHTN5Asn/s8scFip7w+joBBtDGdzEymU1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756667394; c=relaxed/simple;
	bh=tQ2fg2m9ieD8bVD2FOwiDKQa8Rn7fvpwqso3n/GAUpk=;
	h=To:Subject:From:Message-Id:Date; b=H1MIlMkXwERJUizCx5jjUF/7fusM8Hxk1EvBlo9uBFK+ZgOkOe0216l+rmr9mQxmeUwxmUQw7Cj3fVE5iHpJAy9ZRPuAvEhAbH5LzN+59K6sJiEz6fMPaKEKa5iMp6alsMc/Ogg0ajahLrbsrwtEUUD433MGurrugmDl3l36Ovc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJ57jLaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJ57jLaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB087C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756667393;
	bh=tQ2fg2m9ieD8bVD2FOwiDKQa8Rn7fvpwqso3n/GAUpk=;
	h=To:Subject:From:Date:From;
	b=TJ57jLaXYgmc6li8OG9ttPXFh6vQIvU/hUfeJaoDbH8MNAd3itSMn2wx3FHX2qFY8
	 Ty6H9TO/QSpGkfSIvgDtqO7OTZekiaqOgSySSqrYID1UpV6KPVOvJE35Wl0liqdfkt
	 8+bimS8iaj4sMBvTQ2AdbGp6E/ohIQHGawjN1jQck3smAzkS8+igGonsnwpgsz4Ckc
	 AXMa3+fBvZJ5HXHCLCaseDfUjVEx1RwEV7Sz+xNET2V8pvsoO/yu5BCJpr9hvXrDN6
	 skYY6uplYpFhVNsAemwVdR3JUSgYqWjNVDinbG9W9K/5Pw7k9Ina7PlZbDxwElOVAv
	 6ewageIqkBhRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968A8CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666739357.26507.13585688312465037839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 966d0bd21baadba90f42cb5277f72d558542d49b571f1243354e9e5ab784c1df
Date: Sun, 31 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756667393
