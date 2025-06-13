Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1812949F3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749809994; cv=none; b=JCSO8Xh7UC4SC7z5FasnvRJzmmqVaA5MdSBBXWq56H6ALGA5CDm2SUQSlNeyKWNpCcYC4AqRTlhq/8ObUSArTeHpv+imLdAkmLYrxPVW7udymrp1AXnmFCyHjmE5Mbr8fiLJ97yj9i3hNZypEzyXWeNVU7Bh4J4oryDXibDqrbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749809994; c=relaxed/simple;
	bh=CFwdqx4hcjK3IktPM6fij5Uopixy3J3fHPtzXt7da4o=;
	h=To:Subject:From:Message-Id:Date; b=hIIhU9IE11lceRCuDTE0gvqpmJniwEsDJPXO/X6Ca591iz2a17/Mc1jSWTiwT54xYTWCJu/46MQSs5ueh7b1TmfW/QHOfpKLz9dOZW8nxor/oPI0KzZiIR3+Z8iS3qi4N4G8YZRfrLKFki663yO0V3SSR+frhhhg+toBanTdpSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZXcATrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZXcATrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FC2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749809993;
	bh=CFwdqx4hcjK3IktPM6fij5Uopixy3J3fHPtzXt7da4o=;
	h=To:Subject:From:Date:From;
	b=mZXcATrsu5qwqNWW10xPyYtgIKdQqX/XnzazeEVGFp+rB6khcn8Zf4cpMFdp1XRrx
	 C44kY1/S0LVsXkPjRnJxoPBTIgx0ru7oUe3VCypUqimmgw48Y0sVqnagz13XOQHjFi
	 8QlLxOsTmyQcM2PnwZcztKeS+4EgpWnXlQJ/WVT9/qOa1UUhXd2DjF4w6kzG4L3cYl
	 l8w6mOmaH3sOQIMb/8v4NyeYjAG/nCEdTwFMxBNwcqMNRULc857sBUAPQdLkZq6+s4
	 Fy/eO1KTfzxyyUW3932RW5ScwHxGRC+6ENqO1nZgOMMx3NVvCwYsrHlVDEDyaYtA+K
	 kVu6IilKunplQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D42C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980999358.27415.13957546190265232111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de03f76045560e884ca5acd30a0e6d45577b9c07887d55d03ba5679558417b45
Date: Fri, 13 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749809993
