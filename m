Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346FE1DE2AA
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743177595; cv=none; b=WwgVAHrNbI3qBx1PSUHx10K08RdqxJSoC0rK62NU3rDqG87TgnBX9cUvs1XWqZHy68XoA+mM0etXDAH2CLMcsQuBeGkYIRis9ydaXmDUe8Xr5WS88WSn6/7VO5CCUqTEYt8rfXiapYk/VdDPR4o2uSirC+GxN+fqvQtMke/G/0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743177595; c=relaxed/simple;
	bh=GDV+GUZ/POcF9iEffAjMjXvbihX2bAF1vLhEUUDkqVI=;
	h=To:Subject:From:Message-Id:Date; b=kT5qjhUd28vV+ooqyL0wEfoHi6ODLWXhLTAgY65iObFIKHjHEc5kd0lDngBeyZwi85TVAv2iLEhbDA2f57o5EQ4K+/bru/ojNyh4CxMzLSe0s3+k6CNEy8Ksrs1bJelrczrzNsNEmIq/BwD6HcSJKsBpcAcrmWctSO/1EluOFls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKD8qaFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKD8qaFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB2CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743177593;
	bh=GDV+GUZ/POcF9iEffAjMjXvbihX2bAF1vLhEUUDkqVI=;
	h=To:Subject:From:Date:From;
	b=VKD8qaFcgFXcfOYCN2T3kZ/5laPQB0dYXLl5GWP+NSAvHGWyXlx5BQnWgQIJt01eA
	 C8I7edt4aEu9qIZJcZaiz2ghzzXJsB8BfmVG7yXlGWS9+Vv4JxhCejZM62l1G+m9T+
	 qT8w9espoOOiaG1wqHqFoJDdrunSCcoAQXRrLQVelX+/lh644vNG4DuzoU6V2EXXDJ
	 WHo3lxAurcsTNhtf6vUl34ItHFmkQI7INyrHXgn+sdWOX6FmkxIEw4S1t8flFNSfNT
	 aorgjauxmAblBeXzHgz/v0FkfPMH05WngAECftoDAqheUjf5+CK0m2WoLZkawDs9On
	 1RpaYDsPok/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C7BC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317759361.30288.11878151789177240480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5997cd24fd7153375a9fda29aa0d7683dc19138338acd22f0a4f2f71e79a729f
Date: Fri, 28 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743177593
