Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EC139B498
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773110093; cv=none; b=DU3PHqNgYS6Ts4HVrkz995d9zOxAb1hhqWNzQrsh03YQX32TMs5f0egwlAzIcdyJ86kzTfIwfnq6ajoqUFwUvE8d2CAwAdP0lbMrtJd0tBExOQRUFR38thKtYcSDIxG6OLBTKWmFgsHdcclt4rVkoGzp5IuK79gJZTz42eOb3Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773110093; c=relaxed/simple;
	bh=9Fw1QniHH7BstYAPzLP2Q4+i5mrA5YNOmk3SmVYsKv8=;
	h=To:Subject:From:Message-Id:Date; b=KluOC7cKKJChatj3X+af1cYLOJEYgjDWyZiU3ud7s87tG92HqFt6pd7wMj9M1qboKkjqin1d7kSTwE+b9gR/rXZBpu8rQ7FmscHifJXu49BfOqROGRlOhX+1WTI3IEqsWgN4UrDf4zBs+ypLWaVOoKV6IrEkHXV37sTicoalZZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U2JHA80z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U2JHA80z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12A1C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773110093;
	bh=9Fw1QniHH7BstYAPzLP2Q4+i5mrA5YNOmk3SmVYsKv8=;
	h=To:Subject:From:Date:From;
	b=U2JHA80zvYH0017SmfwfpsrA7l9Sn1TVx3qviUto78etW/U8bA5w9FKMq2N25i4PN
	 ReYFVh850wWypf+xoN/qUkeDgckP8YowVrA2FseWzVqHyLhekOE/s/MAGpBgfzelAE
	 +pndKDhfBTybULdoajAugOkHkj648tNr5OU0jtghYj8VPCjHXI+d61Tw+Ngc+S18m5
	 RPV5ySZ8mfzhdqAoshPPjwjDYhWjY99eqPIrI32oNrT/HyEEHITEUt+KRz0IR2DVK5
	 xcKVHLA+0mefdmujzOe8afaEvsWZviiV4eiCzNsmIJVByquctmvZpq6e4PbZkUOTCP
	 KKs2KmIQuK1eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A01FCC9AE
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311009357.14828.5036168017343847717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3862daed5216968ecd21a09d43982aed318f62ae00a70d27c1f20e0dc8dcf08e
Date: Tue, 10 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773110093
