Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350011A3162
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741333734; cv=none; b=c8vjCbMt+TWdKbmtksrw/rHYaoSmuT6z9Dn+MQGkjkv7fHpwglpZQgWzFMNRgzdGtANfZCxuaykbJlkkPcx44vI4BQC2ylBVkKMyIVE+dxnHhoXJlntDDYqua31o6NY/bhpERzW56OE0+O6pGy+Jo4HmQRtjYD4hRc654q5NLL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741333734; c=relaxed/simple;
	bh=lBTVAMZLXDVUALfRPxUIiowlbNVeMPt/tBi67WSiVdo=;
	h=To:Subject:From:Message-Id:Date; b=kJMjGxe7FjOGIuvEnRywuhSFWEe+ERnsDi4BraUCODVXfnktZZzQvlvRSmUqyfVMeubWaPg+1tKam0hCrLdFSaGbC4Y4p408PIg9pyrrxGJ7C6QsF8Ss5BwZj8qrfvxt0VbEp54JmGq/1XOGUuHJBg+D8Egflhp5AeZZjA2sk+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VX6I6ABz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VX6I6ABz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FB9C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741333733;
	bh=lBTVAMZLXDVUALfRPxUIiowlbNVeMPt/tBi67WSiVdo=;
	h=To:Subject:From:Date:From;
	b=VX6I6ABzcBGSsWUBfS4QkwajR0h5Y71Bvw/TaAZgwclO3hN59/Dk1bJ5KhDCA7Yv3
	 RgxIlsofyX1GPIbHjCkmjtBgWJFOVoLbnYPVCHulj9MRKaOXdt5ugHAjUgR+Q7b95h
	 7Sk26ty31ggLrEkrI9sdTXG47Qr+cpfXKJ/4uGL/DPvA3Sdo5tCNhhmoYfFcBkd8Lr
	 9lesg253nOhUVenuLgIXRd+ijzRKvd5OXuzuQO3vhltxqnc+26SIx9TSXe4plD/ve+
	 ma4pbCGmRpxxUDCFatnLv3sAlqUZWAGkMDBpW5dC5DtEIKypIQgJ4qN3rDP4bOWtjv
	 bVyE4iRQTWPGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999F6C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174133373359.19852.1595197927395816288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a299bbff952f2f49025bb807af11d5325225c3f764d0dcd776bfb1e9673bf0ee
Date: Fri, 07 Mar 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741333733
