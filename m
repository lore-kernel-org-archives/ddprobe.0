Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11820343D6C
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762813794; cv=none; b=tvQYD/zYSo+LJhewLLYxstyj+r2+Y5eOhqrKeTkMrS2cFP3jbnrQyFjsURkpaq6o3w+sLVCeqhvQX4rrXTapb1i5DulwrbmK+KLbxY56Si7VVz2AK8QT5/7RaIy4w3eELIUrO+VkhAYIS6DSO66kijh0svWnqRKjN6/tYXP75sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762813794; c=relaxed/simple;
	bh=Ap4B7KpmgAiFSALd8TtkYXUVGvAjydJ46nu2xqG/Tfg=;
	h=To:Subject:From:Message-Id:Date; b=sld6MurCwSxlzFL4fDrteyjrHPUZGkLL5Dk9hT5bznyquzsSdqwnGx+9kah07k0nUS7WhLwcCusJhffwS5fU3APf7lss805v1mAst5hDE3cgb+YXvPNIbntXLPhFad2+JqZJIUr5kK5XDYM/FXfx7Z4dTDnm51eDjWjsOsShIEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqskSJ8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqskSJ8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87D5C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762813793;
	bh=Ap4B7KpmgAiFSALd8TtkYXUVGvAjydJ46nu2xqG/Tfg=;
	h=To:Subject:From:Date:From;
	b=oqskSJ8j2lL3Lv96GOJ2NyH6MKH8LXt1Wp9viuRrwXmBH7SAlx7dYfd1pobekQbcR
	 57usUW60+M8MrM+BAcnOeWxwIYPIWyQNRGNQwtW4cpttWDgvGfhbbFxVWVvZejnMvs
	 oDwZAxxbCq4YuCBG2hCqbM6NbfbxV6j0DH72V1uoTmg7YvyTKVwAbTO1KM43roOhoQ
	 4Fcw/grEdyFWCgDL0OvS4Oeb5/4fNvI+kdH8kC82ea/+1XmUxdIQcdNG5TaMG8C+Y9
	 jgNjYyuiQuPUYbpZoVU4UjfBwkEhHd4e0IubPbOzcpLmmF1idgCuB5UKcd5dJGRBKB
	 Vgt+diXm1LMpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B635CD1297
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281379358.28712.7276504549283815144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497c21f78cadcdaadd45ce623451b09e3848c705ad32827a466d61c69cdde1fb
Date: Mon, 10 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762813793
