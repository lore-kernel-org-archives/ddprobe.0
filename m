Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDE1101EE
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713870023; cv=none; b=t83gJjYYCJsSQuSYlS6lbmLmCWI2ClMSsfAVaXHq+1HDOdlNJhV48kXwjb3AEl724xfW2ThCGNBK5V5DDWUzHD4oz7IH9HvW9FDQhDhHgbwtZltIILBuXlymONVb0DoZycXYaN23Mq4P46uuZ82zFvf9oBK4Xtqq+UwFGZb72sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713870023; c=relaxed/simple;
	bh=ua3ZleeodeSTq+21QopLgKiurCZHYU5MRsc7vphnP3w=;
	h=To:Subject:From:Message-Id:Date; b=JFFYc5ctxE6LocTqJFGRNL4YE/N/2zmzWcNTAZjNT8wzHX/GzaKmaGyas72fRvRmh8Kjc0mnJK+gQlrp70I4LYolsZcHjgGEnav/UhN0g3D0dMSm1UycsMAh870bUnh4HnzYHxucQAxhlfQmd1P6UzGedvzIMhHYyWtYW2N1PVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ikrb3ZUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ikrb3ZUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66EBC2BD11
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713870022;
	bh=ua3ZleeodeSTq+21QopLgKiurCZHYU5MRsc7vphnP3w=;
	h=To:Subject:From:Date:From;
	b=Ikrb3ZUG9/ppxSDyfI9CaZfm2SJLtcdPxhXigtrpJ4WugZCg+AlBiN3f859fQ64nV
	 cM8ZK2Of7Jhs33W/Bw3FZSyjiRXCMEmIlHTNvjtuMTWZnwzx3oiiX9cfpGOyjItS6s
	 DQ/jq8XZNhmlvFLixinz11QFjrO0Ul3iVYQ5QkP5XQmojwVqM1WbJB7fbpH6RgtWpg
	 ycGu7UkRDoEknw0CV+KGfvmgTJsPjsKb+Awm8ZdDCpGStsBbHLHafYHP5B07YFlpQt
	 waTwoJj/30fBe/ybAwLWAWC6E3en/iKNP5DwL330V90Q9tG00dzrSehwTZFseEegsU
	 GQth6I1nbosCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C84C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 11:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171387002276.28271.9481655757406618256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccffb8589d660bb162ae9339f45168b205ad655a1ae849ffdd1b28988ad947df
Date: Tue, 23 Apr 2024 11:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713870022
