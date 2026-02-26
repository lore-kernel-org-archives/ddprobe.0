Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDE6313523
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772147694; cv=none; b=q1vhMtsuac7ciBYROTVYAxw4oAS49Qnrs3yX5Jlc4Ty72imd71PNpfmBJspnnJOxgWKCpIbHhyU84Wdg/TmkMdb96JNSZJdbnXyCo4QpdAOE4GH41cvoAhTDhzGz6WLFW/Fn5ovbGDZjkZ8SsU/YtY0vMXCb9n/t/f/MCmNs7Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772147694; c=relaxed/simple;
	bh=CQcScAxGb+VJyO7JW8qJfEDvTkup4mCgdHTBYn1GONA=;
	h=To:Subject:From:Message-Id:Date; b=SZB+q8VtgHqRBq1Mp6nhQxx2JeZOwujUFDgdvAzQDcKupJov4/M5LWIvnTqvME7OZJnQgiPvIX8oM/AOMvaMqHSi8w/lc94mofr2q7JIzP+redgVQx8cjTXibFzvoBH8VHtgS7L15SC9ICeoXYNujp7+4yHm9Y2OAdpnoMXO9Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUWHakf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUWHakf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34D7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772147693;
	bh=CQcScAxGb+VJyO7JW8qJfEDvTkup4mCgdHTBYn1GONA=;
	h=To:Subject:From:Date:From;
	b=lUWHakf1BHwsHu1KzUUV2wpV2GxzOavuRDJXaIdfVbWxGKKKjZr+rQKPmc6VO36L7
	 +BQ+mKQ5WfObbHsx7tARyTeunez8Dp2yz+ZThZT/L86DtyYkapiRY6tzPRKKydfR/G
	 v51qO6LiRcGV90hZcQ+ElUXmbcWXkvKBkJx2Nq74iqcyFfmKtS10OTU7SIWcmvXBgm
	 jkvN4LSzTwpj72xd8krOgL0zhlff70r8+PD6fCdsbhTAtP13EaUOmFO7WZApM/ViCl
	 d+QUjxSFNwnWJZbky9CzbNwKUVaytvKEsIMDZDBEavAEjUmgF3tOSGLukqxDhBDQzY
	 scB1pxmYWpkuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39A6FD9E1E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214769365.17194.10107218687122867065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd51428c75de2aa32224d23e03d240f5e7a683cc6c970c8cb951b37d618f27c7
Date: Thu, 26 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772147693
