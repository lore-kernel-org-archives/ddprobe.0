Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACD146EF99
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792327834; cv=none; b=qRXFywjfrYmImy7c3lWBDcorW5T/vzOyi3PQqyckV8rfBk3m6YixhTFDk46VbRkP2k+y/SKYG2x49erqjppRkRp6Lz/uCPQsqATxieQ75TKVpzVkIpY6KKSpvtp88Xj3V4T+zJUheCD0mVvvoMTb+7C+Ah5Ru+QdrJDp1M7B49M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792327834; c=relaxed/simple;
	bh=gDcdw2PTqWjKZ+qbtdyzF5LisSQRmGUxAKSRgx6uplc=;
	h=To:Subject:From:Message-Id:Date; b=Oq8TDjm8khR1fyuk7PZttACh37JRYyl9/hflZopG0CATJgBLclsAh4VeUFViN7kiXcYNP73mKngbXi5JTEvQeruH0wtGSMxGujcm4DdY1QIeebKV3jZk6R7d3qz0eX3E6UIU8cvEyrfByAHIOCefqnP5s7GrS5ZCNqU0qsnDBQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpDDrsQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpDDrsQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D1EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792327833;
	bh=gDcdw2PTqWjKZ+qbtdyzF5LisSQRmGUxAKSRgx6uplc=;
	h=To:Subject:From:Date:From;
	b=IpDDrsQn6Fv7iLPNCPNZOGhkphSjbnzDr7/Qv8brAsjytVtPhY/XK9QHf1MA0KU3I
	 5BASX0qjcIKaSpe0JatGPI1R6UwVxyHWKlz4QXYMk+/J2MHhnSi/WCM7AAdISdqH2o
	 AQAJ6tu9kXXZbblkXQn53H9FMwBct/NCwZA+jNN7me2o5xCchfFHJlXcbNWg52x7rc
	 PC+PdSowZezB/nUhgB/7E4hq3zb34rp6EJo1UDQ3+dFvL8ZGq4Op9i9FdCP+cQO3P0
	 d3eA+LG3OdzpOBPtdBNYAdmxhmsfH9Kz8afj+wup0CQ5l1gsVOSxCLH8G9rrAFA4Ph
	 bbNZlefoWi8CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C6ACCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232783368.28861.6156073328309056685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0843036aa7a098fe51bded86f8f7a93af29eb4c481feb863dd18f9d60d7ae978
Date: Sun, 18 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792327833
