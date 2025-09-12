Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5972BD5A2
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757707794; cv=none; b=hrlp8rItFkInPtZuOvzjJlP/afZEPmRomOwxeyV6/KPwfNdH0qHXnz7lSga8HWhwfgTftMr2z/X4mBomOjn7hvORiK4Q9/5LKnPu5knhWQjA17Xq19lmA5e8Df0CUTvzDTJa6wGzwYueQ1oJeV104nkQvdxyxxfZywq+oYd+2jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757707794; c=relaxed/simple;
	bh=iA0DsFJsiwdZ2jHW67GbgPgO2640elqHToxE1Mwcm4U=;
	h=To:Subject:From:Message-Id:Date; b=JPo0e8Azof7T/IkVzUIGH+CEnMuPLZ4RpXC1fcb7IMldNqUIjaeaEEOWTgcbcL505XqPl73cFvrbsx7C3xp8Z9u0g1RNOSFNw0QhrBSW/rV23YOdofaYgna1jm4cXT6BbXrKwOVDeqQ0igWIl7FQbwH647R/lXyWffbEQMceArY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JywYZ305; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JywYZ305"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757707793;
	bh=iA0DsFJsiwdZ2jHW67GbgPgO2640elqHToxE1Mwcm4U=;
	h=To:Subject:From:Date:From;
	b=JywYZ305jfwSRkCRueEVHalTIkbx/013db00wuY4MKCJzuROsZQzgWiim6NE6RvG0
	 6uqEuTHHMwrTdHgE4c3emMbQKHIg4o04zK1NYWN99Mccsspjk2FrPq+vtBG35gMe3w
	 QeEocYgLWN27cZBkR6e1D3q2SUIobxjBIXVO1+P3D4S5gjayHr75O250Fh+0WoUP2l
	 O42ssw4uExcGNHQdzmaloZowi2IJ/T0d047ccyMxz4j2fVIXukB1EcAHG+YNvQYHnG
	 cvBBNjjE8+0Hlpzqo+m4oiMdAlWKSB3nkRz6GFwcHYiF4AFabWCW8n7ZAvrq1vOBUb
	 Q/oZFWwwIbpPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1FCAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770779358.8795.2246267370880131629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36c3993d726887ac2715d11f7dbf30996b91069a2c7ea88dfabbca49219ee4af
Date: Fri, 12 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757707793
