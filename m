Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4572512B71
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723265154; cv=none; b=ofqfgLpjeSmc4bQrSv6vZHLpahE45A5g3pf2uaz9A4qH3iDmod/UIJ6WzF3zI9SJOuEqmYQF6nm89euhBLiizoW8MgocpOcM5tBSRGpWGCSqSEVJhTLQdA0JkpWoim21Go0ejgCwg7sUUshERjPKubDqo6XR3Wt1NcZSSDvgwtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723265154; c=relaxed/simple;
	bh=pzq80Oa3EptUAeOfhSoXV6mioXJjlO0fVuIZO+mBMTI=;
	h=To:Subject:From:Message-Id:Date; b=EsgAc+OjKo7z1GAFfivwX5+lvxaI6bzDvpZqelbzchVjlyvS04EZ8LRM+WCTnK8aLEvnshFzpL/f2VBguSqlFGVVj/LnHegNc3I9++Dvz8aFehP+iQwTW40967yFCN2DikgLLmR99DcjazKvV42UnfmRMnIxtPRhiirJ6xxdW1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6/KUl68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6/KUl68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B67C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723265153;
	bh=pzq80Oa3EptUAeOfhSoXV6mioXJjlO0fVuIZO+mBMTI=;
	h=To:Subject:From:Date:From;
	b=C6/KUl68Fy+ZJWb9mzqKo0o3H7AVKN92CqsCKimSWaGOPqFLLKFOMt4QGnZJBIucL
	 +mty8MwM2d2KAYoZ3rv9LTEecumGt5mljHq+tMsqb3MK3k/f92rSDxDw6VowlvlC+h
	 TD9HetQiGLxFKYFhTTD7p/SammNsETcO4LpMLt3f5dKeM0NhG7b7ybUxhZaZTDjB3k
	 S0R9GuZE5M9xgS6wmjcyJEdqFWKSdres+PopfORfg4utVZxv3X6HlwJhbuaXZYXCx5
	 62wQlBUWrtG3XKbW2Jp0qoSN3HLpRTfTb7gIEbdnTT/XK8KNEUGRuYUMfMkNwiObHq
	 hNa0w+MY1ykmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F759C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172326515363.13376.7211958884610195372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9658885caf296d28b4553f9cf1b43fbefca7d50a17d01be66f01405f3bcb27d6
Date: Sat, 10 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723265153
