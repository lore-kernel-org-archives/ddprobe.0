Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53368209F43
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787712634; cv=none; b=Sz2edFAT9wKz+W8UQmYSrxDWH5RohNQXQWYj90uDXg6f7e3xw9jOh64wHv8bsHXSLtr72m+LVWxyiA9mKozGZ1CnNJAmqylDpCiwpkBqlWsfdlF1mPGqeWLLh+yEGn3tvZ+wdjAiIF2dBAqIA7+2QLAKRZuW1V2rkHB/+pEPOiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787712634; c=relaxed/simple;
	bh=WfwlihNsHnj2eijhmbuHYLkeNQTICPE4goScTOLBX/I=;
	h=To:Subject:From:Message-Id:Date; b=AW0pfQWqu7UGdmlthRGymHtalx2Q5FIOApUEJgJSlcl2JUSMXwKXLOrRKmlrHv3AWpGVx48I+ajYDEH0Lp+uqP45mtHCQX5OLrY3LmJP4KrBYByYTJZMHUcz67sknCXv9C+4h1N6BFgMI5giCK+tas0+HibUG/wtEoR8EuUOMtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfmDtT9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfmDtT9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B4BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787712633;
	bh=WfwlihNsHnj2eijhmbuHYLkeNQTICPE4goScTOLBX/I=;
	h=To:Subject:From:Date:From;
	b=kfmDtT9b1c3faFjCujqleu/5l9UXRv8L0kwp04TvN3OhpiFb+BJTJOokcXQBS1TeW
	 X8iOqty07X4FC35aWAiN3BWjo92BW4YqOAEPccme+AvnJKkvP0+eZhDBbqG83ejjWc
	 /7rVjU6U9x/3bYmGVGSkSzMkAtyydItCP6g91fSL0JFX8dBzYEm4ALi7RF2bZig8W/
	 g+SZ2csxWjZNdMCYP6WKgIwTAEzbdn2gVv8KOipj8x4wb0y7yObGJTqs2gkT8tA1Q+
	 DppebqzLmJYELe7kUYfZuEabYFi6wRcdTm7an576zWFUJ6FbYhoclue58WY/APNxh2
	 uHPEU/NzzQxuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B061EC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771263368.30920.9598554331326234506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8d449c4b71e981116cc1094a8f677c3e2a21d006423696b715da802dfef7b8
Date: Wed, 26 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787712633
