Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DCDE32B13C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784323714; cv=none; b=L9G7k1PWeIlii+FGfnfN4sD1vfRwPy9TDFUcTOcCPg43TU9E9ZCJQUgeJD9NgwIBu0IunvsOweFlrYc5KUiFUAT2SQP51O7F8bV0PqyLS6w6wL04vWgQt55UBBq616rOhTwcAquW0+idilT6iHUvTXeGPC5s34zZ2MZeIrJWQNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784323714; c=relaxed/simple;
	bh=wUaqMGe3HFaoMMZNXHNdLObVt7pF3rnlC6IxAaNL86U=;
	h=To:Subject:From:Message-Id:Date; b=cv2r7sso0MZ5aQpBoH8XCPZiDTPB/OE0uJq9x/3a9P4rxZNldpmEZYYvohgfYe3D2mbKg6XqUMu7azWbEqehqMqJ0v4+aTbQFZqgwNphqTLg0Y75u0T4Plb/yWrd3VgZMKyjHZSYFr9EU3jMIRp4qr6KN2dVp57cklaqW3ivU+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjHVX6b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjHVX6b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01CFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784323713;
	bh=wUaqMGe3HFaoMMZNXHNdLObVt7pF3rnlC6IxAaNL86U=;
	h=To:Subject:From:Date:From;
	b=jjHVX6b+qjYX73/0ssIehIJKyH7hCooIGW/RWq7+yPSCpZ62ersblRcNJWJcqnYii
	 FaNCAeaFAbkPRLkOrOA6R4JC2R5kxmZaL/WpGhkiYcMns9jvwBFrJOOn4HozXzQcce
	 YEQnXJc4mQsq8OB/E61I5Xge9nbnwrNPBiz9gCsjxCY8yQVqFtstYoD19sHFDeL3pl
	 dLtH+eYo+V9myDmnnd9Q8pRBRqPpRdPfhKXRZ6NPZbVmiprQuIQweCAJ+aWOgSM9Nk
	 xgDTuLjmJUvvfoNZyyYjQ0JwI/inpAZiFANFtvg2SlV5G5r0FGqTA21VfsJrZ+BAsP
	 UVXzCuIgC0i6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9FFC4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 21:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432371373.27631.10810811889752038211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f0b39ae234f8b5456e07c97e03438eff3fb1f57dbc3d6a91b38bae05e51203
Date: Fri, 17 Jul 2026 21:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784323713
