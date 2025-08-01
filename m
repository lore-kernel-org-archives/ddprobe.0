Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186AA13E02A
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754055595; cv=none; b=qN3BNeB74YthG9Ldodro9RJuV9sZGBMHQcylTfuCurP0+H3o+nqHYFjleQ7xJY8cunxVdetJhF/0h0GlGFkKg3yk6bYScYsRuPW664n076iiLgWB96riafOcsIKdeCe8cRcCyT4aV7oWLRGHSkzzDPsKCPSCvGARjkwhadNY94U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754055595; c=relaxed/simple;
	bh=vB3CyYTheq3509V/eA7fY2hM/WWLVo0S6hR4qp597gs=;
	h=To:Subject:From:Message-Id:Date; b=AlQo45ICKI8VAHO3Dt7HSFoGMf9iOzk5py1c+C/Qh12p+/T8wLBG5Si6bD+k0OAVApEJEziNpQKcodqY8sPbfgzwY58vO5eFQ2tv1RkEf9Wj7i3cc0HWFu/hbis934czWpsf1FnlnEyCbGFNag3gtfifYhWvNmYVpEU7k0XP138=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcooBSCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcooBSCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E768C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754055593;
	bh=vB3CyYTheq3509V/eA7fY2hM/WWLVo0S6hR4qp597gs=;
	h=To:Subject:From:Date:From;
	b=bcooBSCljc0klMoJZcoSZhtrCYElQx/9tMrY32swrALP82xywgZcOd0uo0YOX9uEO
	 QJM2F/LUb1zY8sd6ijYZqm087qVHATqW41TMHK8BgEDJnub0m0IqstPzhEm4KZxdWC
	 Rkx2cWx3V63IF1vJIZRjoye69RECVUwgQS03+POt0FIyRV8L7qXhxZsW7fOx2J7ZTc
	 bRvWIvFeWcZsav+upWXlujohx+3rKpGSZ9U204tLYXJZq66+it4vfjgQ1VkWKt1i85
	 8oSbMD3SYib7BSwWPPH1Caqls2McBBoCswWApq4TkVJTCyWsVagtOuQZBeG78UrtKR
	 LcQ7HWnbKuWnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F279C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175405559357.32200.1776834744542996932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0bed44bcc9d80dbb7fe34712d819d1f8e3e16635d844eeb91f4ab88cafcebe
Date: Fri, 01 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754055593
