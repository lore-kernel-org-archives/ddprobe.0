Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351C7137E
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727658954; cv=none; b=a2z83neP1nq+AF0ZUFIs2wkIsqbE3Fuk08oYo2iuQPrKxlGno+L4ciccy+fcXNAVOHBkFWstkOrfdRu/nnjKiw2fU1eSNzSkBJopt4Cqf+eexU3lV+ya70W/HZbyd48qyuAsIqxcbi7XLIqnCyvDFdFt0fOb7lIbygwqvEMSEO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727658954; c=relaxed/simple;
	bh=cAYoplqlGqLbBp3ea1uhWp4dfGyUfzfTKQeAAiXo61Y=;
	h=To:Subject:From:Message-Id:Date; b=pfkjWDRQgYVTjTn51wkzL6noQnVF9RWSWP9Os8ba+g83w20lpmcA/KwpiZpglvbjMrFKqjxXzo6eODjqdDeZmHOxtTrc4FR/ndCfB/Yusday8nRoK5Ae23QXDMLuVUBsX+yNLF3MqNHFE00cy/GVNqVLtqXPsRS4OuoNv8Ge3P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5LHw6eE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5LHw6eE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9334C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727658953;
	bh=cAYoplqlGqLbBp3ea1uhWp4dfGyUfzfTKQeAAiXo61Y=;
	h=To:Subject:From:Date:From;
	b=Z5LHw6eEJn/GoptSjgFUtfvuwvDxlNgkE0/TKaDm7U9RiUk52p33LX0tNMy/w2+Bq
	 MNz87tnVCjkC/jOzbUC68HYOFyHUw0iXB4RltW37UlwBPscHE6KOyUQyUqLGMHgfNb
	 mHHZHYrxC/BthqbdC3njUOGftsWNi5NdWYxQvfjdPDmFtsL1sYPgHNqRdjJyjXSogf
	 TIPsqLgzgV0Ekfpv6xjjnSJqbyAcmd4AR5f7I7vKTnImHEqhso69mB/VT8Ezc5K3H+
	 oT66zzIJv7zu2voLDRrJtZX6jqgHcptp7t77+Bu1f7nb30Sj+ZkG5I08DH6zfUyVQi
	 uwVmQkH+JJjJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D19CF6495
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172765895357.12335.3301787444391312863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1531438129d22eb883447d021d80ddc51fb6a73f2fc0d38cde605180585414ec
Date: Mon, 30 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727658953
