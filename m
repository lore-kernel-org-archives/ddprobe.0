Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B00721257E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774710894; cv=none; b=IkFcJC5ClOvU/wlj5A0gsuAse+RXL27QWKZF0rLcD61847dAYUYE/4c6y8GDE2hyocFGGedZ6NaJct1wArCljZbaHJPLgueoZkSni8FYQ4QlO5+56ysshaAc1eEbR34mE1l5k7qPLL+/dIQIlHimBcrN9rLvzh6wug1scXUcAn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774710894; c=relaxed/simple;
	bh=CIqGnQR9quNUsNGeVYnYbOtJmNM97BOv/Kk4biWT8dg=;
	h=To:Subject:From:Message-Id:Date; b=g3j336fVMWFQ+ACnsYSXD7kRjxP64oZjy40hSddJ6gatt0PqJw+3qSCqqke8ETzBssQHWr3l1CV6gfEQcTPUdoOyfVBxcYWXUJ55q1IfG6SRogssd0cTEip419yNFaCXOqayDnKebuLt5/9hGbtJPpb25ZY+brA2PLYiwrDh6l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AukYmP/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AukYmP/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8467C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774710893;
	bh=CIqGnQR9quNUsNGeVYnYbOtJmNM97BOv/Kk4biWT8dg=;
	h=To:Subject:From:Date:From;
	b=AukYmP/Jvmxjv31NJMX2F+fOVQQAgI0dp7OxPtfAmsziaLZZE+fk4+GX9aJ58uMN7
	 2J/VkfJfHb9acIGLZyhu846g3HJHTRh4scAHd6iPmXKsa5BjEuR99e2FXfMDnUPvjN
	 7hLA7AWS0Ucv9ferHVBmwop5iPMuGR3QxYBAMKLWyA7++/qfeV00NXbT5cwkG/DhMH
	 BoCc0E1DfY44Yi5BAIcnPtoT4ynPUwp5j9wOZi0CJncMKKhUGk7F288hirCEukI0TF
	 NLHsTQy53rqdzWjLoE4Fkpf6RXri4zkTUrF8hR35KSYwH0apaBXy9V0DXqfVJd1kwe
	 K0Oik/sy6UqsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9817510F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471089358.4323.6855858069163155283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbef4a8a8c844f7aa9cd75447a59b7542539c8124cc9fd50a3ffdff86c5804b2
Date: Sat, 28 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774710893
