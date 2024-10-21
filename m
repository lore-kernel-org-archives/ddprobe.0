Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1461F941B
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729519554; cv=none; b=b0kKEWJ72F9hXKmANHJcDh1KWdfq/eemxCX4D5Pw7KEH6leU+EuuMEfRccOWOgddY6yepEnbUCIYMMvnDcwmxbDMzamXp+2fx9rhCx4WYr+YWf/MsBvNka4cSLK3gQfAs6y19FTwzQ4MK85rtArIZOHT5IWOggdC8oXPmI3xM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729519554; c=relaxed/simple;
	bh=x77QOOHmafgkDiSw94qMqWF/d5jn3AjjyCBkBMFBJ1w=;
	h=To:Subject:From:Message-Id:Date; b=nfJMWvpYVvVKzZDkWVQgsh98VOktI4DJp+hdIgXnbmJ+88HYIgMYu6pdl5iKULYGRPi6yO/uzlGE5xZCIwirbojlHmmiZ+PV+qGXgsIsIsJl91DvCGrquMXD4W5OmPyvzAsyv+kbpNBTF2SDMOndpPf0IJuUqI23abv/5KlGFd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpXCeNhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpXCeNhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E39C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729519553;
	bh=x77QOOHmafgkDiSw94qMqWF/d5jn3AjjyCBkBMFBJ1w=;
	h=To:Subject:From:Date:From;
	b=TpXCeNhb/Q/DR5x+HyC6TQqC3oiBhgV1eAMeUGkCl3IgpFkm6k2FFk+1Bf7zqVh/7
	 qqnyypjWzb92zw7NSoa5/es3K2c+yHURP5U1KrDj95zuQm1aXj5nkY+5pZIUmHoHtT
	 yvf82Y5zZiJPLTYtQATZ614h7WTSOn00aDbH659M1hWyngnZ2PlA/N1FK1Y4fhJVA7
	 lcfh+41K7Wo2PhmABB4mfXObsaAqey0PziGt1B4v2mjjrNcDgiAyaFkEhSGOyKYGzW
	 ebDWgXe3aCMNuNEzxuj3GQmP9uE92SVu9kzDdTOSMCDP2PfpVMK2hsNxUDws+9JHdQ
	 4eDh8q3kKK+bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96177D15D98
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172951955360.8137.17480076991341130583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2862eaed03147ccccc6be07ec69386259d6e6737ec0c259b085fb5b9fc806dcb
Date: Mon, 21 Oct 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729519553
