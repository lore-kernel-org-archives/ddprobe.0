Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5A61E1DE9
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752747595; cv=none; b=DW1Do9uU2Bjh342bN94CpHUzzPNRer5uIz5XzUd9yaONH1nomx8Eo6IwPVZyqHWCAFbs03DMxxjHs3si5YKEBY8xCyS59beLV13GaqVzAurPh81BXFeTkkdFc/DwG5bid+JlV4tHCCocd/CxgSn5k/vZgRS2EeG/UrXezyW80wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752747595; c=relaxed/simple;
	bh=Kxhdw5nQ4nTSWIuCOMqd0odKqbWDP/7XzZt8Tq0zdCk=;
	h=To:Subject:From:Message-Id:Date; b=efJHjGfqO1e6nsvUbGDACly/rp0juSvBuFkdtcbGmdiVLxJrT6wzq+2cINWCYlMHca+6EflY1XmsbEXaPcja8mC/H4Jlszll2Swo+DYHw/u9zuEyjAEExOTz9aHT68I89U8AeNzV80EBV3acLdaHccNmVKPC+/mkF1lxikVxejk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPonDnyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPonDnyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DF0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752747593;
	bh=Kxhdw5nQ4nTSWIuCOMqd0odKqbWDP/7XzZt8Tq0zdCk=;
	h=To:Subject:From:Date:From;
	b=FPonDnyEjQoc0YgK5/JrbgsD0nMXdciw8CSbb1axIOgogSlM/ko/g/my/g21u0N9e
	 YFQCHMebsAXrmV+j5tWpcG2wtDkYAr8pr1ZSySwT66deESyhVhgX0nfSZFsnxazaUE
	 aouY8o1428gpyAUS9Ov3XbbOFCipTAvk48I/FN5XpvDyiGu5m3uu3yonF/QPkMkLFC
	 D1UtQH9uLTl17KYBl7Q93skquqDvz2wIjEZQPpCy9laaxfqfuRNMJiZ5gMcOGz2lME
	 ehxeKDVWy5BAws4D5Tz2oqicleDM2iyhMh+eV/6RA3wOLGFixUISnGBjw/Px9mHtYH
	 mbv5TtnNlN9Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B5C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274759358.29981.1093503842215223167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64d3ace7aa9d820c64cade764d9d26b392026eb1afc2713af0d745c8048e663
Date: Thu, 17 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752747593
