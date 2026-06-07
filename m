Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAD47082D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780849474; cv=none; b=TlBA9YnMSr661jqgTXUqdt9R5jifwwCKDOnlX3RtCFjRNbsi3A0t1xgpckKSWKkk10Iva1IWbYzuQALa3KyhRajLpmWwn6N5RB8mnJwwoiZdbtlYGX3oIiRDLM7q3NkDfmxDGseyW1+aVdPt2vlBptaGB5FYVzV8K+G8+rgj0jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780849474; c=relaxed/simple;
	bh=YNMXWuBbvGzO+uvXxmwOvSDD2zABXM3ATtv/393cD6k=;
	h=To:Subject:From:Message-Id:Date; b=HlBoXiKcRiPQR5eqA7xnEPSEqY9WMygrZPiB/maOIFsT/qQsmyljycYcEOZaS5vreWZHXerqDrR3rWwOG/1dM8j6hsH72HAgvOBmxig0XzYnDzzsiZieSrEKFGp+3BpBD7pWbrnZr1Qw0mPtMGAYZalmoyFiDp3O3l91RakrVN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gX6hafRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gX6hafRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74C5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780849473;
	bh=YNMXWuBbvGzO+uvXxmwOvSDD2zABXM3ATtv/393cD6k=;
	h=To:Subject:From:Date:From;
	b=gX6hafRLRhKFgbm89QEdTA7MgspHM+8IDIGvg7qWUvfCZC99pTrZcEKOxyqj4JkUK
	 PFPMAqZdg4XwjBZyXRXaQwr1ABryJbdcPul9560RJTd2FsJ2VW1diQuhtRo/QnD/AN
	 ZWg3aFnLes8aD6s1AYkQ8CCNK3PzdRyk2szvm3ybDEoJlq90b96CYZiYlUQjFLf6ze
	 wuOhdaQcUKrA06iqNagH1lCJWlueomNMhcvaf8VNjs8j+lFZSol+pDm+ni4D0Ltnce
	 ht/ycthOZT+EUj+nK6dN3NR44BtApysU9COKQKdRL711Flz5s6ltTUdeExwYllIue+
	 bxHG2gpMyeUmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9AACD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178084947371.23191.8126028979221479334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29ba8e13ad2d9f5770c1e53487c81cfacdf84816707f510524b01df927cd073
Date: Sun, 07 Jun 2026 16:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780849473
