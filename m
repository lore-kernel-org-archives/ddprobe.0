Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2604331F98F
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782764914; cv=none; b=Rek2DCL7s4Y7W0Ie0vGjPkWBTqffHoSmCN6KVGvDPACO6NHLJvHVqio0qcDtQ/YzNqodYF12WGGgStmqYZOrPcCIuFEaPBnMh3j85qOz5NxSd4X9gH3GQb6MiR0UmSsAQ+EtFpsXn9U8rwdBFpA6bYHfmEitSZsNf8/FblS2IOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782764914; c=relaxed/simple;
	bh=1TqQWnoMdH/V0hOm9UtGf21Y9DSqm/3JvgPLWCY2QVs=;
	h=To:Subject:From:Message-Id:Date; b=tkywbB0rO9hTWq+LHdq04AqvCLMF1tgiRdkj/o6310o4S7Zr1aAua1H7CeaHNWQfH829hE5S+Y1EYVYsa8DBQWN+GIaZ3skgnU38tvTsc+XMQZv01jkbo69+GYK2odr76tVHq0hrQYc+5kOOfFgsOZ1cDpP2qwQMqhTPhqHQgWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6w383dr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6w383dr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28DFC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782764913;
	bh=1TqQWnoMdH/V0hOm9UtGf21Y9DSqm/3JvgPLWCY2QVs=;
	h=To:Subject:From:Date:From;
	b=u6w383drSExcofnYX/Ydok+CJ4yfNT7SrlI7VKlOid3qT3xkIggsRe/j3IIHT/cg/
	 yECpZQAxxCd971PtVi/jdg/QgJP77aS+8tZPu3u+DjkkzyPqgrzy5eOzsVoew5gSe4
	 o9vcJD0vNnBxbNj50kcK3IM5nEDn7Rke5gYEkRcwAwUlzwDc/feUJkgJ881A6O742q
	 RRcAFzFPo1RB5+ozR0/ye5CMgKvg9LA/oWr4y4ATxpWsUXaDw7OiHqujT/gUExdCs4
	 mNnzZNk+JPsoxo92ionKkM3q1QtCl4u5A2Dc2VnD7rS2th3tsLPSsDDnGSdBL3hXmn
	 L+Y1lThVVL8HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE6C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276491368.23003.13776402019460344357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c5066e36d06bee71fc32d8fe0288bf55715133cd69bc351e9bde8a9c6f9bdc
Date: Mon, 29 Jun 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782764913
