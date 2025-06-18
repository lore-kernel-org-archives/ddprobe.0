Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A95B1BE871
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750219194; cv=none; b=ZUZtRjXWLCTeffmkFKPbv1+/dtX4NFHUMV8c9oDCZnhg0Y8TwkWhoFVi3cD5jLAAQpYEI4VUgD2J0qq/4uydOeYRacbQuw5+iLtvMrTrknpOvAg95ECWIMxt4t2XKo3f/YjK61qZBHTXLWTriY/iJ5Foi4letFHdWfXMDsQt95c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750219194; c=relaxed/simple;
	bh=t86rJx3Y2Y8V86ID8gXMEV4IRtgIEDsBlHWEEdl0lgw=;
	h=To:Subject:From:Message-Id:Date; b=EWaLGvwOwNPB5ncxGlwNC/gsbm/nJdDfY/u9P3AEVWHcGyjJ+FMyu1Az/WtlPnzcIP3Vyxz0ngVanv7S0+5c3YYiqtTyxYV1Rs5DaZrFIA4cDhWZthdwHL+gIAFKDYjYU+rzBWkLiBOotAR2F5Jqd3hJmpuTz1AWnk/9Q8wcjdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQf+fQMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQf+fQMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFCCC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750219193;
	bh=t86rJx3Y2Y8V86ID8gXMEV4IRtgIEDsBlHWEEdl0lgw=;
	h=To:Subject:From:Date:From;
	b=LQf+fQMqH2EjuVlzrP8Xm2/AvGDjuM6OBT6yBzDFTRXw/duLeeVtfTBtfpQvmP4J6
	 bgH9dquluTyuVlswXocPAPj026CryNTXRE3KBYRBh+6JQNGuFnf1phT4tl5pWHUDWy
	 Yz4DfCPNRwGzawci0URbN4tyhLFZfcbGBlwboXcVvWJ959NCqiZ4KuFVnA5JmRi3Ct
	 McFcTGzPg1fhcz54/0nU5/XgjCsfH9+p7Pkc1OxmnC2prrVoDQ4RXmYt1CBmDSDGIV
	 MWthsfDG/7JtsE1mJ2DCuZziFkddvTBlH7TG660XltCVaHt1p8MWmY1qaTIvEl9XH6
	 Nin33aokgIMuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2D4C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021919360.3658.9154288515165271975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e9a47393ae7490fc24e3b2655bd90ca6c4d5bf93da8e6d15588942536525f0
Date: Wed, 18 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750219193
