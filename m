Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE76172BD5
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734692154; cv=none; b=RJ03Xu7yzGViIJgKiK5wTCgFQzzbqTmIfVYhy+LV3YkF155tfWCl92ZQ6aA2ZSP0gLqrx+VGMI0PF8raUyIQKEYjHAsPAEVEM+f7CVfLbe7zDYy4zrz5oE1I6vRshMAw367FvAYN5ICdCgnE7DS++3yFnfGveNJbNu6HGVxLUZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734692154; c=relaxed/simple;
	bh=f4Td9bwM8zEZ7jouL0tuHmeBxp80gYPod5Chyu/BkWs=;
	h=To:Subject:From:Message-Id:Date; b=qAmZsLv76W3ttlZy8zzFPyh72dWYxID7aj08ZY5fNcx5H0d1J20j1XDYWO9CxoUFV4LItObDuLINtEOFnDD49SjPduzrrxH7eR6w+wUF+jieyZimnUvp04XxwtQzDunP4Xptin4CIsDteO1RUD68dxLeTp02EHhtJpui4kSV+Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Js8inzfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Js8inzfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D69C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734692153;
	bh=f4Td9bwM8zEZ7jouL0tuHmeBxp80gYPod5Chyu/BkWs=;
	h=To:Subject:From:Date:From;
	b=Js8inzfbHA7osXDzpStM76zA8SHygQ9SztNJsrClskLAmMCFCZqbspcvBvEWqqMjs
	 U/kSjHVPg0FmzggF5LQeRmaSvFEwQFbEzt8Y1ooLU0+mlXqhJrjj/mJMTDnpa5+tjn
	 nozQyLOXo/eezJG2Gr+ZHayDNTSrMED4X5QIVUQCabpIGQZywqLePZCF66NyjPTUT1
	 NNhROo3kfExc73HhrJKTLbfoyT/1KEd5peiql+0wv4eckmOfCqZKnt4u+ucDuQdBgs
	 Y5zcOo6aBVhB6pLiFyZY6HXXAFiWsf2HBKBd9eh6RO/hfLVQ3kr2r2xYoaB/CHpqS+
	 3S2XK/TwDCBqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D12E7718A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469215358.9787.8518371011737537016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a570201d0a8c4fe6545255880323eb9b2cb1503195c36e9a0bdf00df953019b
Date: Fri, 20 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734692153
