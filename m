Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3919313BC02
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745176794; cv=none; b=DHcUC8UGu/81leuabDmM20LVuaNyqPgM39Grgl8wDlggJKl0dG/ocH8TOIuaGSRKCUjqvXQLlcLXwJ8Ebmge8YTz6UonP7UGv0LIw2Wv6WFpGTOGWImavyXraQ4mnl8PwILPHwXfVl32icm0RR9fpsbawN+49fLhbLe5QdoHIH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745176794; c=relaxed/simple;
	bh=ruaiZyGmbVQeDIyL+oH56iUwwGNWEmjIjKXbeeoDuk4=;
	h=To:Subject:From:Message-Id:Date; b=Kx7bCApDPoAh6vcLqpcQzYbfEa+ABfG/uQVEU9rZp35uW0NS0e+RGXU/uTxwtpEsNDwhrSCvB3IdYhTo79v8mkhK92q965uiywVaycJOSLdFs85p1tqQtnFxHZil1hU2ZN/sVpyQ5HXYEAvGIoqM5SOa4HXv2qCl/RUWXTNCF9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+BprzgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+BprzgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7DEC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745176793;
	bh=ruaiZyGmbVQeDIyL+oH56iUwwGNWEmjIjKXbeeoDuk4=;
	h=To:Subject:From:Date:From;
	b=b+BprzgJIQwWlvRErUc2JjY1F0K4iVlE292oMRbKKcboFUYCMFJ+o8E2k+4aXpNz5
	 GFcaZeXVBXN6erUp2WJFyzgXON3PSyc3vkeybtnJREn2UQXL6vhSVQRmzEvgW9LDRx
	 IehAeKBeDgEFT7fRnRvbiQd7dTW4cKJOR9qcGTM50HC3QOzxhA6Gm3MH4/znxC5yjR
	 MDDPT/LPzpnyQwYw5RyMUktgaDXMwNSYGaFJde5soVt6ASqvhEPDNEQ2b6/MN4El/d
	 1+ZM0J8aPZmNPPum8isGKBMib3qGBepFquVRijxn6oEGPuv7VTahFPEn3EO8iU32Ef
	 6EF8z63cKGC0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A16C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517679360.27446.16701098136739006177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92a1af358f8425e422f66450d905e18e4b3141f4a308871f17404df13311ee1
Date: Sun, 20 Apr 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745176793
