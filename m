Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5541533C9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717946843; cv=none; b=KNZKXqZS8WX8ajEeFuqr3V8uyTtQcDsAozJcHa0+DjxdYZ9MGVJgjceaXel90JwQmvhbg5R0jw1P7lLpQeaOdscW/qaodUQZIsU/Q9utV27WNsGdjBhTaZaflipSRLi3jZl81aBbhTLQHhjJ1VQAJcyqofVxVj/ndYRFXt55F7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717946843; c=relaxed/simple;
	bh=O8XewDkaGWjYF1otbapdiMSX3Mxe4Dd497/OLtJVKRY=;
	h=To:Subject:From:Message-Id:Date; b=WBHJ3/Lv+LkN25kO35PmSjEUTVI10K5yvyHLBMZA7L0BqST4m+CncNLCMkldWTtGm2ia+9PwLmyemUXl0pZSKL1FqaUGUcJbazld+VD7mmm3IkPz8DdXpwiTu0lh2aXEES7aW5AtDnul3m5rKWQuYbC+Fk3QzKThFnK1t1xGRLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgUMvm86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgUMvm86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE20C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717946842;
	bh=O8XewDkaGWjYF1otbapdiMSX3Mxe4Dd497/OLtJVKRY=;
	h=To:Subject:From:Date:From;
	b=VgUMvm86wWqUyOrB3WO4q5eS2+9baYkairnhXPwaZKh4kjj2SBYkoDS+No3xXHCav
	 CFS6Yj+rOhqKAQf/aqTUxIcEKk/ot7Ulr4b9dvdh7fUs9JDZRrErDEyVC0G9IxCgV6
	 brjGCquJ3SJGSIbn/wMtIQtctLTmHSB65d2ppPgttlM5IugDC/7V8DZ1vAUtbIfXy9
	 DLdx3JTtfXXKuZAcEMMFKQbQfmtug6sDpX0y6n2DokXsxp8cLSOsHbs5g4P75zpTLf
	 KgHfdZH0Q7eagFCjecaV1oGGxh98her9S0FpAf2rrKeGwB45THFOJECKd163jIoMSh
	 3lhO+DanNnGRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA697C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 15:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171794684279.19246.1724122906039002421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c958004685efbd9da8a2474451923debfd742d0827fa548cfc6f4eaafc581d6e
Date: Sun, 09 Jun 2024 15:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717946842
