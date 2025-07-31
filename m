Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5C82C158D
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753964994; cv=none; b=rVhBEViutFUx9EAtXe+JAUR+KnRadBeiHBXeNMnMuFDBPBCYYMB8rF93snR1lvQqk+dfwasXzRB/2gLx0y2VSqR+GNOhKoJNKWxwFwwq8g0+EBA6K6jKvJGd1O8il8pRBL7Q8S9p++IKyMiZmNUzIyK/8MBXYCmsYDSY/SrrlQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753964994; c=relaxed/simple;
	bh=pACyURBc9T6kzAlQHHMaC5qOH1IpJDFpY9e4NXPlmyE=;
	h=To:Subject:From:Message-Id:Date; b=c6BOKci+d8WwtNlLWlxa7Ih4YXUOd8zv5LVDJgHrk4PqLJ47RmVk6gTcbA09eqpS95nGD21fscRyQ8QOjIBYKEtZaryiOLVFkV+mZg+JfjHDJEMwI7V3Q2iGtsELiEv4vL7QKizhivMqrekHxhmfKgaZE0yVlWfPs2L8uIHyUCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEZMesMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEZMesMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECF0C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753964993;
	bh=pACyURBc9T6kzAlQHHMaC5qOH1IpJDFpY9e4NXPlmyE=;
	h=To:Subject:From:Date:From;
	b=pEZMesMmC7CSJe5Kd2r1549QNitY+0SrVnxJMeK85Kx9nqlrVZ59tRo6bbdqYYaq8
	 sThgcN225U+gDA1AflchOyPR11nnWg7sD7dzqnZ+GHRW4VtBFcs+xvD4+Blf/ahuD7
	 e/d1akrXL1G8bEjLnVG2abU8wovB+gn5VMFPywclGPyn6gk+YDk0A9fWfu1KtkvewJ
	 qmd3HdBCRwOVP6O1PkjGmLpCbJlODH3m+E9S8hRQmDS/ULLPo0++q/+qM5CVqnT+TA
	 3lEBAbDK1JcicAYdrGRM6R/GyqLW9rjrg2H2hNX/2WR1ZihQrg7nUEaIR3G+HHBfga
	 uOObcJqmR4E+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB4DC83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396499357.26086.1863892883594274593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d7eeba480c7c2587de4543a8940fbe09de86dc1a74a3d81aa1d4747891144a
Date: Thu, 31 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753964993
