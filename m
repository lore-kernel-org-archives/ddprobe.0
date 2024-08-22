Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE6117BB26
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724323554; cv=none; b=Yyvl7fTGVnv+qj3mYQJFiwDcOI8BFj3S0Xj5IbWPDEyCvDorIBiR5pUsLzrLTFC+Azw4BSCv4TbJePQ8DAT+81RklGxzMp1j7miP367pIKjMWgftUt2rgw9WnR+A4ZIWeoV0e6WjsT0z3bFyYuM8m+n9GSD5UIQNV4wLDUY+6T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724323554; c=relaxed/simple;
	bh=sglin9PGbHf3+l5V7chdLKiVl4PI+yXCTl6xq4v9wLE=;
	h=To:Subject:From:Message-Id:Date; b=KDQBieKOiwLmZzVWV0ajo5BfYgcpNrFANH01+eQUM5kI0+aD00WSiR4fE+GlCpYcqbhMkwjsXf5hOkAldR0fF3kHuVkl3SfyTzxxl9TcRRqOSuyOnGYadwet/SanjRZcQg2ChO3E7OurI8DIg+/M1kZmqaQvwn5u7uBzBXbuuJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GggQQwzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GggQQwzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FB2C4AF0E
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724323553;
	bh=sglin9PGbHf3+l5V7chdLKiVl4PI+yXCTl6xq4v9wLE=;
	h=To:Subject:From:Date:From;
	b=GggQQwzR/CUVCiSD9K2csdJEvm12WKc6NScXS1THv4cypluxTsehmAgZ97ERfOPRs
	 UWGmdVW4d11mmWPCvGjTDvRAOj9WE93xGMIuH2YhKClOkMhf5ccSjAXM4n9Omafs3d
	 HtzDn1jNnbmwjGxpWVEpPIG5F2HqnHBA15pxwegsnW5K5xrIyKCMsYT4thE3afY/F8
	 TVu81qcQGrQZWwoXGXhrx0oZyvegqrKn01uRRroih4ahqN0aNndaJ+e00g0yAVYcSd
	 bO07TBHMfUXQ0bAUSAYmn687+LW/s1oGhT4gtzj9VuJTaExTQeQa9w0jytXT31r+lw
	 ZE1Epo6Yl8giw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947DEC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172432355359.6489.7378952458766687974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273107f45d48b7028262c48349c750d799a6af5a7a3657f01064caa1ec06f859
Date: Thu, 22 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724323553
