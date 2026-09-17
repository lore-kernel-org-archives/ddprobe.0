Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49587502D69
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789665034; cv=none; b=mRknJBN+YGiD6utj1L4vkrulM/OZSka0Hu+S7LyoRcaLSwQgN+uaDqgzMw/ZUDPG3m1R6Nhd1rKD4z1xnndrxXZf1NZwp5JDmT+5t97AT35FhPRYYsiUSG4FNhvHZLPSKdFVAAWwEyJgzbRRlofDfRBOb7gimYg5ykhhqaIOmlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789665034; c=relaxed/simple;
	bh=+qGeKAueWqOUeYxMkRm2Lf6Cy6izkhUYkCdXbTlzb0k=;
	h=To:Subject:From:Message-Id:Date; b=KiVHvam2rB1E7zZ0m54Q9neW60v1Fl076icmZLCE5bqPoXC2fsftzoZpJGeZrwGEF8cL/xTseDQ0OEZVfVxonUrG+U0I+eXnLfwxDIe28EGORuyW3q2L4tPGVlNDo3Rxa7ZouGFRfeCloqvrxyUz5IarSf9zHBMOuBbi4tsHzyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Er5naHHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Er5naHHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0A2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789665033;
	bh=+qGeKAueWqOUeYxMkRm2Lf6Cy6izkhUYkCdXbTlzb0k=;
	h=To:Subject:From:Date:From;
	b=Er5naHHyd8X7O6DaBZYzXCFC1bw9iH4/3lhxmaku8EbDK8v6v2j57Llwp/qF5Us8m
	 P2bQeKHRt5O1tl/CbH/V+jPFqCgD//GSw5xJ6oe3vnmzsPeR1vuw9a5xP+Rw960GPe
	 pgIIjJSn8JUxwoPSnpZwmBVLmw83A8XsHmgm8VLBdueC47s/mjYBrF+fOjA7FK2nI1
	 QT7JUHVyRbiCZBqO6YcjHMMhIUYVe/eoxEV/SWoNdDe/8HZ1gLYuhqweSSB+2SoxR1
	 9VthTe0ysoOnu+0dQ8ATYa0seysUui5j2Ojy4FW2oSO/VH/Ts3PUJVz1TIQYM+hrQe
	 HjDch36rOpjoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1F9C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966503369.14579.6741841700504058746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4efed2725b2c513be6455f4a94ce6905fb4aab188e14099d24b9bd9e1736bf
Date: Thu, 17 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789665033
