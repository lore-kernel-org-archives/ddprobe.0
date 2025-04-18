Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4401F1FC0ED
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744973394; cv=none; b=N8mhdOL9ybG+n4fw+XpRh/iFWPOUnsxtQ8DvyyA/J1zjRrBuooPsCg9LSouwZOG04Va6wbrL/uATLWsMklrayAR7E9//jcLAbUN2ZEIkbUDR82elo/NBewIYJr85jdslT8Qp2A/aEhbJ53nmnHXXNmVpImkmS2PoraZdpRo43j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744973394; c=relaxed/simple;
	bh=dh82L34mBko+2pF9T7V7fuEtyU7JNSZXBSfZVjYxiJU=;
	h=To:Subject:From:Message-Id:Date; b=SvJNUDNeJDtf4xtzpaIRKofp+GZDWr1l9kaLebhf+L3jqksV7sSIgNPzUSz7RgSbV941hJ3z2UnumNmoR0QXmD1otTBQGhsShejUxTbGWwfwZxL65Qk+cj67fEbZRMzEEBVAs8Ru4c1GEmzEljWbvWqEAHAk7t+Ucks/Uw53eeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vE5OuPY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE5OuPY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29A0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744973393;
	bh=dh82L34mBko+2pF9T7V7fuEtyU7JNSZXBSfZVjYxiJU=;
	h=To:Subject:From:Date:From;
	b=vE5OuPY4Oo1YTgRzAIY8tHorlP7kFlfpHX/aKfM4TvTk2JiYIVUObRxBtXcd1U+4s
	 5vOA3FrFVqkxsnUGC3pAhLhgT2WgSObdlOjAhiW1SD/j7mjRrMVb2NNIsPKKS1UEbO
	 hIqtMmz4kirc/6xGHydKj950GYMjc/QdGv1LDoOCgWg3krud8tBbjEcEzWtBfnUgIc
	 iccR19BP4bXojt84YAYBM2O5+Nyf1awWDr5zGBVuaz79rtspE3/uhiNKSiC+E4/I/g
	 /exw73vH8siws7H0w1+Pzy7R8CiWF8OWaSs4Fs9xoYt7i0askVzvAdL7bzni+OP3Ag
	 Gr/IKYDiowctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F332C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497339362.26162.12726643571008307954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35fc120d4e69fd898e6912c33eeb117099add8240dc905f5fe571754df8ca65b
Date: Fri, 18 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744973393
