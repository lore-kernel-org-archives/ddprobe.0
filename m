Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DE817548
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734845154; cv=none; b=FK/8L820IoslzigFLG8wVUcq8wwM2NLOtVJJXmZwKHlD/nB/G43DOXzi8Tm3lgf3Y2cpxmxkP3eVxZXnqm+rmmozXmRRb1i6jjfjxRbt+KSkB1DIONBgX1eKhGrj5A0tliaYXVJLGWKJFK09kZLEi9ST9DKAFxPYGC7fxsntMTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734845154; c=relaxed/simple;
	bh=TSswFb+oHUbLnsln8zmt2evRw7TdBCRYaM3LGHTbn/A=;
	h=To:Subject:From:Message-Id:Date; b=swDybD5xEdyVDTMmvl0KYuF7I1pquQpvALArj1H/d582hvxn3hMI33alrigGMIeosr9Re/IOBFmC9YI7C2MKiMqih19bYH1LTbl7hMFiwuwrthGfk8uh2rrPIhMY9Wbj287LD40KaMi2PNDothrqtjjRWViZoduvZ4goJ5xV+Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkCwcNl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkCwcNl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2483C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734845153;
	bh=TSswFb+oHUbLnsln8zmt2evRw7TdBCRYaM3LGHTbn/A=;
	h=To:Subject:From:Date:From;
	b=rkCwcNl+w5//gk1V4Wu2eLE8h+rDjdAnr71ha3iNJLOl0+tfZnztFsRjW7ajtp0Gj
	 /Suau2jCMS8gHJ2i9SlBKW+BJoeo1QgzS9/g5+GO2QozcP2eomfzPtBN1XFN04MdJZ
	 ieMOUMPkbQ7OZuy/u1mXNm6NfsxKeRG21gZ/guVH1C/qwH9QWsUBOtDiQNqTmvx67b
	 q72Hn+i6UMhZJ+0Y//J5od0fjkoYKpk9cJlsmhlfeB82Ad8qkJbEscF6OnJQtVk5Ct
	 ho3xHWVXKfT/6FE6uo0J6cODuLvKCd+CXxYelb8ooC+P4+yw/mov80U0h4ekVuatWC
	 VlskzBZxt7Kdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD50E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173484515360.13505.9842031444037066587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75ecdee4755ad14ba67265fd21046e43c928f6f6e1559685d6d68fb073db795
Date: Sun, 22 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734845153
