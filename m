Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152DF31691E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757703594; cv=none; b=XvwUVYSZ0VY5dxY4AshhcdY3lWPt5NxLymW8Hq0RDj6ZGL1Nxg668LJ6b1QjWRB5yUqPitnY9PsLruZo6JsCxIIb/ex/igkHbHm0HMNp80R3vLh2edXYOoD/iEUMuYeZvC/cZvRzyWVgCQXquvaK5aShTY3+utXsQPzM+chiny8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757703594; c=relaxed/simple;
	bh=uXbrLblE6IpqyFDQGIZd/z3iaP0N2vWaANYPVaI6e1E=;
	h=To:Subject:From:Message-Id:Date; b=DUJhVRLHUuxtupRbeP69ZK++xp+End/iWZwddS1lZ0cx9+C0gL52ccPoZ2WMFGEeV36h3YMgiywpjv4oOzDUNM0//B3E6D9EN8UiaX9DwxYy4NVhLnjguJKJ9fYXIqF4GBgrRtjRXpsOnGCfPYElRw4R7KB6rLEkA/Gpv94d0i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvGjHseJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvGjHseJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A289AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757703593;
	bh=uXbrLblE6IpqyFDQGIZd/z3iaP0N2vWaANYPVaI6e1E=;
	h=To:Subject:From:Date:From;
	b=FvGjHseJFzeTXIouN/VntwVGIRhtuENsNn8oZcOKSmKOIUweAvyY8ysWYYRmNALWb
	 ZHQM9obY/Cr3F3SIwMDo1XJHIUuaDVoyZ1DpK+wBzm5WzfDyo4uNdP7rZxhRBnO7or
	 INPysVdFApVO3TwS/dERv8tOSQ4vrdImF4Ih9Xyc8VQu+6CJOl/QbzLVVxgy+Qp0Wx
	 4y4Iw5G7o4MdIIRZ1jcbXh+NBxKiyKDvXzPZlX9oRsNaPJ/4vRWKPNaUxDWIhcei52
	 MWtmM+WRJXfNnCz4Lcyp2b0x9aw3NFy3j6GtpdZCXMexlUzYU3XE1y0HftRHGz9iu0
	 kXqlvBEbx/ALw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C81CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770359357.10293.14133266897113692786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a011876acd4ac68cf69fb1cb89f3d9b129bb4a060eed7a0f21da2d22620b02c
Date: Fri, 12 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757703593
