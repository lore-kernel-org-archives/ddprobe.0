Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED49175A9C
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785647434; cv=none; b=mMeXS+Sg9xTyy2IWIUOW1D7XPvK0jCLl/8noG+3ck9VDeIH3PLXP9GPlsqGd0spciUfwhQvD1pl9rOugO93KwIhToQho397jX/CoPKoU6IlMKmDYjXSi/jJ+wxERWv2h0o3Yq0WXVK36pUGSc4a0L0xhaEIkQWResfAfzVRl+tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785647434; c=relaxed/simple;
	bh=++mRXMZQBRhI9bGh2YEQp+x60LxYD6YrOUpqUGyoops=;
	h=To:Subject:From:Message-Id:Date; b=oa6Ua3L+rwZVpL3ilqhlaMQJNpcJikVC0VRy3TuQPAf0F4Jai28R05i4PZXPx/1U8lFyaSHHEbBsniIllw7zWwIbkIEYjWaUWU+2VeG+Ht34lUqFSnTahUfjq/4ocMnMhv+ldQxxChEmiXapSxI1V3zBGjzH6p4iC3LXo3qDx3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/enRrBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/enRrBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CBAC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785647433;
	bh=++mRXMZQBRhI9bGh2YEQp+x60LxYD6YrOUpqUGyoops=;
	h=To:Subject:From:Date:From;
	b=a/enRrBYuJEPBIl7Gxij1N1QCy5qE9QIuYa0obAa6midfxjzTeYGRt50wEH1bn625
	 cFpT0YYLl8CCGzId5hHi/m5dzfLAQ2lQTwPHLGiOQynskARAdxWwhdfp66bYcb8ELN
	 13Nrftd+pMhIuiripEzvh0m+xerYX6GUXT4iL9nkcrTd9fL0C7Y9tARlO7NDnWqP86
	 40wLqeamaYK3yoIS1MQf60HegRFxlLXgUpMeVOOvMQvlvflmigWXA6E3HqiEQMRC/i
	 VvleroVPeTgnr15g6HawBDc9x0tjpZJzsX+B5WlJwq1GdmvHXQWUkRKn7Ygn806dpw
	 qsf39EQPIbjHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A852CC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564743368.11475.14205206232084313641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39632dee0f5c3f0e710ff19dd0027b2d660f71927213487dbb49cd816fb8bf9
Date: Sun, 02 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785647433
