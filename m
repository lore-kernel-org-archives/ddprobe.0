Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE6D19E992
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786424434; cv=none; b=WYpdN41uruI7gKOq/OiQ/Pl/AglxiaSVGopqe0b4+TWYytCqgsHi6gQDqOFjrK1zDeCPfS9SiZ+mA3PjK+RZtQWScf/COJqV4jrpKPutNydpJ6fxdo58Hi2dZAxPnuHn7O+XsIbtcT0g4LoYy/1NoXvxeMvuNuDcLGa3w9vouvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786424434; c=relaxed/simple;
	bh=1rNQVQ5wxpgAbggc1oTGOOOsUYKYwO3dQCRzQcr33DI=;
	h=To:Subject:From:Message-Id:Date; b=MjOvSetU8RyuRQCH0YNX0fH6WFAlm6xxJuyvXP1pR7WOLiYZPfdoWnauVv24w/obQW0N8ubUYBDUaaf+zmBKfphMIZ6xisnhyitm5dQstE7Ad9DwpthVOE6tktSlE7506a+5eKFBCwzUwsySkzGzWSVuw1W8iRKMcXlb8iLZYIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaumSTUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaumSTUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCB4C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786424433;
	bh=1rNQVQ5wxpgAbggc1oTGOOOsUYKYwO3dQCRzQcr33DI=;
	h=To:Subject:From:Date:From;
	b=uaumSTUy/x4TYr7Tcdtg1sOVmjgZtUIeu+oyiSfzAVGk96YaniKcMZiMlnXNTVd2C
	 q8ELjBXur95syWxmI4gscXgKdpTkG9EkDDtnZaoFkI+lxdYxHD+e3ZOHhmLzIlVKbj
	 zIQOy0zSOSwq4+CD3ez+zOXl56z4EeJT0yDIzO3JSpbOOETYuCYRILP9xrj9laJc8w
	 MABXRQHUx/1q6AJb1AnlnGb+UGfNpUayqpDViyCsMWuHku9vMydcirUuz/cPX3WjdP
	 OxAd1TLGT0D6+Ec/xShI4MtjMP0THb5niLthgjZvKrFMfamodB1v+BKscWcyQdrU1S
	 ZnzujnjMCJs1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FF7C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642443368.1816.13858076027777286478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e157866e93051c157419aeedc2e93fe2afb128a31cf2c29aea6552334105326c
Date: Tue, 11 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786424433
