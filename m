Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1255523AB
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727487354; cv=none; b=q4E+giwAtdGEgxE2/yjTSey0mzyg0csyLVBwHUa+7eQAhe2+LemQ2sSSUrTY4kyuu7VzGWLtf+bf3IV+QzFRewAvfR5iAtWk+oAKJO1qccj5Ce8GGdWeU6Qwpq7t1XRwVU4ZA/+byiNHXnJ3PDJlHka0TI+/nADZAHa8Zqo6+yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727487354; c=relaxed/simple;
	bh=grp00cQY2APmeh9Fa8yDxvSSijNQ1JpFpmvCXPwlGiA=;
	h=To:Subject:From:Message-Id:Date; b=YsvbDPNd57ZRHBff3Ufjmdr5ZyqfSvZ8G1mJZbY+V5ZgbXC9h5UmSiMMB6W+faZwMJ+sfAX3SgY33vVGh+t5OhgKQNPe+0cYPQ0WHgUc1XJ9VIROfEWZ+JZtWJoeQBNy6jI6Yg85o7DPviy92FaZvMDNzykF6aNz0HqLBH3Htqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOp9r/9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOp9r/9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A266EC4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727487353;
	bh=grp00cQY2APmeh9Fa8yDxvSSijNQ1JpFpmvCXPwlGiA=;
	h=To:Subject:From:Date:From;
	b=AOp9r/9mca/ztAwxKBrHewhMBfiObPb0a4y+JUKaDm7UgM4F/qjwew+4YbtJSL2Y0
	 d8BAVrg1D8+lHX8y45HJ9cHvzKhR+PtR6Bzr/OSNiIwOCJNKf1NS71MzCKvcAN06q8
	 EbA8H8ekOxzl10VBCKPjNjNjoellJiKRveHHACch6aFL53xtjdgnMeVgNTgnnzMUYr
	 lktBNnxGQnDXKaWPuFFsxZKNqX5hCxltXwjF3nvwaZBK2tUw0kYrMBEeCtTUKRFyOG
	 phOKTrMAdaUfx6DIiTRrks/uxRWBFOFDQGRtWfJ37QWb8Q1XA6+/66mpcsNo3hu23Q
	 1QbmZat5sLkOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90577CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748735358.10510.1357439551341070608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e296e0a3c33a6960558b31638eb26f01739d555606abdea020a2e89c6877f7
Date: Sat, 28 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727487353
