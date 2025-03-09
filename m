Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4280714D2BB
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741529934; cv=none; b=h9W9db1Jsg02MOsL8AYr2jf3JlJaR5t+0ZvTbta8xfnx/s4h/Bk0tUnhjhmD37DW7JE70PhMSBCxbPDxD8GTwiIiU2lbhKKeTyuIMJVJTt25qDojkygBTqVY5k2fde+20Q6VW6VJeMB4xS2t1dbHdlMYIYH1oLzxlvwDsv2QZ5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741529934; c=relaxed/simple;
	bh=OtMhM1s/7rYm34idTH3ZYa/8kmOC4aSeKuaHCL6FFyA=;
	h=To:Subject:From:Message-Id:Date; b=OB7X1ZHldYgRHq7gmJ8Whb5kJZ7GCYAjleyhyA5UgDh8fC0i8Ey2A7PNJ9G4RJJRDDu1XZGlusnKksPX0svBsfnUCXTcQovIfhwLPgPKlKqTHOgnd63oNOYVEkYqSvMtmha6wnGK5Ebhl3mUDBlUtvymVz+XYL0bgiePGzQ0ews=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzqHVHOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzqHVHOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B51C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741529933;
	bh=OtMhM1s/7rYm34idTH3ZYa/8kmOC4aSeKuaHCL6FFyA=;
	h=To:Subject:From:Date:From;
	b=WzqHVHOPtzS1DYX4XzpDthgaGKota+qL/UyklF3YgfpPFTO0/4U3W0CKUmnyqk4qI
	 xIadkTBQnWg8+9L4vPxI/5snULd9YCx8IJ+DdZX1MBxouZYkQx2/A7YNMVKpy/ohPj
	 c0PBjXYwV4E3KjXry5cy7tlJAS+os6GjjeqOd42uNqFyjnjvVchIO7iPSCXiU1/hRy
	 o3ZddalsQYhWNYx6LbKktde9MptqRZ2mSwaNwn8QBAnJOhPrD6xbGplvamEiSC2QSF
	 jfwdz1qSXid84htRU5fLjOqSjeBYUblTgsGraUXYRW9RcZXR/R/hJO66IbtfVTTg9p
	 5FKxTPL8c2aKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2362C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152993360.20264.15519748362699233528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9326de321a8980c9a3d8e1d3f3a81d5ea6a29fb5af27715c9fe5893d580d98de
Date: Sun, 09 Mar 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741529933
