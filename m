Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61ED52DF128
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791727834; cv=none; b=lD33l/3SR5zAH1z1mYlVBG3djafzkm1dnTERuKubWS7QaNi/ihEeJ75wCajMRcHtIs6ACIZ2REfiNYO6zMwiqPIC90ILLC4NB+qcixuEtQMvu40zrdIV/V774GZgz7ETL6lteelW4iYXhz7Z/CqK2V0KRsVByUQiZRvOnLQQVsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791727834; c=relaxed/simple;
	bh=6wRZCfiPs2CjvRJID8nzGx/8KE0G+wuBiREm22RA7D4=;
	h=To:Subject:From:Message-Id:Date; b=jyhsfxFUJu4oZ2BmK2/rjdTDS24+vQjEcDfxpx+su8Ol2WlhYCCHqa0pvogStkf9Qv1XaO0K0V6N0MDPqn82WRTvhAIQSoBhCexOp3AkWEnSr66BLGtqVXP+9jathOOcfrb1iU37kfud0GWNblcBCLcdXFlNOW4tYp6G6YrK2EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLJwmc44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLJwmc44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4634C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791727833;
	bh=6wRZCfiPs2CjvRJID8nzGx/8KE0G+wuBiREm22RA7D4=;
	h=To:Subject:From:Date:From;
	b=cLJwmc4414vG3955T3cYox5S8BjVpUUtlRvL5feWd4zhXD44ViOi6GPSzVhUdz0vW
	 GxWl7GYU0zRvOqtuMcrjOD9sND+LaNcaTfq73Krqb53n5QLWlIWtRP6NtS/DEb/fcb
	 APlsgb40ujZmaFeKv68GP5MGqIBE20z8IwXwJ7eRcjLwUi7c4FFQGRWQ4W8W/j4r3m
	 4mTd0MvL5hH1JhgffYMoFaBP6DtyTr3jXhUmgpBY3oxY3mHkaB6D/72ZrH9+PdkkCW
	 mshjvK9yr+dn31xd7lVCwlw/bYISEM/QW0z8u+24wpJljdkCm3M7shxf6+2tkmvWW9
	 b02003WHx621g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB46FCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172783369.28285.16703943691110127184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f734297553720f614a06f323cd1319e3ec06e268de1e1534ab973de967d06618
Date: Sun, 11 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791727833
