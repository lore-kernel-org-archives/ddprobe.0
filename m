Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33193363C6C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780212274; cv=none; b=Uzur7Ni2hAm2I7SJONSApA9gyifmyB+4RBsF7nmROMjPLgNHLfUSiE1SDxwzQ8aHWS3IPjlK8FpG+e/tYOgIriq7WXoI7+WXjP6t6fMbVOevG8kUOo3XAZ0GNVIkwtEwW5nMsYu10byOIlOv44z0fv9wZ3vPAX9M+4enfq+hSjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780212274; c=relaxed/simple;
	bh=WAmIhQmiNKEwQJ+2Paj17gA4DMdmhtGSj2ki5V4rYn8=;
	h=To:Subject:From:Message-Id:Date; b=RORWkGrQ1241oKmTRPlA+PzuLvgs+DgBZTyHergBh31n87eOe6BK6Z4mX7CnBCtOpFfRBMoMiSqOZQir3s6FkKXOsgqLIJceSZ9/h84aXunnlGHd2u7k2HXccreE6Z4lAjcBi8NVwAmY69zZtbd7C9RssSOi5PTz/k79KEx2qVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vc9zw7xC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vc9zw7xC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A0FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780212273;
	bh=WAmIhQmiNKEwQJ+2Paj17gA4DMdmhtGSj2ki5V4rYn8=;
	h=To:Subject:From:Date:From;
	b=Vc9zw7xCjxjmv9IRzng85x7CsNGSsy9maHVuR4XFqvub5udPn0lzXvwPi42XhVoz0
	 WK3hfim+puMSC9l3ST4ea6P93gFz2gAZFetIqHx7mO/G9UeB0M1D/Qs03teks35OuY
	 5dlHGh/hNrfnE8aQPjJGHHWfnRBDE7pmZQ6YaKisBCFZAuUtkwd5Z9h4e5l55GfEyW
	 5/STTeHQZ5xjoiwcfntHCzvI9m2YOtOFmijVk9V5ovLBXxOE/niAD125AyvariLekn
	 vFeJp6oltUJk0EVTFE1RrUVTqnyKGk/aGuQQFJJ7evjXn5E5ymsF/je9lNOYwGAOTt
	 Q2uH7BqNG8RpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA72FCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178021227367.28303.14838583549786787160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4e723e1d17cd33efed16ddfce9f5c7f40853e1cd75915212d5e9074cc3531d
Date: Sun, 31 May 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780212273
