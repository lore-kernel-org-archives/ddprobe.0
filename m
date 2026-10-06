Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF4C1714AA
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791249634; cv=none; b=YkU/vyL8USWv8qq9CByGpnotTjkmtw+X9GVRfyNmVoGk1QDYEoms3KT4kyu0GN91qdhiIOikaF0pcF6iYnZhV6O6YBgjiSn1lem43yoAZOn5S1X7x096vJWZD0vyDOFBV1KZd+hNyYy7LaIJKpvt3aaUFukt50N7qzzQUcpJkSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791249634; c=relaxed/simple;
	bh=gpPm+WgHPevOnvx6+9rIDjXZYcwoEo8soNRLxPswMTo=;
	h=To:Subject:From:Message-Id:Date; b=B7pO40w/krJ41DVvLIcZXXNAYktlXZjAZdmdj14ORfQ6Zhp9vali3XvKB2dio03Iv6sjeNXkBD4zCE9Mz+x9Wh+jWhcSZpq7TD+u2ddLxixkDJGQ3hZxNJm+AcBDYfQOLYFXC/1IAOMBlueQleDMKi+ldg6prwIuHxkYCGneync=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaf324B2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaf324B2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C26C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791249633;
	bh=gpPm+WgHPevOnvx6+9rIDjXZYcwoEo8soNRLxPswMTo=;
	h=To:Subject:From:Date:From;
	b=qaf324B26VLiW9sccEUiG17bLGIPd8PTYIGjnSC6f9QHv+MXdM8P7FxqdQdZCE7G5
	 6fFWQ7BrBOWL5j6rVCHxkfITbAeJRZAgMyWwsEu8wR3LrUhT68NC3wdW9uaJBmCXga
	 SuFsZTWzH9fZO8DEueFkgYz9AdI3sv1ELEKFCcCDA0Uyil+shfM11ycFB3MdxsYthL
	 hxEpTAK73zmRDtctRmDDiN63pHauYgh6y75jc2GTO7IZMJMnIVfefnl3yQhS+R5XlP
	 KS67f3IX7Jj4zfpv6bkoJlhyCM+pBuoD/xhdC5G6GxjgAWrtVHIZuomWYQYZQpHjD8
	 FEL02fYiEbhEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE9FCA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124963369.11885.10901794972795658546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07976706bff7b2e5f5447e1c8ead5d988dd3f6e9d09c8ffe409f1993103a3bb1
Date: Tue, 06 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791249633
