Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FDC1CD0C
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752455994; cv=none; b=JK3Y101kyfNjAvh+Q3sW14AC0UmlBWvBX4aFY681JK3tro0dN/vkXzYtY/uAY1Cc/tJwKx/Vz+g99NIpy4FwCJYKjYuEZgYX16M0qkFYpF7vKCvYFA3NucYhZu5UQTVClKG4d8Dd/OH8Yaz9iK7KZFdFyvclU1w2/nPXLYwz95A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752455994; c=relaxed/simple;
	bh=mgb+AWVXxIf2cDZX/iYdK4QK/Aoh6qSkpjpJ2WrKSvU=;
	h=To:Subject:From:Message-Id:Date; b=s4EewktZzvOUIETI78VTh3lzWmOz0ECyqtB0756QZGlTGH3aFJd5CvZ2O2wjA1STwoYDtTNuwuqtMJ4wWinjfADB1VD3gIP6itIw0vOWk38jijJDi7e2/dG052rRH75DvA7vhnlfGxIIKJSNSqZhbSvDmS8tRCggk8ZuoqUFvC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzfHQkh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzfHQkh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F3BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752455993;
	bh=mgb+AWVXxIf2cDZX/iYdK4QK/Aoh6qSkpjpJ2WrKSvU=;
	h=To:Subject:From:Date:From;
	b=EzfHQkh3y4LJmP3DaEsGzevv0ChxxKy4LTWk+kfh2oWmJvCnn/xBKQW4cCJpTONaH
	 xM4/PhlU+HLz9LqXZ/WFO/WCEdj4OEvyrvygM8opOgDzEbHSVok8ZrkjGJcxFSujHb
	 6FYe73hj1wwaXt3+MkoerjM6nCGOR+YktHZ6vnezB0b+j2Aj5M155taWw08p+l+4ys
	 qBWnVOxH1GJlXbY5gJCEoCDbrMq+4IVvB5AgkzZYrtooGKiEc3hK73APMqaMR9DvaP
	 EDUzZmQnBamA8dgwaZkgVrviI7d9LLkjX+b2KcvYj8eF/MFuSl3Wkx4lS0oZejpONK
	 kGBm1O1PR9iTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27CC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245599357.15749.12042660171031656640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268a92e34a8bd0139406581505ad1f6775f4b30967960376cacf75bf03cc0bb1
Date: Mon, 14 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752455993
