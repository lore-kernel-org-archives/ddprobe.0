Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2A21ADFFB
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742990994; cv=none; b=BVo3hF+5tiCPTL7Q1w7mBc/lPqpkxY8vj+WzfRyejLFs1r1AVkvTKBb3jYg9EdYg3MsvYehKAOKPaa5ZxpIOTGpxVnkPueAopBZ9cuvxoFLoYuDSmW38uYRaNO4/QHoYmKr2xAb1HIoH1sofypylGjtjdT/c6q3Xb09xdmmJpl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742990994; c=relaxed/simple;
	bh=mwJB3dfzY7IiQ3QrVDZQ28xY/VD4NobGQQHZtd7NriI=;
	h=To:Subject:From:Message-Id:Date; b=lcErrM30VcQnmBzieKxuTkoV2/ejQG08KfLw3s/d1toTlyIEBXu/Q32YISeXc1jffzEvafKp1mJTfhNSvZB9tefj/maXXVltbVwAGaIX+y0c2m3ZRjVlpsYrThUndmBrnMihTY67GE4tYnUKUR5Z1TEdNZOyyeJiBMfSd3RGwrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9rcsdIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9rcsdIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC08DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742990993;
	bh=mwJB3dfzY7IiQ3QrVDZQ28xY/VD4NobGQQHZtd7NriI=;
	h=To:Subject:From:Date:From;
	b=C9rcsdINyYRx3Is9B2ZJo0AmLwJ1FWmuDbU0xcj4tZ3xWd9ITaOR8S+t4pC+lEw5B
	 po4ieSJaoK72kgdvF9jHa7eO3v+sa2naANmID2h47lAWmFZN2NBm0puPyKuxL9lQCc
	 80wSClc70OB146qV35zcXQ/YqpDOdN3YlSMa20i0bktxzaQSH7hNQvX+9IygvaDbZg
	 eNdyH9ozMTZLYXLrf0bS8Peqh17xsNajEIrOzcSvko81T9ofXcyRlwZnQbzo6JkBVE
	 QiYgLU/6vuNpXH3cXk5WivFn+KOQjkPPdsTYsugBnQwAaecMt5nR4vR55xl7stTHpa
	 1vbIdIvIQ6Xrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EF8C3600B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299099368.26243.9691132041270505166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a245d26bdc4ad6b36df7df63530baa18ec1956a7c577957f4665bb3fdae3f8
Date: Wed, 26 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742990993
