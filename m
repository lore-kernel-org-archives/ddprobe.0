Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2028129BDB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763808714; cv=none; b=dNERTYK/E7gSWNds5ucfZAGmk01dtTgXbTlT00v4ZNhHY3R2UpOUqHxCou/8tz82goO8XLkIcXHLonQ8oMCZKH9+71dbN72ZyUkicuocASOeStc7oEKmCLltkojBEi7J1+RUVBvQYwyT6AlOBykaeWWpNdLJxqhmKTsCZoFJJ8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763808714; c=relaxed/simple;
	bh=9z0fjOsJDAX7G43rlbPvGvKf69edLCyeFyOkUDCsKps=;
	h=To:Subject:From:Message-Id:Date; b=dwMixnr9RpV3XZhc+5U3pIq/gTDQHZ2MBr1P0kJ0HBSld9o+WUXAT7Qjruo+3XNT+dRagCKCJ+0ZB8p2M1RFT9dTDb9X9eijPKbRfzzJJ7TkDbYA7xcAjq/TEIgb2EaRUQCpCXe/nv6zoiOGl18hJM0rY6BZx97LkyN77aLwbnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXXXi94z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXXXi94z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C4FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763808713;
	bh=9z0fjOsJDAX7G43rlbPvGvKf69edLCyeFyOkUDCsKps=;
	h=To:Subject:From:Date:From;
	b=qXXXi94zXLTu9af7zWZs4dfkVK0ZHkf4pjeBM/BYhCoMr95Js6UarUIjFFnMPdysH
	 cx2olBHC7YKGBRHb54YlzzkJ7rONsfLkmi6kNLyH347m3R8ryD6tBMQvRRj07xvZdb
	 o/xPmBT7XUa2YkKJlI7O+FD8UqfybGXWgwF5Ugpq2FPr0+tHQYi+m4Bs5e5doHhSKz
	 ATYDI6EXweFssOjF0QDF0EC6/oIdpYSnA9wtriQ2ll5hDM6o0Qe4AbFqdLl/pfSMjf
	 7ApaXIRr1DyAsuf1o0UPGJ5FrYImEiG7datofAaUIxuKQ/SovVgclkfrN1SZZlOmVX
	 z5Cvl3rZxN1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930CACFC526
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380871359.3946.17612639637674288037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9553cb55c7530de4ed863e4df114ed9373dc13b78222f547c383f4fda0fc125f
Date: Sat, 22 Nov 2025 10:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763808713
