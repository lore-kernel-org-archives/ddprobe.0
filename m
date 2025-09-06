Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2425225784B
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757177994; cv=none; b=n9w//Z7Jt5Owv1xd6x8BI6OA+eOaoe6rRm7UU9M0Q87Qs8xF+yNXaRbWXhh1V9kd4vEgE9AZJNCygjYZdaJ4XhVYPHDuR0mTCxc7HBbB+fPOVpjHlsp3geLutc6FwROgPeSSU8nXyXzf7cubBc4X8SPKl9wE5YGLZ8JS8mSKU1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757177994; c=relaxed/simple;
	bh=iWZxhIdw+WEQ3sKWUFTgBqb5KPoeFFcGxay5oXBpt/c=;
	h=To:Subject:From:Message-Id:Date; b=aOrXvtn8FWGQtOvgrCw8WpmrD7v+eHS+zr3Ee91VO/QLL736oQRiLoXkLq2YzJb99WBXc3LuQ5C1RExuD71fiMmKypnWHI/oFNXY20yC1xtha/uOzmDzRy47C2WX4+lzMSaFugRDaCaevK2FGUzEpR8Pv7z3OizbNTR/C3JgOaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wrx94X+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wrx94X+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1391C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757177993;
	bh=iWZxhIdw+WEQ3sKWUFTgBqb5KPoeFFcGxay5oXBpt/c=;
	h=To:Subject:From:Date:From;
	b=Wrx94X+tEaFROvRDYD3RTOrPTbO3WL9uKMMXi1DJ6lgYPHB57DIUUjLx/fXXutHoL
	 uTuzav7Ejcv3lNwkEJ+oku3ikiwGSMlvkc6G/A0lQF8sfBEj8f8DZorcGoA8TX5Fm/
	 /tVu3e5GSnRCV+peOJtDbd1OXe2Y1uSM8LfuFxGTetiU6PRrop2pcFXsjx47H1scbQ
	 rS1oESWgJ3nTsKHxSFboAfLSiRztDKsfLe7g27ncBKw12RxPt/jr2uNKMvHE9NZ/b+
	 HHFwGZrE0qdBdMjbLgp5AN5SKztBh97acj51rJXk1dN/R5ZSRUteii/GDjPPp+ieU0
	 mdxDGttoVq9og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F174CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717799357.23839.17590422870157297078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab02b788f6343cd974154d3071dcb465ba586db71dd58ced7966aafe30107fdf
Date: Sat, 06 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757177993
