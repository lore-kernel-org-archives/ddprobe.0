Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA2A22E01E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749672593; cv=none; b=fpl9Xhownu+RMM+cj77WU0cnWEwr85qwtacgg9gZSZIanXfmmpjqaytash7icc0eJ+r7mYrz00aH5LewI7wMXFkH4HiRHRNP+2sBId2bbayr3AL3YZkolzNFZxmdIIKsg5rbg4yCb8mDyhBgtoqLlubt9UyVmCGMciGUavKfoE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749672593; c=relaxed/simple;
	bh=2SLyhr6OfzfsVkMjVBbUPWb4mNNobhz13A05H5/wnjU=;
	h=To:Subject:From:Message-Id:Date; b=IG2vkL3zfPuuPiQ1gysuvViKdGdhGm2T3sixs+ppZF2ylZAcIIyZv74HZ60b/FO9twrZxd9+8hTK6JxkQjc7DNGq+qMxS5Ria8A/bIsvPaomOrdOT6YAkTvlFxxbInOBJ4CSbnRz7K5KaZA6Kpkd2cOhc6xetFmJw/bSgn0I6cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNRAfXD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNRAfXD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29FBC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749672593;
	bh=2SLyhr6OfzfsVkMjVBbUPWb4mNNobhz13A05H5/wnjU=;
	h=To:Subject:From:Date:From;
	b=gNRAfXD2lQePvXWUXAvFW0sa3JMZmCLz8bMp/ohsr2Ns6xIio/xWEW+DxwuUSfWyO
	 SUKK4OB9jGTBoEQHPxpKv6RISYi5LiC/rRQ8NFV8si/Y/U+3T9JEV+wLSrpqiVq6Rz
	 qtN1MSpifLgmYngVM3+gVvSdHBb7hzmfwifSszzH+GUf665pEOLZBkPSoP3RVutb2S
	 d7bMw87ejNgoosDK1m8EKMahH4QjiYYvTIPh93ksfZ9d483mh3N6gOskAoHFC7okqE
	 SsWhpKN7p76wF72fq8KOfdH4CVsAY440KnhVTZO1Wgy03JuedDt8qCMNSjMM9A/u2+
	 0oP2Hv35Kw3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD46C71135
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174967259362.23149.15080329045251323079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f2b8a917ec3e6cb1361d218cc49d58ead04e1795a59735240f61f1c595bca9
Date: Wed, 11 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749672593
