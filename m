Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FC721D3F7
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741605534; cv=none; b=Fl6JlwjeDWbuMjcQPKPwqhGOQeR2lrVoYrHn243Q2G+zjQzVAg++2Sx46aSNuT0yrvaBWdJMIiPH9TXtgPBIfqMPLE+0qy316Km/eBv+ZxqyAsUPc34b8yqKc3b89indWITcK3PYg0JBisRx0hUEygGyn3lroMGaoGEu1XYEKUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741605534; c=relaxed/simple;
	bh=qEIFf31JWS5ulRVPeAwlM73SPX5+/XRYGltqvmBVZ+k=;
	h=To:Subject:From:Message-Id:Date; b=rq8LZdu5EMpxv+Nmq48LRlDNZP0CT8u26Ht/8uShVuENeMpPRddWCLcWPMKE1B3Cf8uPf3C6pCXUO5cIkMrwI0HQAXaAj1eNK5+q83+oPBx/7tooWNWNL58nniMdIFoYfMt9E7SCk9kGajY5rOhQNPwu9N43Qyttlp6iCys75FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cN4zVj+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cN4zVj+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1015C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741605533;
	bh=qEIFf31JWS5ulRVPeAwlM73SPX5+/XRYGltqvmBVZ+k=;
	h=To:Subject:From:Date:From;
	b=cN4zVj+SajayA4oZeux+69TcSDottuOglvFPY2PS7UeJpxOGffbO20rNcXvoChy5/
	 2ExcElgpO8lmJ57YCRdgEttgxHJRn2gSeKyd4Ea5CA9TuFNZg7yq5j09TBmGgdVZ6u
	 udYLv5ry03aBL11/CoQ+3FXDmXo6gPFWHTlFO44nq/tMs3DLattnvM44knan54efy3
	 ehCWfV4+dxOjQI7conrBDs8wIMWnjY4hFGYw+djuJ6hF/deWsI9XXOEOv6V1FRQxoc
	 V1GitVcxj5aTgyUv6AFY2w5S/b2sFt+/WKg53lR1DqvQWimqGgj+jgQEC37h/l0AfO
	 UJf7AuYx0UXGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDBEC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160553363.24076.299959760634896697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60896a18c75017d96559d801cdf53720020eada428812b07f08aed7810c998a
Date: Mon, 10 Mar 2025 11:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741605533
