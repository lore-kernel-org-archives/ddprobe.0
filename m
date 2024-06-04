Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE7E13E027
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717479323; cv=none; b=kzV8BbXV0TvsesffdKyCSka33mhDFhmghaBrHceqQfltW5BlZlE3+I66Q7wenACIb2Ul1yDOCKn3G8+c9RaeZCmObIEwcGsln39X7K+F//ZI43a7Z1CyS0Co69BIrfnqwJV8c9JvV6lVvGl44gtlGrM8UMDoA2u++vfKhBfDI7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717479323; c=relaxed/simple;
	bh=emIQkIhD2H5L3c/ZbY1jN7kXCs2Po4tMqXm+PG8mKAY=;
	h=To:Subject:From:Message-Id:Date; b=ZkIH0zX7EyUpQJaCGgloigAuZCNLIsWWmXAiLfxEH5G6BznyZDqZf/iwh21GQyRNC4KmHYfPECSF/YjQhR+ZjaUJ3PiZ2HohDIMjh5RqY3ZPtpswyiJZ0yJP5T3amn4gBrHZOwfUhgnM7OBxPvdcRrA/3ERpis2Y5HZUItVNncc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faE5vVjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faE5vVjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4282C4AF08
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717479322;
	bh=emIQkIhD2H5L3c/ZbY1jN7kXCs2Po4tMqXm+PG8mKAY=;
	h=To:Subject:From:Date:From;
	b=faE5vVjwGzWnsS8Nn6uhZQni7tJWwyX/0GqIpGMZ0xPH9JDNAj82zXQ1bIeEqXfqH
	 +tuf2jPydYxzwvgNMcvN22hTKJ8Kz8gumHoJkaQ2jR0j/ZL05MuCNNxxdo+AQNZsmp
	 HsNo4NAhIV5DUMoRf+sXziuvyfTIf/TI6A1lFrn2kdh78jM0DBIl7U5pAMp6m1gLgN
	 trQFd30xSRb/SGS028vYzMiB4il9ELS1cwo+rDmCJ/9jHnhS2EZipH88z7biXbxzhD
	 iLQ7gvowSpJjgwq6A6uO2q5mhD7IO4HCpXIcqd0+UpeCW76UvapAWiF6JvWHGYEzFA
	 ZMYwSb66aVcHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5D7C25B74
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171747932275.7597.7211804902952386756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3866f50c21ec117f5d5645a8910d64031c7a6b435c49203f0e81915b294805e4
Date: Tue, 04 Jun 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717479322
