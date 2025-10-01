Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0C31519AC
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759290594; cv=none; b=Oc/BmS5glBoV6cjRNXPEhyWwOdxR552lUYMY1mWqV//SNfn3oIFCncKV8iYUGGiiCqNPX1k9K0U7DcMrUq9ANSS/7N3vW1OHVPBdKcz5eftHSSGaT/tRWiLwNWHVn8WUCacx72bI814W+2W8Yyfle/1HK6DNOAItJAWHzeZEmkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759290594; c=relaxed/simple;
	bh=9O+9FKvyxZl+NlnmCcyTE36lLxwOZ7IMRwdAZ02BzSE=;
	h=To:Subject:From:Message-Id:Date; b=qRdZB0JFBkdCofseGhpd6ZwRAE1NMXEOgDGMcw6z7oluEnuQogBK/vqAfiYa7CLSXnE9fevIawg3bybYV9oHLBGWbytHkrX0hkTZQTUr29QUoter/24PaoFiiOWRz1yeSmAXB3QUplp8wF/Ts0bIcfvjqihmi3YxyLOpgiep5pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GS5KK/gf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GS5KK/gf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48E9C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759290593;
	bh=9O+9FKvyxZl+NlnmCcyTE36lLxwOZ7IMRwdAZ02BzSE=;
	h=To:Subject:From:Date:From;
	b=GS5KK/gfz9wTcMx+wWu+qnkefySFdJDYf2//uBmY/nEYNW2C++QRYaxDyQolRgPn6
	 l61OaTZWhEAqVYf+VUL15+MJAKE8POeji4uue8fcXcOgY2Z2SCX0j9R/LAH2fhBvhb
	 VXaHVqgpIviG9ZIAeeNg4y5jTLBeiw5XngXe6NUVAh5r9MfZjUlXNl6A/vfzVXyBbv
	 pVLg9iPKC6IjSKEQrvUVb8Kwov32BO4/yWP7ePU1+/oacBEhinpA2gW6/pl2T9ZVin
	 7N64k9DQp7UphJNzMZMBWH82MQtv8ohTC0AgR3xsC7NCynwHtKd6RwEmWWRxFHVPXG
	 F1tLT0tu61Q4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9FCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929059358.30340.11348296267836832147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d9f6bc59a327be0652f73e62228ce8c2dfca2653652f0b13fc717c671b37cf
Date: Wed, 01 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759290593
