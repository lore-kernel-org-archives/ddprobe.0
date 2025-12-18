Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7722329E48
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766045633; cv=none; b=UlLO7cjZnefFI5oKe5w0qZ/QaP/6/CBTAj53fPURw4X33RZasg/+Uz4rRXbe3SqVTAmNtdhP9opLqf8tcyqnnxmJr4LU/ccqA0V7jep5NOmgSD2Hoirx3roCJ5UEinDx+6Gx/2AEQ11OfY0BskGCRyWvLnoDvMVQyXVLRJFpheI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766045633; c=relaxed/simple;
	bh=QmtLLXztSMAdxiM8C1xjfQbNIePN2G5tyzaut3t2SXs=;
	h=To:Subject:From:Message-Id:Date; b=dUGQ5ficqyvsg/bHNHa5rFRDYGc8xRLsjRY4QwFXDpKDaw4sKyMddBZsp76L86tGiueEQXYLHRMmppzn2gQayJUtAA42Br3RKrTkk7D1cot5f3/k0Iijjivy5by26XvKsIY3eT61NeaHYEg9ZCKSkO6b0HdI5D5TxTs8EDfucgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRQTQrbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRQTQrbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C89C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766045633;
	bh=QmtLLXztSMAdxiM8C1xjfQbNIePN2G5tyzaut3t2SXs=;
	h=To:Subject:From:Date:From;
	b=KRQTQrbTs2P39S95tBxAX0sQqCaExU/7v5EZD3xHYuwW2D2iIfGHzIe/vrGSYcm06
	 WRf+Mlealp8xr7JsdemLdIyl9llOa7lw2u+NsYJdDqBgdR56ADko9Xed3GKRE99fwG
	 RpxxUNqYexhiKH/NqqbtTcBsPMTM6nk2inpgqosVg+1TnBnk/OI9lnUGLIUJZlV7/g
	 2xcf8UpnV4tdylTv6R2ok25YQAgtr892M6ZCK0EF9kvCy5JXJ1/7XOi/k0jHOM8oWy
	 UbbndZzD8g3E3bWJRm7Q1svUHhF6gYXzHO+DRkHJSd7OHzEWMcC1INf9fyJ8oJuw6x
	 d6byMdWkTrrXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97753D68BEB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604563360.17331.2811430467151279551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59de7835e6df0e9898b214c7dc0e7238750171eadf02b595918d7b4fc22c1373
Date: Thu, 18 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766045633
