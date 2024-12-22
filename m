Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159051632D7
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734856554; cv=none; b=Dm9eVj5X9/etuR0fiDiVsc36YEYwGaHGPhtDUEVJlSugu57+QQDHGpK9emu1SsVYsCn/faCOFr+GSQzynb3bFMbQRCJDcxWqj/0t0vjPyWw4DSaW48xiFEcXILGziuMKsZlaRjPkLw1QaUEoAFEBZUdI73IC8OehOgJdgoDTDiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734856554; c=relaxed/simple;
	bh=3L56XJ9tyLbmBgZt8qKcjlrlq45Yvj854cuYvazIm6Q=;
	h=To:Subject:From:Message-Id:Date; b=Y5InP2mMXBPf4CtPMNRzV+yGdlvQjUw6E4Jczf6o1VopCnmwyJKqTpPKWDbbmwoa6ni60kxG9EyUvOx812dHS2tJyG3NwH2HM1bvBtSWCnj5fgoIBQjAeeAG31zpdlCJNq8Z3Y9P0+db2ZrTEf8xvUTwZpBJYNJS4SO2bba8quA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ff8NWqZb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ff8NWqZb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A013BC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734856553;
	bh=3L56XJ9tyLbmBgZt8qKcjlrlq45Yvj854cuYvazIm6Q=;
	h=To:Subject:From:Date:From;
	b=ff8NWqZbqKGeQiQBDPAPdE9Dd9cd+TZT8PIxqanhFThplQqWVJKqhSo/UOYmV+lZr
	 e47t0HsgNa1pheNmPxIz2T2UKHoaEG0CQHgxiye392i669hd3XOW4SCYYYdC31phI+
	 ng7FtnyzPneFDrZa8QBW5HNmf8f8ekbmA487X5JCP7o0YC976p2jJ0lVW8mjkHyY+k
	 eUbT/ZRDl4eJlJnBVhDTThg/lgjGmHP3MxoLgN+jionK9VFGncG3BzimdeOdqsgVes
	 +lev+OVvIYC2KMF27xNKWNekJuTeb4CkXYi1YawBL/1k0YqhckoZzkUSOvBNM8OYpy
	 XaofxrAMsbG2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90498E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173485655358.19768.11636709804749488037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ccbe67a962c79a68e421abc240a886293474104891924c9c05327917abd177
Date: Sun, 22 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734856553
