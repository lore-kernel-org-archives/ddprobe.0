Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13506376
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726186554; cv=none; b=mGBnrBvv5ZID3nBUMNe3k6aGEgCvPPf8Q3XYPVLz9Xv5laPFSfFRTnJZVfAXIHdyNh8OUpQFyDx5dkpjEDeXGGvAELDTOWsfAQgwmYa6k66z832vmi7ik8e3f3RXaN38pC6h8X8KcW25MBMLRyL0XsgkFkz7v4mK/zSeMOLkySM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726186554; c=relaxed/simple;
	bh=yqMnYBC+cbSVNSpatqyfY+jwd+ifK+AfksDJOUqanfs=;
	h=To:Subject:From:Message-Id:Date; b=UgQm6zPxQOA0LIdQzXpBJ77tCjHhf849YIi6su0lQNU2YWI56q5WOoIYcXiGpAS+aH9t0gyVxJAWQTYi/1wHt1tSEwzrruHMLF8OgKZYZTenzTCNWlsbduTqx4Q5ScqmwqD9Gsy2Af8QADMuZ6/fSRHujz5rtx4ZIuHFHTxMELs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxIpHrKp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxIpHrKp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BCBC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726186553;
	bh=yqMnYBC+cbSVNSpatqyfY+jwd+ifK+AfksDJOUqanfs=;
	h=To:Subject:From:Date:From;
	b=VxIpHrKp6JaNwFi7gR7OVR/gUgU4jile1tFH2KnEspr6RhwID5imhF6zFuZ7XHwdX
	 jmdkGOYp+4bXwPw2vrXQ0FaPeFy4IXxJWC9/v+wLRYMgMLrvRYfAdPfVfh9KtMr0mb
	 QT6HZ+2sySLVKgoCXW5eqBw5+DC0ExBbNyYeN1s7ux6TqzDoslOUFXg4iI+37emAfN
	 uC3aRTGjH3RpuHgpMblCJqnMl73B8+AZRvtugceQtSPaclg7u+zjAwexhD4NWAV2Ih
	 At3pKNZrHmcY9Wg9JObHiz604gvh5olWVk3BzeJTH+EqBVq7z10Vn4heBJ/dNYm0IA
	 rlQm4E4kgGWag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93680EEE270
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172618655358.5815.9462758181033646853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b01e1d6ae3cb45ba3a9f66d408850a2656a0dd132d2596ffdc4efdc9534390f
Date: Fri, 13 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726186553
