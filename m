Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC14175A5
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772678094; cv=none; b=bqfBdqHhSMLqSHPR11kRQimO4AqPJpbrh9YyVtjp1D54h/kLcJb2A6TEmXxk5R3pZJJ68NG57Mxn9nINgHJC6dbQRGY0uV6CBwAjhjAptJNKkheVnnEjk1s7wPIkLCfOjQsiIqtnlOQqyo8zr0S5z2iB0D6cprY3TEinUa6Dy0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772678094; c=relaxed/simple;
	bh=8hyYlgCvsRMAg772vLTR6+NJ6zEJeveoOpBRA1CoRLk=;
	h=To:Subject:From:Message-Id:Date; b=WK+1GEV9Jak7dTWnI73IzKjOVD2d9Vsh9iUkfe0io9K4gSnVQsHrX2Z2uG0LzUmkW1bKZp+3GZuVp6Y+UgauqIpnJPLKx3RSAFRjwnvDm9pdOIe7AVaxFvzCQJZeop8Wo4tP6z/MGezthAvbF5VvSyWP9ZLG1vSH0KcSRWULG/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0rZ29Zt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0rZ29Zt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B20AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772678093;
	bh=8hyYlgCvsRMAg772vLTR6+NJ6zEJeveoOpBRA1CoRLk=;
	h=To:Subject:From:Date:From;
	b=r0rZ29ZtzkPxg+hR1MfMUq+iQXqVrFR5IWYCmEMKaBmTJ6favXwpd6bwAObQ+/pLe
	 Nt1qy+OskL3QrgNT+ITk2v1hBwRb735irrArRlyk/ro22YA93iHJuywtz2lEToGA5Y
	 dUbE25fSD5m4+KzUO1Pgw6jBPnrd3RNAHEcilCdsku8NbuJ7gJeLN0t3vYTJjcW1uH
	 E3NSBMKEFxVu3gyl/keVtNp0YTE7C1+ULDcvyu6XLYh+AVruwTrR6EMKTa1gCc7Ry8
	 eJO/731JHMSo0kyUemN2Yf9e4zy/OfNzzqaAtL8wws4L2oQTgIXCt8OLMs14nZmABF
	 wIWYr4PzeQscA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC9EFCE53
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267809358.6965.12032525453958953108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28e2939503b44bf8ddb79895a7060b2e3fa461cd97e8b206f1193122686b768
Date: Thu, 05 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772678093
